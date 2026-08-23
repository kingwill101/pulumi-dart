// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_home_directory_mapping.dart';
import 'user_posix_profile.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Amazon Resource Name (ARN) of Transfer User
  final pulumi.Input<String>? arn;
  /// Landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  final pulumi.Input<String>? homeDirectory;
  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See `homeDirectoryMappings` Block below.
  final pulumi.Input<List<UserHomeDirectoryMapping>>? homeDirectoryMappings;
  /// Type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  final pulumi.Input<String>? homeDirectoryType;
  /// IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. Since the IAM variable syntax matches Terraform's interpolation syntax, they must be escaped inside Terraform configuration strings (`$${Transfer:UserName}`).  These are evaluated on-the-fly when navigating the bucket.
  final pulumi.Input<String>? policy;
  /// Full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See `posixProfile` Block below.
  final pulumi.Input<UserPosixProfile>? posixProfile;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  final pulumi.Input<String>? role;
  /// Server ID of the Transfer Server (e.g., `s-12345678`)
  final pulumi.Input<String>? serverId;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Name used for log in to your SFTP server.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserState].
  /// [arn] Amazon Resource Name (ARN) of Transfer User
  /// [homeDirectory] Landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  /// [homeDirectoryMappings] Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See `homeDirectoryMappings` Block below.
  /// [homeDirectoryType] Type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  /// [policy] IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. Since the IAM variable syntax matches Terraform's interpolation syntax, they must be escaped inside Terraform configuration strings (`$${Transfer:UserName}`).  These are evaluated on-the-fly when navigating the bucket.
  /// [posixProfile] Full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See `posixProfile` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] Amazon Resource Name (ARN) of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  /// [serverId] Server ID of the Transfer Server (e.g., `s-12345678`)
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [userName] Name used for log in to your SFTP server.
  const UserState({
    this.arn,
    this.homeDirectory,
    this.homeDirectoryMappings,
    this.homeDirectoryType,
    this.policy,
    this.posixProfile,
    this.region,
    this.role,
    this.serverId,
    this.tags,
    this.tagsAll,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'homeDirectory': ?homeDirectory,
      'homeDirectoryMappings': ?pulumi.Input.mapOptionalInputValue<List<UserHomeDirectoryMapping>, List<Map<String, dynamic>>>(homeDirectoryMappings, (value) => pulumi.Input.encodeList<UserHomeDirectoryMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'homeDirectoryType': ?homeDirectoryType,
      'policy': ?policy,
      'posixProfile': ?pulumi.Input.mapOptionalInputValue<UserPosixProfile, Map<String, dynamic>>(posixProfile, (value) => value.toMap()),
      'region': ?region,
      'role': ?role,
      'serverId': ?serverId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userName': ?userName,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeDirectory: (() { final guardedValue = map['homeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeDirectoryMappings: (() { final guardedValue = map['homeDirectoryMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserHomeDirectoryMapping>(guardedValue, (value) => UserHomeDirectoryMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      homeDirectoryType: (() { final guardedValue = map['homeDirectoryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      posixProfile: (() { final guardedValue = map['posixProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPosixProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
