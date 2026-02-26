import 'package:pulumi/pulumi.dart';
import 'namespace_args.dart';
import 'namespace_lifecycle_state_response.dart';

/// Creates a fleet namespace.
/// Auto-naming is currently not supported for this resource.
class Namespace extends CustomResource {
  /// When the namespace was created.
  late final Output<String> createTime;

  /// When the namespace was deleted.
  late final Output<String> deleteTime;

  /// Optional. Labels for this Namespace.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  late final Output<String> name;

  /// Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  late final Output<Map<String, String>> namespaceLabels;
  late final Output<String> project;

  /// Scope associated with the namespace
  late final Output<String> scope;
  late final Output<String> scopeId;

  /// Required. Client chosen ID for the Namespace. `namespace_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final Output<String> scopeNamespaceId;

  /// State of the namespace resource.
  late final Output<NamespaceLifecycleStateResponse> state;

  /// Google-generated UUID for this resource. This is unique across all namespace resources. If a namespace resource is deleted and another resource with the same name is created, it gets a different uid.
  late final Output<String> uid;

  /// When the namespace was last updated.
  late final Output<String> updateTime;

  Namespace(
    String name, {
    NamespaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1:Namespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namespaceLabels = Output.createUnknown<Map<String, String>>();
    this.project = Output.createUnknown<String>();
    this.scope = Output.createUnknown<String>();
    this.scopeId = Output.createUnknown<String>();
    this.scopeNamespaceId = Output.createUnknown<String>();
    this.state = Output.createUnknown<NamespaceLifecycleStateResponse>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
