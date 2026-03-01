// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'append_variable_activity_response.dart';
import 'expression_response.dart';
import 'user_property_response.dart';

/// This activity evaluates a boolean expression and executes either the activities under the ifTrueActivities property or the ifFalseActivities property depending on the result of the expression.
class IfConditionActivityResponse {
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// An expression that would evaluate to Boolean. This is used to determine the block of activities (ifTrueActivities or ifFalseActivities) that will be executed.
  final ExpressionResponse expression;
  /// List of activities to execute if expression is evaluated to false. This is an optional property and if not provided, the activity will exit without any action.
  final List<AppendVariableActivityResponse>? ifFalseActivities;
  /// List of activities to execute if expression is evaluated to true. This is an optional property and if not provided, the activity will exit without any action.
  final List<AppendVariableActivityResponse>? ifTrueActivities;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'IfCondition'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'expression': expression.toMap(),
      'ifFalseActivities': ?ifFalseActivities == null ? null : pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(ifFalseActivities!, (value) => value.toMap()),
      'ifTrueActivities': ?ifTrueActivities == null ? null : pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(ifTrueActivities!, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory IfConditionActivityResponse.fromMap(Map<String, dynamic> map) {
    return IfConditionActivityResponse(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      expression: ExpressionResponse.fromMap((map['expression'] as Map).cast<String, dynamic>()),
      ifFalseActivities: map['ifFalseActivities'] == null ? null : pulumi.Input.decodeList<AppendVariableActivityResponse>(map['ifFalseActivities'], (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>())),
      ifTrueActivities: map['ifTrueActivities'] == null ? null : pulumi.Input.decodeList<AppendVariableActivityResponse>(map['ifTrueActivities'], (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

