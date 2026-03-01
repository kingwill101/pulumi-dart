// ignore_for_file: unused_element, unnecessary_cast

import 'action_condition_model_properties_response.dart';
import 'label_name_condition_model_properties_response.dart';

/// Definition of Condition
class ConditionResponse {
  /// A single action condition.
  final ActionConditionModelPropertiesResponse? actionCondition;
  /// A single label name condition.
  final LabelNameConditionModelPropertiesResponse? labelNameCondition;

  /// Creates a new [ConditionResponse].
  /// [actionCondition] A single action condition.
  /// [labelNameCondition] A single label name condition.
  ConditionResponse({
    this.actionCondition,
    this.labelNameCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionCondition': ?actionCondition == null ? null : actionCondition!.toMap(),
      'labelNameCondition': ?labelNameCondition == null ? null : labelNameCondition!.toMap(),
    };
  }

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      actionCondition: map['actionCondition'] == null ? null : ActionConditionModelPropertiesResponse.fromMap((map['actionCondition'] as Map).cast<String, dynamic>()),
      labelNameCondition: map['labelNameCondition'] == null ? null : LabelNameConditionModelPropertiesResponse.fromMap((map['labelNameCondition'] as Map).cast<String, dynamic>()),
    );
  }
}

