// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_home_directory_mapping.dart';
import 'user_posix_profile.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Amazon Resource Name (ARN) of Transfer User
  final pulumi.Input<String>? arn;
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
  final pulumi.Input<String>? role;
  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  final pulumi.Input<String>? serverId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The name used for log in to your SFTP server.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserState].
  /// [arn] Amazon Resource Name (ARN) of Transfer User
  /// [homeDirectory] The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  /// [homeDirectoryMappings] Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below.
  /// [homeDirectoryType] The type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  /// [policy] An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  /// [posixProfile] Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] Amazon Resource Name (ARN) of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  /// [serverId] The Server ID of the Transfer Server (e.g., `s-12345678`)
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userName] The name used for log in to your SFTP server.
  UserState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? homeDirectory,
    pulumi.Output<List<UserHomeDirectoryMapping>>? homeDirectoryMappings,
    pulumi.Output<String>? homeDirectoryType,
    pulumi.Output<String>? policy,
    pulumi.Output<UserPosixProfile>? posixProfile,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
    pulumi.Output<String>? serverId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      homeDirectory = pulumi.Input.asOptionalInput<String>(homeDirectory),
      homeDirectoryMappings = pulumi.Input.asOptionalInput<List<UserHomeDirectoryMapping>>(homeDirectoryMappings),
      homeDirectoryType = pulumi.Input.asOptionalInput<String>(homeDirectoryType),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      posixProfile = pulumi.Input.asOptionalInput<UserPosixProfile>(posixProfile),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      homeDirectory: map['homeDirectory'] == null ? null : pulumi.Output.create<String>(map['homeDirectory'] as String),
      homeDirectoryMappings: map['homeDirectoryMappings'] == null ? null : pulumi.Output.create<List<UserHomeDirectoryMapping>>(pulumi.Input.decodeList<UserHomeDirectoryMapping>(map['homeDirectoryMappings'], (value) => UserHomeDirectoryMapping.fromMap((value as Map).cast<String, dynamic>()))),
      homeDirectoryType: map['homeDirectoryType'] == null ? null : pulumi.Output.create<String>(map['homeDirectoryType'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      posixProfile: map['posixProfile'] == null ? null : pulumi.Output.create<UserPosixProfile>(UserPosixProfile.fromMap((map['posixProfile'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

