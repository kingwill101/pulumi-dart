// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../folder_permission/folder_permission.dart';

/// The set of arguments for Folder.
class FolderArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Identifier for the folder.
  final Input<String> folderId;

  /// The type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  final Input<String>? folderType;

  /// Display name for the folder.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// The Amazon Resource Name (ARN) for the parent folder. If not set, creates a root-level folder.
  final Input<String>? parentFolderArn;

  /// A set of resource permissions on the folder. Maximum of 64 items. See permissions.
  final Input<List<FolderPermission>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['folderId'] = folderId;
    final folderTypeValue = folderType;
    if (folderTypeValue != null) {
      map['folderType'] = folderTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentFolderArnValue = parentFolderArn;
    if (parentFolderArnValue != null) {
      map['parentFolderArn'] = parentFolderArnValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = Input.mapOptionalInputValue<List<FolderPermission>,
              List<Map<String, dynamic>>>(
          permissionsValue,
          (value) => Input.encodeList<FolderPermission, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      folderId: Input.asInput<String>(map['folderId']),
      folderType: Input.asOptionalInput<String>(map['folderType']),
      name: Input.asOptionalInput<String>(map['name']),
      parentFolderArn: Input.asOptionalInput<String>(map['parentFolderArn']),
      permissions:
          Input.asOptionalInput<List<FolderPermission>>(map['permissions']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
