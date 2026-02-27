import 'package:pulumi/pulumi.dart';
import '../scope_rbac_role_binding_role/scope_rbac_role_binding_role.dart';
import '../scope_rbac_role_binding_state/scope_rbac_role_binding_state.dart';
import 'scope_rbac_role_binding_args.dart';

/// RBACRoleBinding represents a rbacrolebinding across the Fleet.
///
///
/// To get more information about ScopeRBACRoleBinding, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.scopes.rbacrolebindings)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Scope Rbac Role Binding Basic
///
///
///
/// ### Gkehub Scope Rbac Custom Role Binding Basic
///
///
///
///
/// ## Import
///
/// ScopeRBACRoleBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/scopes/{{scope_id}}/rbacrolebindings/{{scope_rbac_role_binding_id}}`
///
/// * `{{project}}/{{scope_id}}/{{scope_rbac_role_binding_id}}`
///
/// * `{{scope_id}}/{{scope_rbac_role_binding_id}}`
///
/// When using the `pulumi import` command, ScopeRBACRoleBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding default projects/{{project}}/locations/global/scopes/{{scope_id}}/rbacrolebindings/{{scope_rbac_role_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding default {{project}}/{{scope_id}}/{{scope_rbac_role_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding default {{scope_id}}/{{scope_rbac_role_binding_id}}
/// ```
class ScopeRbacRoleBinding extends CustomResource {
  /// Time the RBAC Role Binding was created in UTC.
  late final Output<String> createTime;

  /// Time the RBAC Role Binding was deleted in UTC.
  late final Output<String> deleteTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// group is the group, as seen by the kubernetes cluster.
  late final Output<String?> group;

  /// Labels for this ScopeRBACRoleBinding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The resource name for the RBAC Role Binding
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Role to bind to the principal.
  /// Structure is documented below.
  late final Output<ScopeRbacRoleBindingRole> role;

  /// Id of the scope
  late final Output<String> scopeId;

  /// The client-provided identifier of the RBAC Role Binding.
  late final Output<String> scopeRbacRoleBindingId;

  /// State of the RBAC Role Binding resource.
  /// Structure is documented below.
  late final Output<List<ScopeRbacRoleBindingState>> states;

  /// Google-generated UUID for this resource.
  late final Output<String> uid;

  /// Time the RBAC Role Binding was updated in UTC.
  late final Output<String> updateTime;

  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  late final Output<String?> user;

  ScopeRbacRoleBinding(
    String name, {
    ScopeRbacRoleBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/scopeRbacRoleBinding:ScopeRbacRoleBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.group = registerOutput<String?>('group');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.role = registerOutput<ScopeRbacRoleBindingRole>('role');
    this.scopeId = registerOutput<String>('scopeId');
    this.scopeRbacRoleBindingId =
        registerOutput<String>('scopeRbacRoleBindingId');
    this.states = registerOutput<List<ScopeRbacRoleBindingState>>('states');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.user = registerOutput<String?>('user');
  }
}
