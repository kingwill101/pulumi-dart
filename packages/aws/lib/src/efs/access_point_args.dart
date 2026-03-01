// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_posix_user.dart';
import 'access_point_root_directory.dart';

/// {@template pulumi_efs_access_point_access_point_args_doc}
/// The set of arguments for AccessPoint.
/// {@endtemplate}
/// {@macro pulumi_efs_access_point_access_point_args_doc}
class AccessPointArgs {
  /// ID of the file system for which the access point is intended.
  final pulumi.Input<String> fileSystemId;
  /// Operating system user and group applied to all file system requests made using the access point. Detailed below.
  final pulumi.Input<AccessPointPosixUser>? posixUser;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Directory on the Amazon EFS file system that the access point provides access to. Detailed below.
  final pulumi.Input<AccessPointRootDirectory>? rootDirectory;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccessPointArgs].
  /// [fileSystemId] ID of the file system for which the access point is intended.
  /// [posixUser] Operating system user and group applied to all file system requests made using the access point. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootDirectory] Directory on the Amazon EFS file system that the access point provides access to. Detailed below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  AccessPointArgs({
    required String fileSystemId,
    AccessPointPosixUser? posixUser,
    String? region,
    AccessPointRootDirectory? rootDirectory,
    Map<String, String>? tags,
  }) :
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      posixUser = pulumi.Input.asOptionalInput<AccessPointPosixUser>(posixUser),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootDirectory = pulumi.Input.asOptionalInput<AccessPointRootDirectory>(rootDirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'posixUser': ?pulumi.Input.mapOptionalInputValue<AccessPointPosixUser, Map<String, dynamic>>(posixUser, (value) => value.toMap()),
      'region': ?region,
      'rootDirectory': ?pulumi.Input.mapOptionalInputValue<AccessPointRootDirectory, Map<String, dynamic>>(rootDirectory, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AccessPointArgs.fromMap(Map<String, dynamic> map) {
    return AccessPointArgs(
      fileSystemId: map['fileSystemId'] as String,
      posixUser: map['posixUser'] == null ? null : AccessPointPosixUser.fromMap((map['posixUser'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      rootDirectory: map['rootDirectory'] == null ? null : AccessPointRootDirectory.fromMap((map['rootDirectory'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

