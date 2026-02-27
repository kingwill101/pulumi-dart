import 'package:pulumi/pulumi.dart';
import '../folder_permission/folder_permission.dart';
import 'folder_args.dart';

/// Resource for managing a QuickSight Folder.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Permissions
///
///
///
/// ### With Parent Folder
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight folder using the AWS account ID and folder ID name separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/folder:Folder example 123456789012,example-id
/// ```
class Folder extends CustomResource {
  /// ARN of the folder.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The time that the folder was created.
  late final Output<String> createdTime;

  /// Identifier for the folder.
  late final Output<String> folderId;

  /// An array of ancestor ARN strings for the folder. Empty for root-level folders.
  late final Output<List<String>> folderPaths;

  /// The type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  late final Output<String?> folderType;

  /// The time that the folder was last updated.
  late final Output<String> lastUpdatedTime;

  /// Display name for the folder.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// The Amazon Resource Name (ARN) for the parent folder. If not set, creates a root-level folder.
  late final Output<String?> parentFolderArn;

  /// A set of resource permissions on the folder. Maximum of 64 items. See permissions.
  late final Output<List<FolderPermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Folder(
    String name, {
    FolderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/folder:Folder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.createdTime = registerOutput<String>('createdTime');
    this.folderId = registerOutput<String>('folderId');
    this.folderPaths = registerOutput<List<String>>('folderPaths');
    this.folderType = registerOutput<String?>('folderType');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.parentFolderArn = registerOutput<String?>('parentFolderArn');
    this.permissions = registerOutput<List<FolderPermission>?>('permissions');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
