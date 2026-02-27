// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDeviceSession.
class GetDeviceSessionArgs {
  final Input<String> deviceSessionId;
  final Input<String>? project;

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
      deviceSessionId: Input.asInput<String>(map['deviceSessionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
