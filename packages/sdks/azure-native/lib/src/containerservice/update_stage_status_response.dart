// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_group_status_response.dart';
import 'update_status_response.dart';
import 'wait_status_response.dart';

/// The status of a UpdateStage.
class UpdateStageStatusResponse {
  /// The status of the wait period configured on the UpdateStage.
  final WaitStatusResponse afterStageWaitStatus;
  /// The list of groups to be updated as part of this UpdateStage.
  final List<UpdateGroupStatusResponse> groups;
  /// The name of the UpdateStage.
  final String name;
  /// The status of the UpdateStage.
  final UpdateStatusResponse status;

  /// Creates a new [UpdateStageStatusResponse].
  /// [afterStageWaitStatus] The status of the wait period configured on the UpdateStage.
  /// [groups] The list of groups to be updated as part of this UpdateStage.
  /// [name] The name of the UpdateStage.
  /// [status] The status of the UpdateStage.
  UpdateStageStatusResponse({
    required this.afterStageWaitStatus,
    required this.groups,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterStageWaitStatus': afterStageWaitStatus.toMap(),
      'groups': pulumi.Input.encodeList<UpdateGroupStatusResponse, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'name': name,
      'status': status.toMap(),
    };
  }

  factory UpdateStageStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpdateStageStatusResponse(
      afterStageWaitStatus: WaitStatusResponse.fromMap((map['afterStageWaitStatus'] as Map).cast<String, dynamic>()),
      groups: pulumi.Input.decodeList<UpdateGroupStatusResponse>(map['groups'], (value) => UpdateGroupStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      status: UpdateStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

