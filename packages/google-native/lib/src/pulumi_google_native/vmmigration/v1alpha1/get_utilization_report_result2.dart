// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'status_response31.dart';
import 'vm_utilization_info_response2.dart';

/// Result data returned by getUtilizationReport.
class GetUtilizationReportResult2 {
  /// The time the report was created (this refers to the time of the request, not the time the report creation completed).
  final String createTime;

  /// The report display name, as assigned by the user.
  final String displayName;

  /// Provides details on the state of the report in case of an error.
  final StatusResponse31 error;

  /// The point in time when the time frame ends. Notice that the time frame is counted backwards. For instance if the "frame_end_time" value is 2021/01/20 and the time frame is WEEK then the report covers the week between 2021/01/20 and 2021/01/14.
  final String frameEndTime;

  /// The report unique name.
  final String name;

  /// Current state of the report.
  final String state;

  /// The time the state was last set.
  final String stateTime;

  /// Time frame of the report.
  final String timeFrame;

  /// Total number of VMs included in the report.
  final int vmCount;

  /// List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  final List<VmUtilizationInfoResponse2> vms;

  /// Total number of VMs included in the report.
  final int vmsCount;

  GetUtilizationReportResult2({
    required this.createTime,
    required this.displayName,
    required this.error,
    required this.frameEndTime,
    required this.name,
    required this.state,
    required this.stateTime,
    required this.timeFrame,
    required this.vmCount,
    required this.vms,
    required this.vmsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['error'] = error.toMap();
    map['frameEndTime'] = frameEndTime;
    map['name'] = name;
    map['state'] = state;
    map['stateTime'] = stateTime;
    map['timeFrame'] = timeFrame;
    map['vmCount'] = vmCount;
    map['vms'] =
        Input.encodeList<VmUtilizationInfoResponse2, Map<String, dynamic>>(
            vms, (value) => value.toMap());
    map['vmsCount'] = vmsCount;
    return map;
  }

  factory GetUtilizationReportResult2.fromMap(Map<String, dynamic> map) {
    return GetUtilizationReportResult2(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error: StatusResponse31.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      frameEndTime: map['frameEndTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      timeFrame: map['timeFrame'] as String,
      vmCount: map['vmCount'] as int,
      vms: Input.decodeList<VmUtilizationInfoResponse2>(
          map['vms'],
          (value) => VmUtilizationInfoResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      vmsCount: map['vmsCount'] as int,
    );
  }
}
