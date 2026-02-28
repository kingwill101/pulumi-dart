import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';

/// Creates a new Workspace in a given Repository.
/// Auto-naming is currently not supported for this resource.
class Workspace extends pulumi.CustomResource {
  late final pulumi.Output<String> location;

  /// The workspace's name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> repositoryId;

  /// Required. The ID to use for the workspace, which will become the final component of the workspace's resource name.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_dataform_v1beta1_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataform/v1beta1:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
