import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbacrole_binding_lifecycle_state_response_gkehub_v1alpha.dart';
import 'role_response_gkehub_v1alpha.dart';
import 'scope_rbac_role_binding_args.dart';

/// Creates a Scope RBACRoleBinding.
/// Auto-naming is currently not supported for this resource.
class ScopeRbacRoleBinding extends pulumi.CustomResource {
  /// When the rbacrolebinding was created.
  late final pulumi.Output<String> createTime;

  /// When the rbacrolebinding was deleted.
  late final pulumi.Output<String> deleteTime;

  /// group is the group, as seen by the kubernetes cluster.
  late final pulumi.Output<String> group;

  /// Optional. Labels for this RBACRolebinding.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final pulumi.Output<String> rbacrolebindingId;

  /// Role to bind to the principal
  late final pulumi.Output<RoleResponseGkehubV1alpha> role;
  late final pulumi.Output<String> scopeId;

  /// State of the rbacrolebinding resource.
  late final pulumi.Output<RBACRoleBindingLifecycleStateResponseGkehubV1alpha>
      state;

  /// Google-generated UUID for this resource. This is unique across all rbacrolebinding resources. If a rbacrolebinding resource is deleted and another resource with the same name is created, it gets a different uid.
  late final pulumi.Output<String> uid;

  /// When the rbacrolebinding was last updated.
  late final pulumi.Output<String> updateTime;

  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  late final pulumi.Output<String> user;

  ScopeRbacRoleBinding(
    String name, {
    ScopeRbacRoleBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1alpha:ScopeRbacRoleBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.group = registerOutput<String>('group');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rbacrolebindingId = registerOutput<String>('rbacrolebindingId');
    this.role = registerOutput<RoleResponseGkehubV1alpha>('role');
    this.scopeId = registerOutput<String>('scopeId');
    this.state =
        registerOutput<RBACRoleBindingLifecycleStateResponseGkehubV1alpha>(
            'state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.user = registerOutput<String>('user');
  }
}
