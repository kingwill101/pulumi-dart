// ignore_for_file: unused_element, unnecessary_cast

import 'acting_user_response.dart';
import 'serving_config_response.dart';

/// Result data returned by getVersion.
class GetVersionResult8 {
  /// The configuration for the behavior of the site. This configuration exists in the [`firebase.json`](https://firebase.google.com/docs/cli/#the_firebasejson_file) file.
  final ServingConfigResponse config;

  /// The time at which the version was created.
  final String createTime;

  /// Identifies the user who created the version.
  final ActingUserResponse createUser;

  /// The time at which the version was `DELETED`.
  final String deleteTime;

  /// Identifies the user who `DELETED` the version.
  final ActingUserResponse deleteUser;

  /// The total number of files associated with the version. This value is calculated after a version is `FINALIZED`.
  final String fileCount;

  /// The time at which the version was `FINALIZED`.
  final String finalizeTime;

  /// Identifies the user who `FINALIZED` the version.
  final ActingUserResponse finalizeUser;

  /// The labels used for extra metadata and/or filtering.
  final Map<String, String> labels;

  /// The fully-qualified resource name for the version, in the format: sites/ SITE_ID/versions/VERSION_ID This name is provided in the response body when you call [`CreateVersion`](sites.versions/create).
  final String name;

  /// The deploy status of the version. For a successful deploy, call [`CreateVersion`](sites.versions/create) to make a new version (`CREATED` status), [upload all desired files](sites.versions/populateFiles) to the version, then [update](sites.versions/patch) the version to the `FINALIZED` status. Note that if you leave the version in the `CREATED` state for more than 12 hours, the system will automatically mark the version as `ABANDONED`. You can also change the status of a version to `DELETED` by calling [`DeleteVersion`](sites.versions/delete).
  final String status;

  /// The total stored bytesize of the version. This value is calculated after a version is `FINALIZED`.
  final String versionBytes;

  GetVersionResult8({
    required this.config,
    required this.createTime,
    required this.createUser,
    required this.deleteTime,
    required this.deleteUser,
    required this.fileCount,
    required this.finalizeTime,
    required this.finalizeUser,
    required this.labels,
    required this.name,
    required this.status,
    required this.versionBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['createTime'] = createTime;
    map['createUser'] = createUser.toMap();
    map['deleteTime'] = deleteTime;
    map['deleteUser'] = deleteUser.toMap();
    map['fileCount'] = fileCount;
    map['finalizeTime'] = finalizeTime;
    map['finalizeUser'] = finalizeUser.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['status'] = status;
    map['versionBytes'] = versionBytes;
    return map;
  }

  factory GetVersionResult8.fromMap(Map<String, dynamic> map) {
    return GetVersionResult8(
      config: ServingConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      createUser: ActingUserResponse.fromMap(
          (map['createUser'] as Map).cast<String, dynamic>()),
      deleteTime: map['deleteTime'] as String,
      deleteUser: ActingUserResponse.fromMap(
          (map['deleteUser'] as Map).cast<String, dynamic>()),
      fileCount: map['fileCount'] as String,
      finalizeTime: map['finalizeTime'] as String,
      finalizeUser: ActingUserResponse.fromMap(
          (map['finalizeUser'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      status: map['status'] as String,
      versionBytes: map['versionBytes'] as String,
    );
  }
}
