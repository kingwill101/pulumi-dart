// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_group.dart';

/// Defines a stage which contains the groups to update and the steps to take (e.g., wait for a time period) before starting the next stage.
class UpdateStage {
  /// The time in seconds to wait at the end of this stage before starting the next one. Defaults to 0 seconds if unspecified.
  final pulumi.Input<int>? afterStageWaitInSeconds;
  /// Defines the groups to be executed in parallel in this stage. Duplicate groups are not allowed. Min size: 1.
  final pulumi.Input<List<UpdateGroup>>? groups;
  /// The name of the stage. Must be unique within the UpdateRun.
  final pulumi.Input<String> name;

  /// Creates a new [UpdateStage].
  /// [afterStageWaitInSeconds] The time in seconds to wait at the end of this stage before starting the next one. Defaults to 0 seconds if unspecified.
  /// [groups] Defines the groups to be executed in parallel in this stage. Duplicate groups are not allowed. Min size: 1.
  /// [name] The name of the stage. Must be unique within the UpdateRun.
  UpdateStage({
    this.afterStageWaitInSeconds,
    this.groups,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterStageWaitInSeconds': ?afterStageWaitInSeconds,
      'groups': ?pulumi.Input.mapOptionalInputValue<List<UpdateGroup>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<UpdateGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory UpdateStage.fromMap(Map<String, dynamic> map) {
    return UpdateStage(
      afterStageWaitInSeconds: (() { final guardedValue = map['afterStageWaitInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UpdateGroup>(guardedValue, (value) => UpdateGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

