import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_assignment_args.dart';

/// Manages a Managed Redis Access Policy Assignment.
///
/// ## Import
///
/// Managed Redis Access Policy Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:managedredis/accessPolicyAssignment:AccessPolicyAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redisEnterprise/redis1/databases/default/accessPolicyAssignments/00000000-0000-0000-0000-000000000000
/// ```
class AccessPolicyAssignment extends pulumi.CustomResource {
  /// The ID of the Managed Redis instance. Changing this forces a new Access Policy Assignment to be created.
  late final pulumi.Output<String> managedRedisId;
  /// The object ID of the Azure Active Directory user, group, service principal, or managed identity to assign the access policy to. Changing this forces a new Access Policy Assignment to be created.
  ///
  /// > **Note:** Access Policy Assignments are created on the `default` database of the Managed Redis instance.
  late final pulumi.Output<String> objectId;

  /// Creates a new [AccessPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicyAssignment]. {@macro pulumi_managedredis_access_policy_assignment_access_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicyAssignment(
    String name, {
    AccessPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedredis/accessPolicyAssignment:AccessPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.managedRedisId = registerOutput<String>('managedRedisId');
    this.objectId = registerOutput<String>('objectId');
  }
}
