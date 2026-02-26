// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppProfile.
class GetAppProfileArgs {
  final Input<String> appProfileId;
  final Input<String> instanceId;
  final Input<String>? project;

  GetAppProfileArgs({
    required this.appProfileId,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appProfileId'] = appProfileId;
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAppProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetAppProfileArgs(
      appProfileId: Input.asInput<String>(map['appProfileId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
