import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_preset_patch_args.dart';
import 'pod_preset_spec_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PodPreset is a policy resource that defines additional runtime requirements for a Pod.
class PodPresetPatchSettingsK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  late final pulumi.Output<PodPresetSpecPatch?> spec;

  /// Creates a new [PodPresetPatchSettingsK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodPresetPatchSettingsK8sIoV1alpha1]. {@macro pulumi_settings_k8s_io_v1alpha1_pod_preset_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodPresetPatchSettingsK8sIoV1alpha1(
    String name, {
    PodPresetPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:settings.k8s.io/v1alpha1:PodPresetPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.kind = registerOutput<String?>('kind');
    this.metadata = registerOutput<ObjectMetaPatch?>('metadata');
    this.spec = registerOutput<PodPresetSpecPatch?>('spec');
  }
}
