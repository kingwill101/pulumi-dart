// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_start_stop_schedule_response.dart';

/// The list of schedules to be applied on the computes
class ComputeSchedulesResponse {
  /// The list of compute start stop schedules to be applied.
  final pulumi.Input<List<ComputeStartStopScheduleResponse>>? computeStartStop;

  /// Creates a new [ComputeSchedulesResponse].
  /// [computeStartStop] The list of compute start stop schedules to be applied.
  ComputeSchedulesResponse({
    this.computeStartStop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeStartStop': ?pulumi.Input.mapOptionalInputValue<List<ComputeStartStopScheduleResponse>, List<Map<String, dynamic>>>(computeStartStop, (value) => pulumi.Input.encodeList<ComputeStartStopScheduleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ComputeSchedulesResponse.fromMap(Map<String, dynamic> map) {
    return ComputeSchedulesResponse(
      computeStartStop: map['computeStartStop'] == null ? null : (pulumi.Input.decodeList<ComputeStartStopScheduleResponse>(map['computeStartStop']!, (value) => ComputeStartStopScheduleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

