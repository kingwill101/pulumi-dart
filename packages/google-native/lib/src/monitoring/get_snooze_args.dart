// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_snooze_args_doc}
/// Arguments for getSnooze.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_snooze_args_doc}
class GetSnoozeArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snoozeId;

  /// Creates a new [GetSnoozeArgs].
  /// [project] Optional.
  /// [snoozeId] Required.
  GetSnoozeArgs({
    String? project,
    required String snoozeId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      snoozeId = pulumi.Input.asInput<String>(snoozeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'snoozeId': snoozeId,
    };
  }

  factory GetSnoozeArgs.fromMap(Map<String, dynamic> map) {
    return GetSnoozeArgs(
      project: map['project'] == null ? null : map['project'] as String,
      snoozeId: map['snoozeId'] as String,
    );
  }
}

