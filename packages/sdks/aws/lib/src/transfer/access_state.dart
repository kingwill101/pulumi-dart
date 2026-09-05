// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_home_directory_mapping.dart';
import 'access_posix_profile.dart';

/// Input properties used for looking up and filtering Access resources.
class AccessState {
  /// SID of a group in the directory connected to the Transfer Server (e.g., `S-1-1-12-1234567890-123456789-1234567890-1234`)
  final pulumi.Input<String?>? externalId;
  /// Landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  final pulumi.Input<String?>? homeDirectory;
  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See `homeDirectoryMappings` Block below.
  final pulumi.Input<List<AccessHomeDirectoryMapping>?>? homeDirectoryMappings;
  /// Type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  final pulumi.Input<String?>? homeDirectoryType;
  /// IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  final pulumi.Input<String?>? policy;
  /// Full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See `posixProfile` Block below.
  final pulumi.Input<AccessPosixProfile?>? posixProfile;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of an IAM role that allows the service to controls your user’s access to your Amazon S3 bucket.
  final pulumi.Input<String?>? role;
  /// Server ID of the Transfer Server (e.g., `s-12345678`)
  final pulumi.Input<String?>? serverId;

  /// Creates a new [AccessState].
  /// [externalId] SID of a group in the directory connected to the Transfer Server (e.g., `S-1-1-12-1234567890-123456789-1234567890-1234`)
  /// [homeDirectory] Landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  /// [homeDirectoryMappings] Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See `homeDirectoryMappings` Block below.
  /// [homeDirectoryType] Type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  /// [policy] IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  /// [posixProfile] Full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See `posixProfile` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN of an IAM role that allows the service to controls your user’s access to your Amazon S3 bucket.
  /// [serverId] Server ID of the Transfer Server (e.g., `s-12345678`)
  const AccessState({
    this.externalId,
    this.homeDirectory,
    this.homeDirectoryMappings,
    this.homeDirectoryType,
    this.policy,
    this.posixProfile,
    this.region,
    this.role,
    this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': ?externalId,
      'homeDirectory': ?homeDirectory,
      'homeDirectoryMappings': ?pulumi.Input.mapOptionalInputValue<List<AccessHomeDirectoryMapping>, List<Map<String, dynamic>>>(homeDirectoryMappings, (value) => pulumi.Input.encodeList<AccessHomeDirectoryMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'homeDirectoryType': ?homeDirectoryType,
      'policy': ?policy,
      'posixProfile': ?pulumi.Input.mapOptionalInputValue<AccessPosixProfile, Map<String, dynamic>>(posixProfile, (value) => value.toMap()),
      'region': ?region,
      'role': ?role,
      'serverId': ?serverId,
    };
  }

  factory AccessState.fromMap(Map<String, dynamic> map) {
    return AccessState(
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeDirectory: (() { final guardedValue = map['homeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeDirectoryMappings: (() { final guardedValue = map['homeDirectoryMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessHomeDirectoryMapping>(guardedValue, (value) => AccessHomeDirectoryMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      homeDirectoryType: (() { final guardedValue = map['homeDirectoryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      posixProfile: (() { final guardedValue = map['posixProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPosixProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
