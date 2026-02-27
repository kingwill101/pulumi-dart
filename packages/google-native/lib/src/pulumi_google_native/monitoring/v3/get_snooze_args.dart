// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSnooze.
class GetSnoozeArgs {
  final Input<String>? project;
  final Input<String> snoozeId;

  GetSnoozeArgs({
    this.project,
    required this.snoozeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['snoozeId'] = snoozeId;
    return map;
  }

  factory GetSnoozeArgs.fromMap(Map<String, dynamic> map) {
    return GetSnoozeArgs(
      project: Input.asOptionalInput<String>(map['project']),
      snoozeId: Input.asInput<String>(map['snoozeId']),
    );
  }
}
