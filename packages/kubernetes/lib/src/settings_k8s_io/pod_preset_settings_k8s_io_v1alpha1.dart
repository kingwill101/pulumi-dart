import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_preset_args.dart';
import 'pod_preset_spec.dart';

/// PodPreset is a policy resource that defines additional runtime requirements for a Pod.
class PodPresetSettingsK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;
  late final pulumi.Output<PodPresetSpec> spec;

  /// Creates a new [PodPresetSettingsK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodPresetSettingsK8sIoV1alpha1]. {@macro pulumi_settings_k8s_io_v1alpha1_pod_preset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodPresetSettingsK8sIoV1alpha1(
    String name, {
    PodPresetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:settings.k8s.io/v1alpha1:PodPreset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<PodPresetSpec>('spec');
  }
}
