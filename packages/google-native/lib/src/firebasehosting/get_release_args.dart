// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_release_args_doc}
/// Arguments for getRelease.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_release_args_doc}
class GetReleaseArgs {
  final pulumi.Input<String> channelId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetReleaseArgs].
  /// [channelId] Required.
  /// [project] Optional.
  /// [releaseId] Required.
  /// [siteId] Required.
  GetReleaseArgs({
    required String channelId,
    String? project,
    required String releaseId,
    required String siteId,
  })  : channelId = pulumi.Input.asInput<String>(channelId),
        project = pulumi.Input.asOptionalInput<String>(project),
        releaseId = pulumi.Input.asInput<String>(releaseId),
        siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelId'] = channelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['releaseId'] = releaseId;
    map['siteId'] = siteId;
    return map;
  }

  factory GetReleaseArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs(
      channelId: map['channelId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      releaseId: map['releaseId'] as String,
      siteId: map['siteId'] as String,
    );
  }
}
