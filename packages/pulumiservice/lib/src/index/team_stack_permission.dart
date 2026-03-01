import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_stack_permission_args.dart';
import 'team_stack_permission_scope.dart';

/// Grants a team permissions to the specified stack.
class TeamStackPermission extends pulumi.CustomResource {
  /// The organization or the personal account name of the stack.
  late final pulumi.Output<String> organization;
  /// Sets the permission level that this team will be granted to the stack.
  late final pulumi.Output<TeamStackPermissionScope> permission;
  /// The project name for this stack.
  late final pulumi.Output<String> project;
  /// The name of the stack that the team will be granted permissions to.
  late final pulumi.Output<String> stack;
  /// The name of the team to grant this stack permissions to. This is not the display name.
  late final pulumi.Output<String> team;

  /// Creates a new [TeamStackPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamStackPermission]. {@macro pulumi_index_team_stack_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamStackPermission(
    String name, {
    TeamStackPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:TeamStackPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.organization = registerOutput<String>('organization');
    this.permission = registerOutput<TeamStackPermissionScope>('permission');
    this.project = registerOutput<String>('project');
    this.stack = registerOutput<String>('stack');
    this.team = registerOutput<String>('team');
  }
}
