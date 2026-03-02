// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'append_variable_activity_response.dart';
import 'expression_response.dart';
import 'user_property_response.dart';

/// This activity evaluates a boolean expression and executes either the activities under the ifTrueActivities property or the ifFalseActivities property depending on the result of the expression.
class IfConditionActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// An expression that would evaluate to Boolean. This is used to determine the block of activities (ifTrueActivities or ifFalseActivities) that will be executed.
  final pulumi.Input<ExpressionResponse> expression;
  /// List of activities to execute if expression is evaluated to false. This is an optional property and if not provided, the activity will exit without any action.
  final pulumi.Input<List<AppendVariableActivityResponse>>? ifFalseActivities;
  /// List of activities to execute if expression is evaluated to true. This is an optional property and if not provided, the activity will exit without any action.
  final pulumi.Input<List<AppendVariableActivityResponse>>? ifTrueActivities;
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
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [IfConditionActivityResponse].
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
  IfConditionActivityResponse({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'expression': pulumi.Input.mapInputValue<ExpressionResponse, Map<String, dynamic>>(expression, (value) => value.toMap()),
      'ifFalseActivities': ?pulumi.Input.mapOptionalInputValue<List<AppendVariableActivityResponse>, List<Map<String, dynamic>>>(ifFalseActivities, (value) => pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifTrueActivities': ?pulumi.Input.mapOptionalInputValue<List<AppendVariableActivityResponse>, List<Map<String, dynamic>>>(ifTrueActivities, (value) => pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IfConditionActivityResponse.fromMap(Map<String, dynamic> map) {
    return IfConditionActivityResponse(
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expression: (ExpressionResponse.fromMap((map['expression'] as Map).cast<String, dynamic>())).input(),
      ifFalseActivities: map['ifFalseActivities'] == null ? null : (pulumi.Input.decodeList<AppendVariableActivityResponse>(map['ifFalseActivities'], (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ifTrueActivities: map['ifTrueActivities'] == null ? null : (pulumi.Input.decodeList<AppendVariableActivityResponse>(map['ifTrueActivities'], (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

