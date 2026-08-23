// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_definition_response.dart';

class CreateMonitorActionResponse {
  /// Expected value is 'CreateMonitor'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines the monitor.
  final pulumi.Input<MonitorDefinitionResponse> monitorDefinition;

  /// Creates a new [CreateMonitorActionResponse].
  /// [actionType] Expected value is 'CreateMonitor'.
  /// [monitorDefinition] [Required] Defines the monitor.
  const CreateMonitorActionResponse({
    required this.actionType,
    required this.monitorDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'monitorDefinition': pulumi.Input.mapInputValue<MonitorDefinitionResponse, Map<String, dynamic>>(monitorDefinition, (value) => value.toMap()),
    };
  }

  factory CreateMonitorActionResponse.fromMap(Map<String, dynamic> map) {
    return CreateMonitorActionResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      monitorDefinition: pulumi.Input.fromValue(MonitorDefinitionResponse.fromMap((map['monitorDefinition']! as Map).cast<String, dynamic>())),
    );
  }
}
