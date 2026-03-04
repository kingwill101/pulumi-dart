import 'package:pulumi_policy/pulumi_policy.dart';

void registerPolicyPack() {
  PolicyPack(
    'kubernetes',
    PolicyPackArgs(
      policies: [
        _noPublicServices(EnforcementLevel.mandatory),
        _minimumReplicaCount(EnforcementLevel.mandatory),
        _podsAreProhibited(EnforcementLevel.advisory),
      ],
    ),
  );
}

ResourceValidationPolicy _noPublicServices(EnforcementLevel enforcementLevel) {
  return ResourceValidationPolicy(
    name: 'no-public-services',
    description: 'Kubernetes Services should be cluster-private',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<
        Map<String, Object?>
      >('kubernetes:core/v1:Service', (service, _, reportViolation) {
        final spec = service['spec'];
        if (spec is Map && spec['type'] == 'LoadBalancer') {
          reportViolation(
            'Kubernetes Services with .type == LoadBalancer are exposed outside the cluster and are disallowed.',
          );
        }
      }),
    ],
  );
}

ResourceValidationPolicy _minimumReplicaCount(
  EnforcementLevel enforcementLevel,
) {
  return ResourceValidationPolicy(
    name: 'minimum-replica-count',
    description:
        'Checks that Kubernetes Deployments and ReplicaSets have at least three replicas.',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>(
        'kubernetes:apps/v1:Deployment',
        (deployment, _, reportViolation) {
          final replicas = _readReplicas(deployment['spec']);
          if (replicas == null || replicas < 3) {
            reportViolation(
              'Kubernetes Deployments should have at least three replicas.',
            );
          }
        },
      ),
      validateResourceOfType<Map<String, Object?>>(
        'kubernetes:apps/v1:ReplicaSet',
        (replicaSet, _, reportViolation) {
          final replicas = _readReplicas(replicaSet['spec']);
          if (replicas == null || replicas < 3) {
            reportViolation(
              'Kubernetes ReplicaSets should have at least three replicas.',
            );
          }
        },
      ),
    ],
  );
}

ResourceValidationPolicy _podsAreProhibited(EnforcementLevel enforcementLevel) {
  return ResourceValidationPolicy(
    name: 'pods-are-prohibited',
    description: 'Checks that Kubernetes Pods are not being used directly.',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>('kubernetes:core/v1:Pod', (
        _,
        __,
        reportViolation,
      ) {
        reportViolation(
          'Kubernetes Pods should not be used directly. Use a Deployment, ReplicaSet, or Job instead.',
        );
      }),
    ],
  );
}

int? _readReplicas(Object? spec) {
  if (spec is! Map) {
    return null;
  }

  final replicas = spec['replicas'];
  if (replicas is int) {
    return replicas;
  }
  return null;
}
