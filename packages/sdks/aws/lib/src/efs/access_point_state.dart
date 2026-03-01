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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? fileSystemArn,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? ownerId,
    pulumi.Output<AccessPointPosixUser>? posixUser,
    pulumi.Output<String>? region,
    pulumi.Output<AccessPointRootDirectory>? rootDirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      fileSystemArn = pulumi.Input.asOptionalInput<String>(fileSystemArn),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      posixUser = pulumi.Input.asOptionalInput<AccessPointPosixUser>(posixUser),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootDirectory = pulumi.Input.asOptionalInput<AccessPointRootDirectory>(rootDirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      fileSystemArn: map['fileSystemArn'] == null ? null : pulumi.Output.create<String>(map['fileSystemArn'] as String),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      posixUser: map['posixUser'] == null ? null : pulumi.Output.create<AccessPointPosixUser>(AccessPointPosixUser.fromMap((map['posixUser'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootDirectory: map['rootDirectory'] == null ? null : pulumi.Output.create<AccessPointRootDirectory>(AccessPointRootDirectory.fromMap((map['rootDirectory'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

