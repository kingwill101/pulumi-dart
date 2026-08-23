// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_files_access_point_posix_user.dart';
import 'get_files_access_point_root_directory.dart';

/// {@template pulumi_s3_get_files_access_point_get_files_access_point_args_doc}
/// Arguments for getFilesAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_s3_get_files_access_point_get_files_access_point_args_doc}
class GetFilesAccessPointArgs {
  /// Access point ID.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// POSIX user configuration. See `posixUser` below.
  final pulumi.Input<List<GetFilesAccessPointPosixUser>>? posixUsers;
  /// Region where this resource is [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Root directory configuration. See `rootDirectory` below.
  final pulumi.Input<List<GetFilesAccessPointRootDirectory>>? rootDirectories;

  /// Creates a new [GetFilesAccessPointArgs].
  /// [id] Access point ID.
  /// [posixUsers] POSIX user configuration. See `posixUser` below.
  /// [region] Region where this resource is [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootDirectories] Root directory configuration. See `rootDirectory` below.
  const GetFilesAccessPointArgs({
    required this.id,
    this.posixUsers,
    this.region,
    this.rootDirectories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'posixUsers': ?pulumi.Input.mapOptionalInputValue<List<GetFilesAccessPointPosixUser>, List<Map<String, dynamic>>>(posixUsers, (value) => pulumi.Input.encodeList<GetFilesAccessPointPosixUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'rootDirectories': ?pulumi.Input.mapOptionalInputValue<List<GetFilesAccessPointRootDirectory>, List<Map<String, dynamic>>>(rootDirectories, (value) => pulumi.Input.encodeList<GetFilesAccessPointRootDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFilesAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetFilesAccessPointArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      posixUsers: (() { final guardedValue = map['posixUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetFilesAccessPointPosixUser>(guardedValue, (value) => GetFilesAccessPointPosixUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDirectories: (() { final guardedValue = map['rootDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetFilesAccessPointRootDirectory>(guardedValue, (value) => GetFilesAccessPointRootDirectory.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
