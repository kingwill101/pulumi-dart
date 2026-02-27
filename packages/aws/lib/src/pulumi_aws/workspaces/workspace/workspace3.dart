import 'package:pulumi/pulumi.dart';
import '../workspace_workspace_properties/workspace_workspace_properties.dart';
import 'workspace_args3.dart';

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
class Workspace3 extends CustomResource {
  /// The ID of the bundle for the WorkSpace.
  late final Output<String> bundleId;

  /// The name of the WorkSpace, as seen by the operating system.
  late final Output<String> computerName;

  /// The ID of the directory for the WorkSpace.
  late final Output<String> directoryId;

  /// The IP address of the WorkSpace.
  late final Output<String> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether the data stored on the root volume is encrypted.
  late final Output<bool?> rootVolumeEncryptionEnabled;

  /// The operational state of the WorkSpace.
  late final Output<String> state;

  /// The tags for the WorkSpace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  late final Output<String> userName;

  /// Indicates whether the data stored on the user volume is encrypted.
  late final Output<bool?> userVolumeEncryptionEnabled;

  /// The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  late final Output<String?> volumeEncryptionKey;

  /// The WorkSpace properties.
  late final Output<WorkspaceWorkspaceProperties> workspaceProperties;

  Workspace3(
    String name, {
    WorkspaceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/workspace:Workspace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
