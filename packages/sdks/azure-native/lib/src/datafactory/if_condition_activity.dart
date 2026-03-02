// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'append_variable_activity.dart';
import 'expression.dart';
import 'user_property.dart';

/// This activity evaluates a boolean expression and executes either the activities under the ifTrueActivities property or the ifFalseActivities property depending on the result of the expression.
class IfConditionActivity {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// An expression that would evaluate to Boolean. This is used to determine the block of activities (ifTrueActivities or ifFalseActivities) that will be executed.
  final pulumi.Input<Expression> expression;
  /// List of activities to execute if expression is evaluated to false. This is an optional property and if not provided, the activity will exit without any action.
  final pulumi.Input<List<AppendVariableActivity>>? ifFalseActivities;
  /// List of activities to execute if expression is evaluated to true. This is an optional property and if not provided, the activity will exit without any action.
  final pulumi.Input<List<AppendVariableActivity>>? ifTrueActivities;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'IfCondition'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [IfConditionActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [expression] An expression that would evaluate to Boolean. This is used to determine the block of activities (ifTrueActivities or ifFalseActivities) that will be executed.
  /// [ifFalseActivities] List of activities to execute if expression is evaluated to false. This is an optional property and if not provided, the activity will exit without any action.
  /// [ifTrueActivities] List of activities to execute if expression is evaluated to true. This is an optional property and if not provided, the activity will exit without any action.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  IfConditionActivity({
    this.dependsOn,
    this.description,
    required this.expression,
    this.ifFalseActivities,
    this.ifTrueActivities,
    required this.name,
    this.onInactiveMarkAs,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'expression': pulumi.Input.mapInputValue<Expression, Map<String, dynamic>>(expression, (value) => value.toMap()),
      'ifFalseActivities': ?pulumi.Input.mapOptionalInputValue<List<AppendVariableActivity>, List<Map<String, dynamic>>>(ifFalseActivities, (value) => pulumi.Input.encodeList<AppendVariableActivity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifTrueActivities': ?pulumi.Input.mapOptionalInputValue<List<AppendVariableActivity>, List<Map<String, dynamic>>>(ifTrueActivities, (value) => pulumi.Input.encodeList<AppendVariableActivity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IfConditionActivity.fromMap(Map<String, dynamic> map) {
    return IfConditionActivity(
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expression: (Expression.fromMap((map['expression'] as Map).cast<String, dynamic>())).input(),
      ifFalseActivities: map['ifFalseActivities'] == null ? null : (pulumi.Input.decodeList<AppendVariableActivity>(map['ifFalseActivities'], (value) => AppendVariableActivity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ifTrueActivities: map['ifTrueActivities'] == null ? null : (pulumi.Input.decodeList<AppendVariableActivity>(map['ifTrueActivities'], (value) => AppendVariableActivity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

