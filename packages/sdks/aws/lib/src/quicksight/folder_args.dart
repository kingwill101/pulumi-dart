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
      'permissions':
          ?pulumi.Input.mapOptionalInputValue<
            List<FolderPermission>,
            List<Map<String, dynamic>>
          >(
            permissions,
            (value) =>
                pulumi.Input.encodeList<FolderPermission, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      awsAccountId: (() {
        final guardedValue = map['awsAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
      folderType: (() {
        final guardedValue = map['folderType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parentFolderArn: (() {
        final guardedValue = map['parentFolderArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FolderPermission>(
            guardedValue,
            (value) => FolderPermission.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
