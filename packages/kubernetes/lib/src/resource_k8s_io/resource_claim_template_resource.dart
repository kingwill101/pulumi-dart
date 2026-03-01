import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_claim_template_resource_k8s_io_v1alpha1_args.dart';
import 'resource_claim_template_spec_resource_k8s_io_v1alpha1.dart';

/// ResourceClaimTemplate is used to produce ResourceClaim objects.
class ResourceClaimTemplateResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Describes the ResourceClaim that is to be generated.
  ///
  /// This field is immutable. A ResourceClaim will get created by the control plane for a Pod when needed and then not get updated anymore.
  late final pulumi.Output<ResourceClaimTemplateSpecResourceK8sIoV1alpha1> spec;

  /// Creates a new [ResourceClaimTemplateResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClaimTemplateResource]. {@macro pulumi_resource_k8s_io_v1alpha1_resource_claim_template_resource_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClaimTemplateResource(
    String name, {
    ResourceClaimTemplateResourceK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha1:ResourceClaimTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<ResourceClaimTemplateSpecResourceK8sIoV1alpha1>('spec');
  }
}
