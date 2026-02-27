// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRelease.
class GetReleaseFirebasehostingV1beta1Args {
  final pulumi.Input<String> channelId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;
  final pulumi.Input<String> siteId;

  GetReleaseFirebasehostingV1beta1Args({
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

  factory GetReleaseFirebasehostingV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetReleaseFirebasehostingV1beta1Args(
      channelId: pulumi.Input.asInput<String>(map['channelId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      releaseId: pulumi.Input.asInput<String>(map['releaseId']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
    );
  }
}
