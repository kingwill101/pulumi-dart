import 'package:pulumi/pulumi.dart';
import 'role_association_args.dart';

/// Provides an Amazon Managed Grafana workspace role association resource.
///
/// ## Example Usage
///
/// ### Basic configuration
class RoleAssociation extends CustomResource {
  /// The AWS SSO group ids to be assigned the role given in `role`.
  late final Output<List<String>?> groupIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  late final Output<String> role;

  /// The AWS SSO user ids to be assigned the role given in `role`.
  late final Output<List<String>?> userIds;

  /// The workspace id.
  ///
  /// The following arguments are optional:
  late final Output<String> workspaceId;

  RoleAssociation(
    String name, {
    RoleAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/roleAssociation:RoleAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupIds = registerOutput<List<String>?>('groupIds');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.userIds = registerOutput<List<String>?>('userIds');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
