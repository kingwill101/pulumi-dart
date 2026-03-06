// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_condition_model_properties.dart';
import 'label_name_condition_model_properties.dart';

/// Definition of Condition
class Condition {
  /// A single action condition.
  final pulumi.Input<ActionConditionModelProperties>? actionCondition;
  /// A single label name condition.
  final pulumi.Input<LabelNameConditionModelProperties>? labelNameCondition;

  /// Creates a new [Condition].
  /// [actionCondition] A single action condition.
  /// [labelNameCondition] A single label name condition.
  const Condition({
    this.actionCondition,
    this.labelNameCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionCondition': ?pulumi.Input.mapOptionalInputValue<ActionConditionModelProperties, Map<String, dynamic>>(actionCondition, (value) => value.toMap()),
      'labelNameCondition': ?pulumi.Input.mapOptionalInputValue<LabelNameConditionModelProperties, Map<String, dynamic>>(labelNameCondition, (value) => value.toMap()),
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      actionCondition: (() { final guardedValue = map['actionCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionConditionModelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelNameCondition: (() { final guardedValue = map['labelNameCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelNameConditionModelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

