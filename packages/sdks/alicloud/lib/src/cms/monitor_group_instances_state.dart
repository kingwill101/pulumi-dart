// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_group_instances_instance.dart';

/// Input properties used for looking up and filtering MonitorGroupInstances resources.
class MonitorGroupInstancesState {
  /// The id of Cms Group.
  final pulumi.Input<String>? groupId;
  /// Instance information added to the Cms Group. See `instances` below.
  final pulumi.Input<List<MonitorGroupInstancesInstance>>? instances;

  /// Creates a new [MonitorGroupInstancesState].
  /// [groupId] The id of Cms Group.
  /// [instances] Instance information added to the Cms Group. See `instances` below.
  MonitorGroupInstancesState({
    this.groupId,
    this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<MonitorGroupInstancesInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<MonitorGroupInstancesInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MonitorGroupInstancesState.fromMap(Map<String, dynamic> map) {
    return MonitorGroupInstancesState(
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      instances: map['instances'] == null ? null : (pulumi.Input.decodeList<MonitorGroupInstancesInstance>(map['instances']!, (value) => MonitorGroupInstancesInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

