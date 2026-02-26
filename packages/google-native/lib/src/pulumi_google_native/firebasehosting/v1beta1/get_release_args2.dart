// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRelease.
class GetReleaseArgs2 {
  final Input<String> channelId;
  final Input<String>? project;
  final Input<String> releaseId;
  final Input<String> siteId;

  GetReleaseArgs2({
    required this.channelId,
    this.project,
    required this.releaseId,
    required this.siteId,
  });

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

  factory GetReleaseArgs2.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs2(
      channelId: Input.asInput<String>(map['channelId']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseId: Input.asInput<String>(map['releaseId']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
