// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_event_bus_properties_response.dart';
import 'enterprise_crm_eventbus_proto_event_parameters_response.dart';
import 'enterprise_crm_eventbus_proto_next_teardown_task_response.dart';

class EnterpriseCrmEventbusProtoTeardownTaskConfigResponse {
  /// The creator's email address.
  final String creatorEmail;

  /// Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.
  final String name;
  final EnterpriseCrmEventbusProtoNextTeardownTaskResponse nextTeardownTask;

  /// The parameters the user can pass to this task.
  final EnterpriseCrmEventbusProtoEventParametersResponse parameters;
  final EnterpriseCrmEventbusProtoEventBusPropertiesResponse properties;

  /// Implementation class name.
  final String teardownTaskImplementationClassName;

  /// Creates a new [EnterpriseCrmEventbusProtoTeardownTaskConfigResponse].
  /// [creatorEmail] The creator's email address.
  /// [name] Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.
  /// [nextTeardownTask] Required.
  /// [parameters] The parameters the user can pass to this task.
  /// [properties] Required.
  /// [teardownTaskImplementationClassName] Implementation class name.
  EnterpriseCrmEventbusProtoTeardownTaskConfigResponse({
    required this.creatorEmail,
    required this.name,
    required this.nextTeardownTask,
    required this.parameters,
    required this.properties,
    required this.teardownTaskImplementationClassName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creatorEmail'] = creatorEmail;
    map['name'] = name;
    map['nextTeardownTask'] = nextTeardownTask.toMap();
    map['parameters'] = parameters.toMap();
    map['properties'] = properties.toMap();
    map['teardownTaskImplementationClassName'] =
        teardownTaskImplementationClassName;
    return map;
  }

  factory EnterpriseCrmEventbusProtoTeardownTaskConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTeardownTaskConfigResponse(
      creatorEmail: map['creatorEmail'] as String,
      name: map['name'] as String,
      nextTeardownTask:
          EnterpriseCrmEventbusProtoNextTeardownTaskResponse.fromMap(
              (map['nextTeardownTask'] as Map).cast<String, dynamic>()),
      parameters: EnterpriseCrmEventbusProtoEventParametersResponse.fromMap(
          (map['parameters'] as Map).cast<String, dynamic>()),
      properties: EnterpriseCrmEventbusProtoEventBusPropertiesResponse.fromMap(
          (map['properties'] as Map).cast<String, dynamic>()),
      teardownTaskImplementationClassName:
          map['teardownTaskImplementationClassName'] as String,
    );
  }
}
