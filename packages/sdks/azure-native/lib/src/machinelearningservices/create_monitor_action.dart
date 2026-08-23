// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_definition.dart';

class CreateMonitorAction {
  /// Expected value is 'CreateMonitor'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines the monitor.
  final pulumi.Input<MonitorDefinition> monitorDefinition;

  /// Creates a new [CreateMonitorAction].
  /// [actionType] Expected value is 'CreateMonitor'.
  /// [monitorDefinition] [Required] Defines the monitor.
  const CreateMonitorAction({
    required this.actionType,
    required this.monitorDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'monitorDefinition': pulumi.Input.mapInputValue<MonitorDefinition, Map<String, dynamic>>(monitorDefinition, (value) => value.toMap()),
    };
  }

  factory CreateMonitorAction.fromMap(Map<String, dynamic> map) {
    return CreateMonitorAction(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      monitorDefinition: pulumi.Input.fromValue(MonitorDefinition.fromMap((map['monitorDefinition']! as Map).cast<String, dynamic>())),
    );
  }
}
