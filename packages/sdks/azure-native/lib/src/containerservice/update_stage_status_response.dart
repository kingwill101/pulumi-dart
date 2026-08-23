// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_group_status_response.dart';
import 'update_status_response.dart';
import 'wait_status_response.dart';

/// The status of a UpdateStage.
class UpdateStageStatusResponse {
  /// The status of the wait period configured on the UpdateStage.
  final pulumi.Input<WaitStatusResponse> afterStageWaitStatus;
  /// The list of groups to be updated as part of this UpdateStage.
  final pulumi.Input<List<UpdateGroupStatusResponse>> groups;
  /// The name of the UpdateStage.
  final pulumi.Input<String> name;
  /// The status of the UpdateStage.
  final pulumi.Input<UpdateStatusResponse> status;

  /// Creates a new [UpdateStageStatusResponse].
  /// [afterStageWaitStatus] The status of the wait period configured on the UpdateStage.
  /// [groups] The list of groups to be updated as part of this UpdateStage.
  /// [name] The name of the UpdateStage.
  /// [status] The status of the UpdateStage.
  const UpdateStageStatusResponse({
    required this.afterStageWaitStatus,
    required this.groups,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterStageWaitStatus': pulumi.Input.mapInputValue<WaitStatusResponse, Map<String, dynamic>>(afterStageWaitStatus, (value) => value.toMap()),
      'groups': pulumi.Input.mapInputValue<List<UpdateGroupStatusResponse>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<UpdateGroupStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'status': pulumi.Input.mapInputValue<UpdateStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory UpdateStageStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpdateStageStatusResponse(
      afterStageWaitStatus: pulumi.Input.fromValue(WaitStatusResponse.fromMap((map['afterStageWaitStatus']! as Map).cast<String, dynamic>())),
      groups: pulumi.Input.fromValue(pulumi.Input.decodeList<UpdateGroupStatusResponse>(map['groups']!, (value) => UpdateGroupStatusResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(UpdateStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}
