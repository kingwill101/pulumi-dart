// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_home_directory_mapping.dart';
import 'user_posix_profile.dart';

/// {@template pulumi_transfer_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_transfer_user_user_args_doc}
class UserArgs {
  /// Landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  final pulumi.Input<String?>? homeDirectory;
  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See `homeDirectoryMappings` Block below.
  final pulumi.Input<List<UserHomeDirectoryMapping>?>? homeDirectoryMappings;
  /// Type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  final pulumi.Input<String?>? homeDirectoryType;
  /// IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. Since the IAM variable syntax matches Terraform's interpolation syntax, they must be escaped inside Terraform configuration strings (`$${Transfer:UserName}`).  These are evaluated on-the-fly when navigating the bucket.
  final pulumi.Input<String?>? policy;
  /// Full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See `posixProfile` Block below.
  final pulumi.Input<UserPosixProfile?>? posixProfile;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  final pulumi.Input<String> role;
  /// Server ID of the Transfer Server (e.g., `s-12345678`)
  final pulumi.Input<String> serverId;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Name used for log in to your SFTP server.
  final pulumi.Input<String> userName;

  /// Creates a new [UserArgs].
  /// [homeDirectory] Landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  /// [homeDirectoryMappings] Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See `homeDirectoryMappings` Block below.
  /// [homeDirectoryType] Type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  /// [policy] IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. Since the IAM variable syntax matches Terraform's interpolation syntax, they must be escaped inside Terraform configuration strings (`$${Transfer:UserName}`).  These are evaluated on-the-fly when navigating the bucket.
  /// [posixProfile] Full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See `posixProfile` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  /// [serverId] Server ID of the Transfer Server (e.g., `s-12345678`)
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userName] Name used for log in to your SFTP server.
  const UserArgs({
    this.homeDirectory,
    this.homeDirectoryMappings,
    this.homeDirectoryType,
    this.policy,
    this.posixProfile,
    this.region,
    required this.role,
    required this.serverId,
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homeDirectory': ?homeDirectory,
      'homeDirectoryMappings': ?pulumi.Input.mapOptionalInputValue<List<UserHomeDirectoryMapping>, List<Map<String, dynamic>>>(homeDirectoryMappings, (value) => pulumi.Input.encodeList<UserHomeDirectoryMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'homeDirectoryType': ?homeDirectoryType,
      'policy': ?policy,
      'posixProfile': ?pulumi.Input.mapOptionalInputValue<UserPosixProfile, Map<String, dynamic>>(posixProfile, (value) => value.toMap()),
      'region': ?region,
      'role': role,
      'serverId': serverId,
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      homeDirectory: (() { final guardedValue = map['homeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeDirectoryMappings: (() { final guardedValue = map['homeDirectoryMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserHomeDirectoryMapping>(guardedValue, (value) => UserHomeDirectoryMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      homeDirectoryType: (() { final guardedValue = map['homeDirectoryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      posixProfile: (() { final guardedValue = map['posixProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPosixProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
