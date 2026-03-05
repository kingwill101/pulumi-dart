// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_start_stop_schedule.dart';

/// The list of schedules to be applied on the computes
class ComputeSchedules {
  /// The list of compute start stop schedules to be applied.
  final pulumi.Input<List<ComputeStartStopSchedule>>? computeStartStop;

  /// Creates a new [ComputeSchedules].
  /// [computeStartStop] The list of compute start stop schedules to be applied.
  ComputeSchedules({
    this.computeStartStop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeStartStop': ?pulumi.Input.mapOptionalInputValue<List<ComputeStartStopSchedule>, List<Map<String, dynamic>>>(computeStartStop, (value) => pulumi.Input.encodeList<ComputeStartStopSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ComputeSchedules.fromMap(Map<String, dynamic> map) {
    return ComputeSchedules(
      computeStartStop: (() { final guardedValue = map['computeStartStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ComputeStartStopSchedule>(guardedValue, (value) => ComputeStartStopSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

