// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_home_directory_mapping.dart';
import 'user_posix_profile.dart';

/// {@template pulumi_transfer_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_transfer_user_user_args_doc}
class UserArgs {
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

  /// Creates a new [UserArgs].
  /// [homeDirectory] The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  /// [homeDirectoryMappings] Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below.
  /// [homeDirectoryType] The type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  /// [policy] An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  /// [posixProfile] Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] Amazon Resource Name (ARN) of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  /// [serverId] The Server ID of the Transfer Server (e.g., `s-12345678`)
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  /// [userName] The name used for log in to your SFTP server.
  UserArgs({
    String? homeDirectory,
    List<UserHomeDirectoryMapping>? homeDirectoryMappings,
    String? homeDirectoryType,
    String? policy,
    UserPosixProfile? posixProfile,
    String? region,
    required String role,
    required String serverId,
    Map<String, String>? tags,
    required String userName,
  }) : homeDirectory = pulumi.Input.asOptionalInput<String>(homeDirectory),
       homeDirectoryMappings =
           pulumi.Input.asOptionalInput<List<UserHomeDirectoryMapping>>(
             homeDirectoryMappings,
           ),
       homeDirectoryType = pulumi.Input.asOptionalInput<String>(
         homeDirectoryType,
       ),
       policy = pulumi.Input.asOptionalInput<String>(policy),
       posixProfile = pulumi.Input.asOptionalInput<UserPosixProfile>(
         posixProfile,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       role = pulumi.Input.asInput<String>(role),
       serverId = pulumi.Input.asInput<String>(serverId),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homeDirectory': ?homeDirectory,
      'homeDirectoryMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserHomeDirectoryMapping>,
            List<Map<String, dynamic>>
          >(
            homeDirectoryMappings,
            (value) =>
                pulumi.Input.encodeList<
                  UserHomeDirectoryMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'homeDirectoryType': ?homeDirectoryType,
      'policy': ?policy,
      'posixProfile':
          ?pulumi.Input.mapOptionalInputValue<
            UserPosixProfile,
            Map<String, dynamic>
          >(posixProfile, (value) => value.toMap()),
      'region': ?region,
      'role': role,
      'serverId': serverId,
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      homeDirectory: map['homeDirectory'] == null
          ? null
          : map['homeDirectory'] as String,
      homeDirectoryMappings: map['homeDirectoryMappings'] == null
          ? null
          : pulumi.Input.decodeList<UserHomeDirectoryMapping>(
              map['homeDirectoryMappings'],
              (value) => UserHomeDirectoryMapping.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      homeDirectoryType: map['homeDirectoryType'] == null
          ? null
          : map['homeDirectoryType'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      posixProfile: map['posixProfile'] == null
          ? null
          : UserPosixProfile.fromMap(
              (map['posixProfile'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      role: map['role'] as String,
      serverId: map['serverId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] as String,
    );
  }
}
