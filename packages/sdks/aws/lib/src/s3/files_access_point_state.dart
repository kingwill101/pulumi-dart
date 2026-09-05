// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_access_point_posix_user.dart';
import 'files_access_point_root_directory.dart';
import 'files_access_point_timeouts.dart';

/// Input properties used for looking up and filtering FilesAccessPoint resources.
class FilesAccessPointState {
  /// ARN of the access point.
  final pulumi.Input<String?>? arn;
  /// File system ID. Changing this value forces replacement.
  final pulumi.Input<String?>? fileSystemId;
  /// Access point name.
  final pulumi.Input<String?>? name;
  /// AWS account ID of the owner.
  final pulumi.Input<String?>? ownerId;
  /// POSIX user configuration. See `posixUser` below. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<FilesAccessPointPosixUser>?>? posixUsers;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Root directory configuration. See `rootDirectory` below. Changing this value forces replacement.
  final pulumi.Input<List<FilesAccessPointRootDirectory>?>? rootDirectories;
  /// Access point status.
  final pulumi.Input<String?>? status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<FilesAccessPointTimeouts?>? timeouts;

  /// Creates a new [FilesAccessPointState].
  /// [arn] ARN of the access point.
  /// [fileSystemId] File system ID. Changing this value forces replacement.
  /// [name] Access point name.
  /// [ownerId] AWS account ID of the owner.
  /// [posixUsers] POSIX user configuration. See `posixUser` below. Changing this value forces replacement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootDirectories] Root directory configuration. See `rootDirectory` below. Changing this value forces replacement.
  /// [status] Access point status.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const FilesAccessPointState({
    this.arn,
    this.fileSystemId,
    this.name,
    this.ownerId,
    this.posixUsers,
    this.region,
    this.rootDirectories,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fileSystemId': ?fileSystemId,
      'name': ?name,
      'ownerId': ?ownerId,
      'posixUsers': ?pulumi.Input.mapOptionalInputValue<List<FilesAccessPointPosixUser>, List<Map<String, dynamic>>>(posixUsers, (value) => pulumi.Input.encodeList<FilesAccessPointPosixUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'rootDirectories': ?pulumi.Input.mapOptionalInputValue<List<FilesAccessPointRootDirectory>, List<Map<String, dynamic>>>(rootDirectories, (value) => pulumi.Input.encodeList<FilesAccessPointRootDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FilesAccessPointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FilesAccessPointState.fromMap(Map<String, dynamic> map) {
    return FilesAccessPointState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      posixUsers: (() { final guardedValue = map['posixUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilesAccessPointPosixUser>(guardedValue, (value) => FilesAccessPointPosixUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDirectories: (() { final guardedValue = map['rootDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilesAccessPointRootDirectory>(guardedValue, (value) => FilesAccessPointRootDirectory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilesAccessPointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
