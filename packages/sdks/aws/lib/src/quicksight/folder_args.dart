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
    this.awsAccountId,
    required this.folderId,
    this.folderType,
    this.name,
    this.parentFolderArn,
    this.permissions,
    this.region,
    this.tags,
  });

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
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      folderId: (map['folderId'] as String).input(),
      folderType: map['folderType'] == null ? null : ((map['folderType'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      parentFolderArn: map['parentFolderArn'] == null ? null : ((map['parentFolderArn'] as String).input()).input(),
      permissions: map['permissions'] == null ? null : ((pulumi.Input.decodeList<FolderPermission>(map['permissions']!, (value) => FolderPermission.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

