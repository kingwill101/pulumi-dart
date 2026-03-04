// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_group_instances_instance.dart';

/// {@template pulumi_cms_monitor_group_instances_monitor_group_instances_args_doc}
/// The set of arguments for MonitorGroupInstances.
/// {@endtemplate}
/// {@macro pulumi_cms_monitor_group_instances_monitor_group_instances_args_doc}
class MonitorGroupInstancesArgs {
  /// The id of Cms Group.
  final pulumi.Input<String> groupId;

  /// Instance information added to the Cms Group. See `instances` below.
  final pulumi.Input<List<MonitorGroupInstancesInstance>> instances;

  /// Creates a new [MonitorGroupInstancesArgs].
  /// [groupId] The id of Cms Group.
  /// [instances] Instance information added to the Cms Group. See `instances` below.
  MonitorGroupInstancesArgs({required this.groupId, required this.instances});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'instances':
          pulumi.Input.mapInputValue<
            List<MonitorGroupInstancesInstance>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  MonitorGroupInstancesInstance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory MonitorGroupInstancesArgs.fromMap(Map<String, dynamic> map) {
    return MonitorGroupInstancesArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      instances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MonitorGroupInstancesInstance>(
          map['instances']!,
          (value) => MonitorGroupInstancesInstance.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
