// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_access_point_posix_user.dart';
import 'files_access_point_root_directory.dart';
import 'files_access_point_timeouts.dart';

/// {@template pulumi_s3_files_access_point_files_access_point_args_doc}
/// The set of arguments for FilesAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_s3_files_access_point_files_access_point_args_doc}
class FilesAccessPointArgs {
  /// File system ID. Changing this value forces replacement.
  final pulumi.Input<String> fileSystemId;
  /// POSIX user configuration. See `posixUser` below. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<FilesAccessPointPosixUser>?>? posixUsers;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Root directory configuration. See `rootDirectory` below. Changing this value forces replacement.
  final pulumi.Input<List<FilesAccessPointRootDirectory>?>? rootDirectories;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<FilesAccessPointTimeouts?>? timeouts;

  /// Creates a new [FilesAccessPointArgs].
  /// [fileSystemId] File system ID. Changing this value forces replacement.
  /// [posixUsers] POSIX user configuration. See `posixUser` below. Changing this value forces replacement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootDirectories] Root directory configuration. See `rootDirectory` below. Changing this value forces replacement.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const FilesAccessPointArgs({
    required this.fileSystemId,
    this.posixUsers,
    this.region,
    this.rootDirectories,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'posixUsers': ?pulumi.Input.mapOptionalInputValue<List<FilesAccessPointPosixUser>, List<Map<String, dynamic>>>(posixUsers, (value) => pulumi.Input.encodeList<FilesAccessPointPosixUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'rootDirectories': ?pulumi.Input.mapOptionalInputValue<List<FilesAccessPointRootDirectory>, List<Map<String, dynamic>>>(rootDirectories, (value) => pulumi.Input.encodeList<FilesAccessPointRootDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FilesAccessPointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FilesAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return FilesAccessPointArgs(
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      posixUsers: (() { final guardedValue = map['posixUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilesAccessPointPosixUser>(guardedValue, (value) => FilesAccessPointPosixUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDirectories: (() { final guardedValue = map['rootDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilesAccessPointRootDirectory>(guardedValue, (value) => FilesAccessPointRootDirectory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilesAccessPointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
