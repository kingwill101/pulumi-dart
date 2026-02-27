// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_home_directory_mapping/user_home_directory_mapping.dart';
import '../user_posix_profile/user_posix_profile.dart';

/// The set of arguments for User.
class UserTransferArgs {
  /// The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  final pulumi.Input<String>? homeDirectory;

  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below.
  final pulumi.Input<List<UserHomeDirectoryMapping>>? homeDirectoryMappings;

  /// The type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  final pulumi.Input<String>? homeDirectoryType;

  /// An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  final pulumi.Input<String>? policy;

  /// Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below.
  final pulumi.Input<UserPosixProfile>? posixProfile;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Resource Name (ARN) of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  final pulumi.Input<String> role;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  final pulumi.Input<String> serverId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name used for log in to your SFTP server.
  final pulumi.Input<String> userName;

  UserTransferArgs({
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
    final map = <String, dynamic>{};
    final homeDirectoryValue = homeDirectory;
    if (homeDirectoryValue != null) {
      map['homeDirectory'] = homeDirectoryValue;
    }
    final homeDirectoryMappingsValue = homeDirectoryMappings;
    if (homeDirectoryMappingsValue != null) {
      map['homeDirectoryMappings'] = pulumi.Input.mapOptionalInputValue<
              List<UserHomeDirectoryMapping>, List<Map<String, dynamic>>>(
          homeDirectoryMappingsValue,
          (value) => pulumi.Input.encodeList<UserHomeDirectoryMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final homeDirectoryTypeValue = homeDirectoryType;
    if (homeDirectoryTypeValue != null) {
      map['homeDirectoryType'] = homeDirectoryTypeValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final posixProfileValue = posixProfile;
    if (posixProfileValue != null) {
      map['posixProfile'] = pulumi.Input.mapOptionalInputValue<UserPosixProfile,
          Map<String, dynamic>>(posixProfileValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    map['serverId'] = serverId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory UserTransferArgs.fromMap(Map<String, dynamic> map) {
    return UserTransferArgs(
      homeDirectory: pulumi.Input.asOptionalInput<String>(map['homeDirectory']),
      homeDirectoryMappings:
          pulumi.Input.asOptionalInput<List<UserHomeDirectoryMapping>>(
              map['homeDirectoryMappings']),
      homeDirectoryType:
          pulumi.Input.asOptionalInput<String>(map['homeDirectoryType']),
      policy: pulumi.Input.asOptionalInput<String>(map['policy']),
      posixProfile:
          pulumi.Input.asOptionalInput<UserPosixProfile>(map['posixProfile']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      role: pulumi.Input.asInput<String>(map['role']),
      serverId: pulumi.Input.asInput<String>(map['serverId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
