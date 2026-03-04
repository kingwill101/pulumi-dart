// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_suspend_process_suspend_process_args_doc}
/// The set of arguments for SuspendProcess.
/// {@endtemplate}
/// {@macro pulumi_ess_suspend_process_suspend_process_args_doc}
class SuspendProcessArgs {
  /// Activity type N that you want to suspend. Valid values are: `SCALE_OUT`,`SCALE_IN`,`HealthCheck`,`AlarmNotification` and `ScheduledAction`.
  final pulumi.Input<String> process;

  /// ID of the scaling group.
  final pulumi.Input<String> scalingGroupId;

  /// Creates a new [SuspendProcessArgs].
  /// [process] Activity type N that you want to suspend. Valid values are: `SCALE_OUT`,`SCALE_IN`,`HealthCheck`,`AlarmNotification` and `ScheduledAction`.
  /// [scalingGroupId] ID of the scaling group.
  SuspendProcessArgs({required this.process, required this.scalingGroupId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'process': process,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory SuspendProcessArgs.fromMap(Map<String, dynamic> map) {
    return SuspendProcessArgs(
      process: pulumi.Input.fromValue(map['process'] as String),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
    );
  }
}
