import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_meta_patch.dart';
import 'status_details_patch.dart';
import 'status_patch_args.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Status is a return value for calls that don't return other objects.
class StatusPatchMetaV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Suggested HTTP return code for this status, 0 if not set.
  late final pulumi.Output<int?> code;
  /// Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  late final pulumi.Output<StatusDetailsPatch?> details;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// A human-readable description of the status of this operation.
  late final pulumi.Output<String?> message;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMetaPatch?> metadata;
  /// A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  late final pulumi.Output<String?> reason;
  /// Status of the operation. One of: "Success" or "Failure". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<String?> status;

  /// Creates a new [StatusPatchMetaV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StatusPatchMetaV1]. {@macro pulumi_meta_v1_status_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StatusPatchMetaV1(
    String name, {
    StatusPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:meta/v1:StatusPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.code = registerOutput<int?>('code');
    this.details = registerOutput<StatusDetailsPatch?>('details');
    this.kind = registerOutput<String?>('kind');
    this.message = registerOutput<String?>('message');
    this.metadata = registerOutput<ListMetaPatch?>('metadata');
    this.reason = registerOutput<String?>('reason');
    this.status = registerOutput<String?>('status');
  }
}
