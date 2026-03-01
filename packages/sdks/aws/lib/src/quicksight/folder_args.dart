// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_permission.dart';

/// {@template pulumi_quicksight_folder_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_quicksight_folder_folder_args_doc}
class FolderArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Identifier for the folder.
  final pulumi.Input<String> folderId;
  /// The type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  final pulumi.Input<String>? folderType;
  /// Display name for the folder.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// The Amazon Resource Name (ARN) for the parent folder. If not set, creates a root-level folder.
  final pulumi.Input<String>? parentFolderArn;
  /// A set of resource permissions on the folder. Maximum of 64 items. See permissions.
  final pulumi.Input<List<FolderPermission>>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FolderArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [folderId] Identifier for the folder.
  /// [folderType] The type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  /// [name] Display name for the folder.
  /// [parentFolderArn] The Amazon Resource Name (ARN) for the parent folder. If not set, creates a root-level folder.
  /// [permissions] A set of resource permissions on the folder. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  FolderArgs({
    pulumi.Output<String>? awsAccountId,
    required pulumi.Output<String> folderId,
    pulumi.Output<String>? folderType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentFolderArn,
    pulumi.Output<List<FolderPermission>>? permissions,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      folderId = pulumi.Input.asInput<String>(folderId),
      folderType = pulumi.Input.asOptionalInput<String>(folderType),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentFolderArn = pulumi.Input.asOptionalInput<String>(parentFolderArn),
      permissions = pulumi.Input.asOptionalInput<List<FolderPermission>>(permissions),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'folderId': folderId,
      'folderType': ?folderType,
      'name': ?name,
      'parentFolderArn': ?parentFolderArn,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<FolderPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<FolderPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      folderId: pulumi.Output.create<String>(map['folderId'] as String),
      folderType: map['folderType'] == null ? null : pulumi.Output.create<String>(map['folderType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentFolderArn: map['parentFolderArn'] == null ? null : pulumi.Output.create<String>(map['parentFolderArn'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<FolderPermission>>(pulumi.Input.decodeList<FolderPermission>(map['permissions'], (value) => FolderPermission.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

