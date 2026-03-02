// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_group_response.dart';

/// Defines a stage which contains the groups to update and the steps to take (e.g., wait for a time period) before starting the next stage.
class UpdateStageResponse {
  /// The time in seconds to wait at the end of this stage before starting the next one. Defaults to 0 seconds if unspecified.
  final pulumi.Input<int>? afterStageWaitInSeconds;
  /// Defines the groups to be executed in parallel in this stage. Duplicate groups are not allowed. Min size: 1.
  final pulumi.Input<List<UpdateGroupResponse>>? groups;
  /// The name of the stage. Must be unique within the UpdateRun.
  final pulumi.Input<String> name;

  /// Creates a new [UpdateStageResponse].
  /// [afterStageWaitInSeconds] The time in seconds to wait at the end of this stage before starting the next one. Defaults to 0 seconds if unspecified.
  /// [groups] Defines the groups to be executed in parallel in this stage. Duplicate groups are not allowed. Min size: 1.
  /// [name] The name of the stage. Must be unique within the UpdateRun.
  UpdateStageResponse({
    this.afterStageWaitInSeconds,
    this.groups,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterStageWaitInSeconds': ?afterStageWaitInSeconds,
      'groups': ?pulumi.Input.mapOptionalInputValue<List<UpdateGroupResponse>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<UpdateGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory UpdateStageResponse.fromMap(Map<String, dynamic> map) {
    return UpdateStageResponse(
      afterStageWaitInSeconds: map['afterStageWaitInSeconds'] == null ? null : (map['afterStageWaitInSeconds'] as int).input(),
      groups: map['groups'] == null ? null : (pulumi.Input.decodeList<UpdateGroupResponse>(map['groups'], (value) => UpdateGroupResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

