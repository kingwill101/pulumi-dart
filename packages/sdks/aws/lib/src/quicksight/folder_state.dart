// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_permission.dart';

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  /// ARN of the folder.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The time that the folder was created.
  final pulumi.Input<String>? createdTime;
  /// Identifier for the folder.
  final pulumi.Input<String>? folderId;
  /// An array of ancestor ARN strings for the folder. Empty for root-level folders.
  final pulumi.Input<List<String>>? folderPaths;
  /// The type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  final pulumi.Input<String>? folderType;
  /// The time that the folder was last updated.
  final pulumi.Input<String>? lastUpdatedTime;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FolderState].
  /// [arn] ARN of the folder.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [createdTime] The time that the folder was created.
  /// [folderId] Identifier for the folder.
  /// [folderPaths] An array of ancestor ARN strings for the folder. Empty for root-level folders.
  /// [folderType] The type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  /// [lastUpdatedTime] The time that the folder was last updated.
  /// [name] Display name for the folder.
  /// [parentFolderArn] The Amazon Resource Name (ARN) for the parent folder. If not set, creates a root-level folder.
  /// [permissions] A set of resource permissions on the folder. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  FolderState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? folderId,
    pulumi.Output<List<String>>? folderPaths,
    pulumi.Output<String>? folderType,
    pulumi.Output<String>? lastUpdatedTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentFolderArn,
    pulumi.Output<List<FolderPermission>>? permissions,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      folderId = pulumi.Input.asOptionalInput<String>(folderId),
      folderPaths = pulumi.Input.asOptionalInput<List<String>>(folderPaths),
      folderType = pulumi.Input.asOptionalInput<String>(folderType),
      lastUpdatedTime = pulumi.Input.asOptionalInput<String>(lastUpdatedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentFolderArn = pulumi.Input.asOptionalInput<String>(parentFolderArn),
      permissions = pulumi.Input.asOptionalInput<List<FolderPermission>>(permissions),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      folderId: map['folderId'] == null ? null : pulumi.Output.create<String>(map['folderId'] as String),
      folderPaths: map['folderPaths'] == null ? null : pulumi.Output.create<List<String>>((map['folderPaths'] as List).cast<String>()),
      folderType: map['folderType'] == null ? null : pulumi.Output.create<String>(map['folderType'] as String),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentFolderArn: map['parentFolderArn'] == null ? null : pulumi.Output.create<String>(map['parentFolderArn'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<FolderPermission>>(pulumi.Input.decodeList<FolderPermission>(map['permissions'], (value) => FolderPermission.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

