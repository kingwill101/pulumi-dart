import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_scheduling_context_patch_resource_k8s_io_v1alpha3_args.dart';
import 'pod_scheduling_context_spec_patch_resource_k8s_io_v1alpha3.dart';
import 'pod_scheduling_context_status_patch_resource_k8s_io_v1alpha3.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PodSchedulingContext objects hold information that is needed to schedule a Pod with ResourceClaims that use "WaitForFirstConsumer" allocation mode.
///
/// This is an alpha type and requires enabling the DRAControlPlaneController feature gate.
class PodSchedulingContextPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec describes where resources for the Pod are needed.
  late final pulumi.Output<PodSchedulingContextSpecPatchResourceK8sIoV1alpha3?> spec;
  /// Status describes where resources for the Pod can be allocated.
  late final pulumi.Output<PodSchedulingContextStatusPatchResourceK8sIoV1alpha3?> status;

  /// Creates a new [PodSchedulingContextPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodSchedulingContextPatchResource]. {@macro pulumi_resource_k8s_io_v1alpha3_pod_scheduling_context_patch_resource_k8s_io_v1alpha3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodSchedulingContextPatchResource(
    String name, {
    PodSchedulingContextPatchResourceK8sIoV1alpha3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha3:PodSchedulingContextPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.kind = registerOutput<String?>('kind');
    this.metadata = registerOutput<ObjectMetaPatch?>('metadata');
    this.spec = registerOutput<PodSchedulingContextSpecPatchResourceK8sIoV1alpha3?>('spec');
    this.status = registerOutput<PodSchedulingContextStatusPatchResourceK8sIoV1alpha3?>('status');
  }
}
