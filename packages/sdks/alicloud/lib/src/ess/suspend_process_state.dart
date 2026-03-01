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
    pulumi.Output<String>? process,
    pulumi.Output<String>? scalingGroupId,
  }) :
      process = pulumi.Input.asOptionalInput<String>(process),
      scalingGroupId = pulumi.Input.asOptionalInput<String>(scalingGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'process': ?process,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory SuspendProcessState.fromMap(Map<String, dynamic> map) {
    return SuspendProcessState(
      process: map['process'] == null ? null : pulumi.Output.create<String>(map['process'] as String),
      scalingGroupId: map['scalingGroupId'] == null ? null : pulumi.Output.create<String>(map['scalingGroupId'] as String),
    );
  }
}

