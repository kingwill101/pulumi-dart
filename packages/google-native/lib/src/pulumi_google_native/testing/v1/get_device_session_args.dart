// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeviceSession.
class GetDeviceSessionArgs {
  final pulumi.Input<String> deviceSessionId;
  final pulumi.Input<String>? project;

  GetDeviceSessionArgs({
    required this.deviceSessionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceSessionId'] = deviceSessionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeviceSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceSessionArgs(
      deviceSessionId: pulumi.Input.asInput<String>(map['deviceSessionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
