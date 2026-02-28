// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_event_parameters_response.dart';

class EnterpriseCrmEventbusProtoTriggerCriteriaResponse {
  /// Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.
  final String condition;

  /// Optional. To be used in TaskConfig for the implementation class.
  final EnterpriseCrmEventbusProtoEventParametersResponse parameters;

  /// Optional. Implementation class name. The class should implement the “TypedTask” interface.
  final String triggerCriteriaTaskImplementationClassName;

  /// Creates a new [EnterpriseCrmEventbusProtoTriggerCriteriaResponse].
  /// [condition] Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.
  /// [parameters] Optional. To be used in TaskConfig for the implementation class.
  /// [triggerCriteriaTaskImplementationClassName] Optional. Implementation class name. The class should implement the “TypedTask” interface.
  EnterpriseCrmEventbusProtoTriggerCriteriaResponse({
    required this.condition,
    required this.parameters,
    required this.triggerCriteriaTaskImplementationClassName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition;
    map['parameters'] = parameters.toMap();
    map['triggerCriteriaTaskImplementationClassName'] =
        triggerCriteriaTaskImplementationClassName;
    return map;
  }

  factory EnterpriseCrmEventbusProtoTriggerCriteriaResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTriggerCriteriaResponse(
      condition: map['condition'] as String,
      parameters: EnterpriseCrmEventbusProtoEventParametersResponse.fromMap(
          (map['parameters'] as Map).cast<String, dynamic>()),
      triggerCriteriaTaskImplementationClassName:
          map['triggerCriteriaTaskImplementationClassName'] as String,
    );
  }
}
