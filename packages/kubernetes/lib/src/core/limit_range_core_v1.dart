import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'limit_range_args.dart';
import 'limit_range_spec.dart';

/// LimitRange sets resource usage limits for each kind of resource in a Namespace.
class LimitRangeCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the limits enforced. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<LimitRangeSpec> spec;

  /// Creates a new [LimitRangeCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LimitRangeCoreV1]. {@macro pulumi_core_v1_limit_range_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LimitRangeCoreV1(
    String name, {
    LimitRangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:LimitRange',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<LimitRangeSpec>('spec');
  }
}
