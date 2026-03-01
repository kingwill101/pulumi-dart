import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'horizontal_pod_autoscaler_args.dart';
import 'horizontal_pod_autoscaler_spec.dart';
import 'horizontal_pod_autoscaler_status.dart';

/// configuration of a horizontal pod autoscaler.
class HorizontalPodAutoscalerAutoscalingV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec defines the behaviour of autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  late final pulumi.Output<HorizontalPodAutoscalerSpec> spec;
  /// status is the current information about the autoscaler.
  late final pulumi.Output<HorizontalPodAutoscalerStatus?> status;

  /// Creates a new [HorizontalPodAutoscalerAutoscalingV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizontalPodAutoscalerAutoscalingV1]. {@macro pulumi_autoscaling_v1_horizontal_pod_autoscaler_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizontalPodAutoscalerAutoscalingV1(
    String name, {
    HorizontalPodAutoscalerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:autoscaling/v1:HorizontalPodAutoscaler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<HorizontalPodAutoscalerSpec>('spec');
    this.status = registerOutput<HorizontalPodAutoscalerStatus?>('status');
  }
}
