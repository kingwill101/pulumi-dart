// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'append_variable_activity_response.dart';
import 'expression_response.dart';
import 'user_property_response.dart';

/// This activity executes inner activities until the specified boolean expression results to true or timeout is reached, whichever is earlier.
class UntilActivityResponse {
  /// List of activities to execute.
  final pulumi.Input<List<AppendVariableActivityResponse>> activities;

  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// An expression that would evaluate to Boolean. The loop will continue until this expression evaluates to true
  final pulumi.Input<ExpressionResponse> expression;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// Specifies the timeout for the activity to run. If there is no value specified, it takes the value of TimeSpan.FromDays(7) which is 1 week as default. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? timeout;

  /// Type of activity.
  /// Expected value is 'Until'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [UntilActivityResponse].
  /// [activities] List of activities to execute.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [expression] An expression that would evaluate to Boolean. The loop will continue until this expression evaluates to true
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [timeout] Specifies the timeout for the activity to run. If there is no value specified, it takes the value of TimeSpan.FromDays(7) which is 1 week as default. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  UntilActivityResponse({
    required this.activities,
    this.dependsOn,
    this.description,
    required this.expression,
    required this.name,
    this.onInactiveMarkAs,
    this.state,
    this.timeout,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities':
          pulumi.Input.mapInputValue<
            List<AppendVariableActivityResponse>,
            List<Map<String, dynamic>>
          >(
            activities,
            (value) =>
                pulumi.Input.encodeList<
                  AppendVariableActivityResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dependsOn':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActivityDependencyResponse>,
            List<Map<String, dynamic>>
          >(
            dependsOn,
            (value) =>
                pulumi.Input.encodeList<
                  ActivityDependencyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'expression':
          pulumi.Input.mapInputValue<ExpressionResponse, Map<String, dynamic>>(
            expression,
            (value) => value.toMap(),
          ),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'timeout': ?timeout,
      'type': type,
      'userProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserPropertyResponse>,
            List<Map<String, dynamic>>
          >(
            userProperties,
            (value) =>
                pulumi.Input.encodeList<
                  UserPropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory UntilActivityResponse.fromMap(Map<String, dynamic> map) {
    return UntilActivityResponse(
      activities: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AppendVariableActivityResponse>(
          map['activities']!,
          (value) => AppendVariableActivityResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActivityDependencyResponse>(
            guardedValue,
            (value) => ActivityDependencyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expression: pulumi.Input.fromValue(
        ExpressionResponse.fromMap(
          (map['expression']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() {
        final guardedValue = map['onInactiveMarkAs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() {
        final guardedValue = map['userProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserPropertyResponse>(
            guardedValue,
            (value) => UserPropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
