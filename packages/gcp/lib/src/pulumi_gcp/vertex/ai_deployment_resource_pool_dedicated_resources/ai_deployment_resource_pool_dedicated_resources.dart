// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_deployment_resource_pool_dedicated_resources_autoscaling_metric_spec/ai_deployment_resource_pool_dedicated_resources_autoscaling_metric_spec.dart';
import '../ai_deployment_resource_pool_dedicated_resources_machine_spec/ai_deployment_resource_pool_dedicated_resources_machine_spec.dart';

class AiDeploymentResourcePoolDedicatedResources {
  /// A list of the metric specifications that overrides a resource utilization metric.
  /// Structure is documented below.
  final List<AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec>?
      autoscalingMetricSpecs;

  /// The specification of a single machine used by the prediction
  /// Structure is documented below.
  final AiDeploymentResourcePoolDedicatedResourcesMachineSpec machineSpec;

  /// The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If the requested value is too large, the deployment will error, but if deployment succeeds then the ability to scale the model to that many replicas is guaranteed (barring service outages). If traffic against the DeployedModel increases beyond what its replicas at maximum may handle, a portion of the traffic will be dropped. If this value is not provided, will use<span pulumi-lang-nodejs=" minReplicaCount " pulumi-lang-dotnet=" MinReplicaCount " pulumi-lang-go=" minReplicaCount " pulumi-lang-python=" min_replica_count " pulumi-lang-yaml=" minReplicaCount " pulumi-lang-java=" minReplicaCount "> min_replica_count </span>as the default value. The value of this field impacts the charge against Vertex CPU and GPU quotas. Specifically, you will be charged for<span pulumi-lang-nodejs=" maxReplicaCount " pulumi-lang-dotnet=" MaxReplicaCount " pulumi-lang-go=" maxReplicaCount " pulumi-lang-python=" max_replica_count " pulumi-lang-yaml=" maxReplicaCount " pulumi-lang-java=" maxReplicaCount "> max_replica_count </span>* number of cores in the selected machine type) and (max_replica_count * number of GPUs per replica in the selected machine type).
  final int? maxReplicaCount;

  /// The minimum number of machine replicas this DeployedModel will be always deployed on. This value must be greater than or equal to 1. If traffic against the DeployedModel increases, it may dynamically be deployed onto more replicas, and as traffic decreases, some of these extra replicas may be freed.
  final int minReplicaCount;

  AiDeploymentResourcePoolDedicatedResources({
    this.autoscalingMetricSpecs,
    required this.machineSpec,
    this.maxReplicaCount,
    required this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingMetricSpecsValue = autoscalingMetricSpecs;
    if (autoscalingMetricSpecsValue != null) {
      map['autoscalingMetricSpecs'] = Input.encodeList<
              AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec,
              Map<String, dynamic>>(
          autoscalingMetricSpecsValue, (value) => value.toMap());
    }
    map['machineSpec'] = machineSpec.toMap();
    final maxReplicaCountValue = maxReplicaCount;
    if (maxReplicaCountValue != null) {
      map['maxReplicaCount'] = maxReplicaCountValue;
    }
    map['minReplicaCount'] = minReplicaCount;
    return map;
  }

  factory AiDeploymentResourcePoolDedicatedResources.fromMap(
      Map<String, dynamic> map) {
    return AiDeploymentResourcePoolDedicatedResources(
      autoscalingMetricSpecs: map['autoscalingMetricSpecs'] == null
          ? null
          : Input.decodeList<
                  AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec>(
              map['autoscalingMetricSpecs'],
              (value) =>
                  AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec
                      .fromMap((value as Map).cast<String, dynamic>())),
      machineSpec:
          AiDeploymentResourcePoolDedicatedResourcesMachineSpec.fromMap(
              (map['machineSpec'] as Map).cast<String, dynamic>()),
      maxReplicaCount:
          map['maxReplicaCount'] == null ? null : map['maxReplicaCount'] as int,
      minReplicaCount: map['minReplicaCount'] as int,
    );
  }
}
