// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_permission.dart';

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  /// ARN of the folder.
  final pulumi.Input<String?>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? awsAccountId;
  /// Time that the folder was created.
  final pulumi.Input<String?>? createdTime;
  /// Identifier for the folder.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? folderId;
  /// Array of ancestor ARN strings for the folder. Empty for root-level folders.
  final pulumi.Input<List<String>?>? folderPaths;
  /// Type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  final pulumi.Input<String?>? folderType;
  /// Time that the folder was last updated.
  final pulumi.Input<String?>? lastUpdatedTime;
  /// Display name for the folder.
  final pulumi.Input<String?>? name;
  /// ARN for the parent folder. If not set, creates a root-level folder.
  final pulumi.Input<String?>? parentFolderArn;
  /// Set of resource permissions on the folder. Maximum of 64 items. See `permissions` Block.
  final pulumi.Input<List<FolderPermission>?>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [FolderState].
  /// [arn] ARN of the folder.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [createdTime] Time that the folder was created.
  /// [folderId] Identifier for the folder.
  /// [folderPaths] Array of ancestor ARN strings for the folder. Empty for root-level folders.
  /// [folderType] Type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  /// [lastUpdatedTime] Time that the folder was last updated.
  /// [name] Display name for the folder.
  /// [parentFolderArn] ARN for the parent folder. If not set, creates a root-level folder.
  /// [permissions] Set of resource permissions on the folder. Maximum of 64 items. See `permissions` Block.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const FolderState({
    this.arn,
    this.awsAccountId,
    this.createdTime,
    this.folderId,
    this.folderPaths,
    this.folderType,
    this.lastUpdatedTime,
    this.name,
    this.parentFolderArn,
    this.permissions,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'createdTime': ?createdTime,
      'folderId': ?folderId,
      'folderPaths': ?folderPaths,
      'folderType': ?folderType,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'parentFolderArn': ?parentFolderArn,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<FolderPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<FolderPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FolderState.fromMap(Map<String, dynamic> map) {
    return FolderState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderPaths: (() { final guardedValue = map['folderPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      folderType: (() { final guardedValue = map['folderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentFolderArn: (() { final guardedValue = map['parentFolderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FolderPermission>(guardedValue, (value) => FolderPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
