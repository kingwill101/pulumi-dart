import 'package:pulumi/pulumi.dart' as pulumi;
import '../membership_rbac_role_binding_role/membership_rbac_role_binding_role.dart';
import '../membership_rbac_role_binding_state/membership_rbac_role_binding_state.dart';
import 'membership_rbac_role_binding_args.dart';

/// RBACRoleBinding represents a rbacrolebinding across the Fleet.
///
/// To get more information about MembershipRBACRoleBinding, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.memberships)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Membership Rbac Role Binding Basic
///
///
///
///
/// ## Import
///
/// MembershipRBACRoleBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}/rbacrolebindings/{{membership_rbac_role_binding_id}}`
///
/// * `{{project}}/{{location}}/{{membership_id}}/{{membership_rbac_role_binding_id}}`
///
/// * `{{location}}/{{membership_id}}/{{membership_rbac_role_binding_id}}`
///
/// When using the `pulumi import` command, MembershipRBACRoleBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipRbacRoleBinding:MembershipRbacRoleBinding default projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}/rbacrolebindings/{{membership_rbac_role_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipRbacRoleBinding:MembershipRbacRoleBinding default {{project}}/{{location}}/{{membership_id}}/{{membership_rbac_role_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipRbacRoleBinding:MembershipRbacRoleBinding default {{location}}/{{membership_id}}/{{membership_rbac_role_binding_id}}
/// ```
class MembershipRbacRoleBinding extends pulumi.CustomResource {
  /// Time the RBAC Role Binding was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Time the RBAC Role Binding was deleted in UTC.
  late final pulumi.Output<String> deleteTime;

  /// Location of the Membership
  late final pulumi.Output<String> location;

  /// Id of the membership
  late final pulumi.Output<String> membershipId;

  /// The client-provided identifier of the RBAC Role Binding.
  late final pulumi.Output<String> membershipRbacRoleBindingId;

  /// The resource name for the RBAC Role Binding
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Role to bind to the principal.
  /// Structure is documented below.
  late final pulumi.Output<MembershipRbacRoleBindingRole> role;

  /// State of the RBAC Role Binding resource.
  /// Structure is documented below.
  late final pulumi.Output<List<MembershipRbacRoleBindingState>> states;

  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;

  /// Time the RBAC Role Binding was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  late final pulumi.Output<String> user;

  MembershipRbacRoleBinding(
    String name, {
    MembershipRbacRoleBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membershipRbacRoleBinding:MembershipRbacRoleBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.location = registerOutput<String>('location');
    this.membershipId = registerOutput<String>('membershipId');
    this.membershipRbacRoleBindingId =
        registerOutput<String>('membershipRbacRoleBindingId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<MembershipRbacRoleBindingRole>('role');
    this.states =
        registerOutput<List<MembershipRbacRoleBindingState>>('states');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.user = registerOutput<String>('user');
  }
}
