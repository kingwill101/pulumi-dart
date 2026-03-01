// ignore_for_file: unused_element, unnecessary_cast

import 'monitor_definition.dart';

class CreateMonitorAction {
  /// Expected value is 'CreateMonitor'.
  final String actionType;
  /// [Required] Defines the monitor.
  final MonitorDefinition monitorDefinition;

  /// Creates a new [CreateMonitorAction].
  /// [actionType] Expected value is 'CreateMonitor'.
  /// [monitorDefinition] [Required] Defines the monitor.
  CreateMonitorAction({
    required this.actionType,
    required this.monitorDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'monitorDefinition': monitorDefinition.toMap(),
    };
  }

  factory CreateMonitorAction.fromMap(Map<String, dynamic> map) {
    return CreateMonitorAction(
      actionType: map['actionType'] as String,
      monitorDefinition: MonitorDefinition.fromMap((map['monitorDefinition'] as Map).cast<String, dynamic>()),
    );
  }
}

