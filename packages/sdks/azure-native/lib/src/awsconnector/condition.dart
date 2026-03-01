// ignore_for_file: unused_element, unnecessary_cast

import 'action_condition_model_properties.dart';
import 'label_name_condition_model_properties.dart';

/// Definition of Condition
class Condition {
  /// A single action condition.
  final ActionConditionModelProperties? actionCondition;
  /// A single label name condition.
  final LabelNameConditionModelProperties? labelNameCondition;

  /// Creates a new [Condition].
  /// [actionCondition] A single action condition.
  /// [labelNameCondition] A single label name condition.
  Condition({
    this.actionCondition,
    this.labelNameCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionCondition': ?actionCondition == null ? null : actionCondition!.toMap(),
      'labelNameCondition': ?labelNameCondition == null ? null : labelNameCondition!.toMap(),
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      actionCondition: map['actionCondition'] == null ? null : ActionConditionModelProperties.fromMap((map['actionCondition'] as Map).cast<String, dynamic>()),
      labelNameCondition: map['labelNameCondition'] == null ? null : LabelNameConditionModelProperties.fromMap((map['labelNameCondition'] as Map).cast<String, dynamic>()),
    );
  }
}

