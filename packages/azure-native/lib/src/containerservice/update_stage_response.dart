// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_group_response.dart';

/// Defines a stage which contains the groups to update and the steps to take (e.g., wait for a time period) before starting the next stage.
class UpdateStageResponse {
  /// The time in seconds to wait at the end of this stage before starting the next one. Defaults to 0 seconds if unspecified.
  final int? afterStageWaitInSeconds;
  /// Defines the groups to be executed in parallel in this stage. Duplicate groups are not allowed. Min size: 1.
  final List<UpdateGroupResponse>? groups;
  /// The name of the stage. Must be unique within the UpdateRun.
  final String name;

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
      'groups': ?groups == null ? null : pulumi.Input.encodeList<UpdateGroupResponse, Map<String, dynamic>>(groups!, (value) => value.toMap()),
      'name': name,
    };
  }

  factory UpdateStageResponse.fromMap(Map<String, dynamic> map) {
    return UpdateStageResponse(
      afterStageWaitInSeconds: map['afterStageWaitInSeconds'] == null ? null : map['afterStageWaitInSeconds'] as int,
      groups: map['groups'] == null ? null : pulumi.Input.decodeList<UpdateGroupResponse>(map['groups'], (value) => UpdateGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

