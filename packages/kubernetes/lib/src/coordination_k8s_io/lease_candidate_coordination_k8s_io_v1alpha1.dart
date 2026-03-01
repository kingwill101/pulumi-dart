import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'lease_candidate_args.dart';
import 'lease_candidate_spec.dart';

/// LeaseCandidate defines a candidate for a Lease object. Candidates are created such that coordinated leader election will pick the best leader from the list of candidates.
class LeaseCandidateCoordinationK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec contains the specification of the Lease. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<LeaseCandidateSpec> spec;

  /// Creates a new [LeaseCandidateCoordinationK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LeaseCandidateCoordinationK8sIoV1alpha1]. {@macro pulumi_coordination_k8s_io_v1alpha1_lease_candidate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LeaseCandidateCoordinationK8sIoV1alpha1(
    String name, {
    LeaseCandidateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:coordination.k8s.io/v1alpha1:LeaseCandidate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<LeaseCandidateSpec>('spec');
  }
}
