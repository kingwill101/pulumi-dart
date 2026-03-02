// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_posix_user.dart';
import 'access_point_root_directory.dart';

/// Input properties used for looking up and filtering AccessPoint resources.
class AccessPointState {
  /// ARN of the access point.
  final pulumi.Input<String>? arn;
  /// ARN of the file system.
  final pulumi.Input<String>? fileSystemArn;
  /// ID of the file system for which the access point is intended.
  final pulumi.Input<String>? fileSystemId;
  final pulumi.Input<String>? ownerId;
  /// Operating system user and group applied to all file system requests made using the access point. Detailed below.
  final pulumi.Input<AccessPointPosixUser>? posixUser;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Directory on the Amazon EFS file system that the access point provides access to. Detailed below.
  final pulumi.Input<AccessPointRootDirectory>? rootDirectory;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AccessPointState].
  /// [arn] ARN of the access point.
  /// [fileSystemArn] ARN of the file system.
  /// [fileSystemId] ID of the file system for which the access point is intended.
  /// [ownerId] Optional.
  /// [posixUser] Operating system user and group applied to all file system requests made using the access point. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootDirectory] Directory on the Amazon EFS file system that the access point provides access to. Detailed below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AccessPointState({
    this.arn,
    this.fileSystemArn,
    this.fileSystemId,
    this.ownerId,
    this.posixUser,
    this.region,
    this.rootDirectory,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fileSystemArn': ?fileSystemArn,
      'fileSystemId': ?fileSystemId,
      'ownerId': ?ownerId,
      'posixUser': ?pulumi.Input.mapOptionalInputValue<AccessPointPosixUser, Map<String, dynamic>>(posixUser, (value) => value.toMap()),
      'region': ?region,
      'rootDirectory': ?pulumi.Input.mapOptionalInputValue<AccessPointRootDirectory, Map<String, dynamic>>(rootDirectory, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AccessPointState.fromMap(Map<String, dynamic> map) {
    return AccessPointState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      fileSystemArn: map['fileSystemArn'] == null ? null : ((map['fileSystemArn'] as String).input()).input(),
      fileSystemId: map['fileSystemId'] == null ? null : ((map['fileSystemId'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      posixUser: map['posixUser'] == null ? null : ((AccessPointPosixUser.fromMap((map['posixUser']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      rootDirectory: map['rootDirectory'] == null ? null : ((AccessPointRootDirectory.fromMap((map['rootDirectory']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

