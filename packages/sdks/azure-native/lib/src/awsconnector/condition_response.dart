// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_condition_model_properties_response.dart';
import 'label_name_condition_model_properties_response.dart';

/// Definition of Condition
class ConditionResponse {
  /// A single action condition.
  final pulumi.Input<ActionConditionModelPropertiesResponse>? actionCondition;
  /// A single label name condition.
  final pulumi.Input<LabelNameConditionModelPropertiesResponse>? labelNameCondition;

  /// Creates a new [ConditionResponse].
  /// [actionCondition] A single action condition.
  /// [labelNameCondition] A single label name condition.
  const ConditionResponse({
    this.actionCondition,
    this.labelNameCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionCondition': ?pulumi.Input.mapOptionalInputValue<ActionConditionModelPropertiesResponse, Map<String, dynamic>>(actionCondition, (value) => value.toMap()),
      'labelNameCondition': ?pulumi.Input.mapOptionalInputValue<LabelNameConditionModelPropertiesResponse, Map<String, dynamic>>(labelNameCondition, (value) => value.toMap()),
    };
  }

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      actionCondition: (() { final guardedValue = map['actionCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionConditionModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelNameCondition: (() { final guardedValue = map['labelNameCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelNameConditionModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
