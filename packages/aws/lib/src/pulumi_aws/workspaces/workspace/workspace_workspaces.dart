import 'package:pulumi/pulumi.dart' as pulumi;
import '../workspace_workspace_properties/workspace_workspace_properties.dart';
import 'workspace_workspaces_args.dart';

/// Provides a workspace in [AWS Workspaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces.html) Service
///
/// > **NOTE:** AWS WorkSpaces service requires [`workspaces_DefaultRole`](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role) IAM role to operate normally.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Workspaces using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/workspace:Workspace example ws-9z9zmbkhv
/// ```
class WorkspaceWorkspaces extends pulumi.CustomResource {
  /// The ID of the bundle for the WorkSpace.
  late final pulumi.Output<String> bundleId;

  /// The name of the WorkSpace, as seen by the operating system.
  late final pulumi.Output<String> computerName;

  /// The ID of the directory for the WorkSpace.
  late final pulumi.Output<String> directoryId;

  /// The IP address of the WorkSpace.
  late final pulumi.Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Indicates whether the data stored on the root volume is encrypted.
  late final pulumi.Output<bool?> rootVolumeEncryptionEnabled;

  /// The operational state of the WorkSpace.
  late final pulumi.Output<String> state;

  /// The tags for the WorkSpace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  late final pulumi.Output<String> userName;

  /// Indicates whether the data stored on the user volume is encrypted.
  late final pulumi.Output<bool?> userVolumeEncryptionEnabled;

  /// The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  late final pulumi.Output<String?> volumeEncryptionKey;

  /// The WorkSpace properties.
  late final pulumi.Output<WorkspaceWorkspaceProperties> workspaceProperties;

  WorkspaceWorkspaces(
    String name, {
    WorkspaceWorkspacesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bundleId = registerOutput<String>('bundleId');
    this.computerName = registerOutput<String>('computerName');
    this.directoryId = registerOutput<String>('directoryId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.region = registerOutput<String>('region');
    this.rootVolumeEncryptionEnabled =
        registerOutput<bool?>('rootVolumeEncryptionEnabled');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userName = registerOutput<String>('userName');
    this.userVolumeEncryptionEnabled =
        registerOutput<bool?>('userVolumeEncryptionEnabled');
    this.volumeEncryptionKey = registerOutput<String?>('volumeEncryptionKey');
    this.workspaceProperties =
        registerOutput<WorkspaceWorkspaceProperties>('workspaceProperties');
  }
}
