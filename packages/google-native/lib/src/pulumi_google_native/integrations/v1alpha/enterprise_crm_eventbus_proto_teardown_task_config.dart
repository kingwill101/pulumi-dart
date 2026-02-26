// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_event_bus_properties.dart';
import 'enterprise_crm_eventbus_proto_event_parameters.dart';
import 'enterprise_crm_eventbus_proto_next_teardown_task.dart';

class EnterpriseCrmEventbusProtoTeardownTaskConfig {
  /// The creator's email address.
  final String? creatorEmail;

  /// Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.
  final String name;
  final EnterpriseCrmEventbusProtoNextTeardownTask? nextTeardownTask;

  /// The parameters the user can pass to this task.
  final EnterpriseCrmEventbusProtoEventParameters? parameters;
  final EnterpriseCrmEventbusProtoEventBusProperties? properties;

  /// Implementation class name.
  final String teardownTaskImplementationClassName;

  EnterpriseCrmEventbusProtoTeardownTaskConfig({
    this.creatorEmail,
    required this.name,
    this.nextTeardownTask,
    this.parameters,
    this.properties,
    required this.teardownTaskImplementationClassName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final creatorEmailValue = creatorEmail;
    if (creatorEmailValue != null) {
      map['creatorEmail'] = creatorEmailValue;
    }
    map['name'] = name;
    final nextTeardownTaskValue = nextTeardownTask;
    if (nextTeardownTaskValue != null) {
      map['nextTeardownTask'] = nextTeardownTaskValue.toMap();
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue.toMap();
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue.toMap();
    }
    map['teardownTaskImplementationClassName'] =
        teardownTaskImplementationClassName;
    return map;
  }

  factory EnterpriseCrmEventbusProtoTeardownTaskConfig.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTeardownTaskConfig(
      creatorEmail:
          map['creatorEmail'] == null ? null : map['creatorEmail'] as String,
      name: map['name'] as String,
      nextTeardownTask: map['nextTeardownTask'] == null
          ? null
          : EnterpriseCrmEventbusProtoNextTeardownTask.fromMap(
              (map['nextTeardownTask'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null
          ? null
          : EnterpriseCrmEventbusProtoEventParameters.fromMap(
              (map['parameters'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : EnterpriseCrmEventbusProtoEventBusProperties.fromMap(
              (map['properties'] as Map).cast<String, dynamic>()),
      teardownTaskImplementationClassName:
          map['teardownTaskImplementationClassName'] as String,
    );
  }
}
