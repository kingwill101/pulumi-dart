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
  SuspendProcessArgs({
    required pulumi.Output<String> process,
    required pulumi.Output<String> scalingGroupId,
  }) :
      process = pulumi.Input.asInput<String>(process),
      scalingGroupId = pulumi.Input.asInput<String>(scalingGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'process': process,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory SuspendProcessArgs.fromMap(Map<String, dynamic> map) {
    return SuspendProcessArgs(
      process: pulumi.Output.create<String>(map['process'] as String),
      scalingGroupId: pulumi.Output.create<String>(map['scalingGroupId'] as String),
    );
  }
}

