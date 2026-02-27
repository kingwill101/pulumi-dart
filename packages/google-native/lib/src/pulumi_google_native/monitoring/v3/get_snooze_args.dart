// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSnooze.
class GetSnoozeArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snoozeId;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      snoozeId: pulumi.Input.asInput<String>(map['snoozeId']),
    );
  }
}
