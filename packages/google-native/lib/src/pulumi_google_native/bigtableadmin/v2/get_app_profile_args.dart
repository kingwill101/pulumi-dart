// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppProfile.
class GetAppProfileArgs {
  final pulumi.Input<String> appProfileId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

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
      appProfileId: pulumi.Input.asInput<String>(map['appProfileId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
