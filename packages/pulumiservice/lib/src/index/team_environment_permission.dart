import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_permission.dart';
import 'team_environment_permission_args.dart';

/// A permission for a team to use an environment.
class TeamEnvironmentPermission extends pulumi.CustomResource {
  /// Environment name.
  late final pulumi.Output<String?> environment;
  /// The maximum duration for which members of this team may open the environment.
  late final pulumi.Output<String?> maxOpenDuration;
  /// Organization name.
  late final pulumi.Output<String?> organization;
  /// Which permission level to grant to the specified team.
  late final pulumi.Output<EnvironmentPermission?> permission;
  /// Project name.
  late final pulumi.Output<String?> project;
  /// Team name.
  late final pulumi.Output<String?> team;

  /// Creates a new [TeamEnvironmentPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamEnvironmentPermission]. {@macro pulumi_index_team_environment_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamEnvironmentPermission(
    String name, {
    TeamEnvironmentPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:TeamEnvironmentPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.environment = registerOutput<String?>('environment');
    this.maxOpenDuration = registerOutput<String?>('maxOpenDuration');
    this.organization = registerOutput<String?>('organization');
    this.permission = registerOutput<EnvironmentPermission?>('permission');
    this.project = registerOutput<String?>('project');
    this.team = registerOutput<String?>('team');
  }
}
