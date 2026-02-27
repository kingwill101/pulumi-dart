// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_home_directory_mapping/access_home_directory_mapping.dart';
import '../access_posix_profile/access_posix_profile.dart';

/// The set of arguments for Access.
class AccessArgs {
  /// The SID of a group in the directory connected to the Transfer Server (e.g., `S-1-1-12-1234567890-123456789-1234567890-1234`)
  final Input<String> externalId;

  /// The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  final Input<String>? homeDirectory;

  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below.
  final Input<List<AccessHomeDirectoryMapping>>? homeDirectoryMappings;

  /// The type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  final Input<String>? homeDirectoryType;

  /// An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  final Input<String>? policy;

  /// Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below.
  final Input<AccessPosixProfile>? posixProfile;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) of an IAM role that allows the service to controls your user’s access to your Amazon S3 bucket.
  final Input<String>? role;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  final Input<String> serverId;

  AccessArgs({
    required this.externalId,
    this.homeDirectory,
    this.homeDirectoryMappings,
    this.homeDirectoryType,
    this.policy,
    this.posixProfile,
    this.region,
    this.role,
    required this.serverId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalId'] = externalId;
    final homeDirectoryValue = homeDirectory;
    if (homeDirectoryValue != null) {
      map['homeDirectory'] = homeDirectoryValue;
    }
    final homeDirectoryMappingsValue = homeDirectoryMappings;
    if (homeDirectoryMappingsValue != null) {
      map['homeDirectoryMappings'] = Input.mapOptionalInputValue<
              List<AccessHomeDirectoryMapping>, List<Map<String, dynamic>>>(
          homeDirectoryMappingsValue,
          (value) => Input.encodeList<AccessHomeDirectoryMapping,
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
      map['posixProfile'] =
          Input.mapOptionalInputValue<AccessPosixProfile, Map<String, dynamic>>(
              posixProfileValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    map['serverId'] = serverId;
    return map;
  }

  factory AccessArgs.fromMap(Map<String, dynamic> map) {
    return AccessArgs(
      externalId: Input.asInput<String>(map['externalId']),
      homeDirectory: Input.asOptionalInput<String>(map['homeDirectory']),
      homeDirectoryMappings:
          Input.asOptionalInput<List<AccessHomeDirectoryMapping>>(
              map['homeDirectoryMappings']),
      homeDirectoryType:
          Input.asOptionalInput<String>(map['homeDirectoryType']),
      policy: Input.asOptionalInput<String>(map['policy']),
      posixProfile:
          Input.asOptionalInput<AccessPosixProfile>(map['posixProfile']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asOptionalInput<String>(map['role']),
      serverId: Input.asInput<String>(map['serverId']),
    );
  }
}
