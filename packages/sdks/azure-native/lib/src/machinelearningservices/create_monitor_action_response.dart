// ignore_for_file: unused_element, unnecessary_cast

import 'monitor_definition_response.dart';

class CreateMonitorActionResponse {
  /// Expected value is 'CreateMonitor'.
  final String actionType;
  /// [Required] Defines the monitor.
  final MonitorDefinitionResponse monitorDefinition;

  /// Creates a new [CreateMonitorActionResponse].
  /// [actionType] Expected value is 'CreateMonitor'.
  /// [monitorDefinition] [Required] Defines the monitor.
  CreateMonitorActionResponse({
    required this.actionType,
    required this.monitorDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'monitorDefinition': monitorDefinition.toMap(),
    };
  }

  factory CreateMonitorActionResponse.fromMap(Map<String, dynamic> map) {
    return CreateMonitorActionResponse(
      actionType: map['actionType'] as String,
      monitorDefinition: MonitorDefinitionResponse.fromMap((map['monitorDefinition'] as Map).cast<String, dynamic>()),
    );
  }
}

