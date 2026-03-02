// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SuspendProcess resources.
class SuspendProcessState {
  /// Activity type N that you want to suspend. Valid values are: `SCALE_OUT`,`SCALE_IN`,`HealthCheck`,`AlarmNotification` and `ScheduledAction`.
  final pulumi.Input<String>? process;
  /// ID of the scaling group.
  final pulumi.Input<String>? scalingGroupId;

  /// Creates a new [SuspendProcessState].
  /// [process] Activity type N that you want to suspend. Valid values are: `SCALE_OUT`,`SCALE_IN`,`HealthCheck`,`AlarmNotification` and `ScheduledAction`.
  /// [scalingGroupId] ID of the scaling group.
  SuspendProcessState({
    this.process,
    this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'process': ?process,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory SuspendProcessState.fromMap(Map<String, dynamic> map) {
    return SuspendProcessState(
      process: map['process'] == null ? null : (map['process']! as String).input(),
      scalingGroupId: map['scalingGroupId'] == null ? null : (map['scalingGroupId']! as String).input(),
    );
  }
}

