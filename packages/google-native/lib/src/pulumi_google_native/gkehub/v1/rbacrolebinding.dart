import 'package:pulumi/pulumi.dart';
import 'rbacrole_binding_lifecycle_state_response.dart';
import 'rbacrolebinding_args.dart';
import 'role_response.dart';

/// Creates a Scope RBACRoleBinding.
/// Auto-naming is currently not supported for this resource.
class Rbacrolebinding extends CustomResource {
  /// When the rbacrolebinding was created.
  late final Output<String> createTime;

  /// When the rbacrolebinding was deleted.
  late final Output<String> deleteTime;

  /// group is the group, as seen by the kubernetes cluster.
  late final Output<String> group;

  /// Optional. Labels for this RBACRolebinding.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  late final Output<String> name;
  late final Output<String> project;

  /// Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final Output<String> rbacrolebindingId;

  /// Role to bind to the principal
  late final Output<RoleResponse> role;
  late final Output<String> scopeId;

  /// State of the rbacrolebinding resource.
  late final Output<RBACRoleBindingLifecycleStateResponse> state;

  /// Google-generated UUID for this resource. This is unique across all rbacrolebinding resources. If a rbacrolebinding resource is deleted and another resource with the same name is created, it gets a different uid.
  late final Output<String> uid;

  /// When the rbacrolebinding was last updated.
  late final Output<String> updateTime;

  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  late final Output<String> user;

  Rbacrolebinding(
    String name, {
    RbacrolebindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1:Rbacrolebinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.group = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.rbacrolebindingId = Output.createUnknown<String>();
    this.role = Output.createUnknown<RoleResponse>();
    this.scopeId = Output.createUnknown<String>();
    this.state = Output.createUnknown<RBACRoleBindingLifecycleStateResponse>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.user = Output.createUnknown<String>();
  }
}
