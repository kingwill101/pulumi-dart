// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_event_parameters.dart';

class EnterpriseCrmEventbusProtoTriggerCriteria {
  /// Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.
  final String condition;

  /// Optional. To be used in TaskConfig for the implementation class.
  final EnterpriseCrmEventbusProtoEventParameters? parameters;

  /// Optional. Implementation class name. The class should implement the “TypedTask” interface.
  final String? triggerCriteriaTaskImplementationClassName;

  /// Creates a new [EnterpriseCrmEventbusProtoTriggerCriteria].
  /// [condition] Standard filter expression, when true the workflow will be executed. If there's no trigger_criteria_task_implementation_class_name specified, the condition will be validated directly.
  /// [parameters] Optional. To be used in TaskConfig for the implementation class.
  /// [triggerCriteriaTaskImplementationClassName] Optional. Implementation class name. The class should implement the “TypedTask” interface.
  EnterpriseCrmEventbusProtoTriggerCriteria({
    required this.condition,
    this.parameters,
    this.triggerCriteriaTaskImplementationClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'parameters': ?parameters == null ? null : parameters!.toMap(),
      'triggerCriteriaTaskImplementationClassName':
          ?triggerCriteriaTaskImplementationClassName,
    };
  }

  factory EnterpriseCrmEventbusProtoTriggerCriteria.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTriggerCriteria(
      condition: map['condition'] as String,
      parameters: map['parameters'] == null
          ? null
          : EnterpriseCrmEventbusProtoEventParameters.fromMap(
              (map['parameters'] as Map).cast<String, dynamic>(),
            ),
      triggerCriteriaTaskImplementationClassName:
          map['triggerCriteriaTaskImplementationClassName'] == null
          ? null
          : map['triggerCriteriaTaskImplementationClassName'] as String,
    );
  }
}
