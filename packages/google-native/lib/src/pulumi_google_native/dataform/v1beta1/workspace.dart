import 'package:pulumi/pulumi.dart' hide Config;
import 'workspace_args.dart';

/// Creates a new Workspace in a given Repository.
/// Auto-naming is currently not supported for this resource.
class Workspace extends CustomResource {
  late final Output<String> location;

  /// The workspace's name.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> repositoryId;

  /// Required. The ID to use for the workspace, which will become the final component of the workspace's resource name.
  late final Output<String> workspaceId;

  Workspace(
    String name, {
    WorkspaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataform/v1beta1:Workspace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
