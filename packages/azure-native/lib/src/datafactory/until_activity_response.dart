// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'append_variable_activity_response.dart';
import 'expression_response.dart';
import 'user_property_response.dart';

/// This activity executes inner activities until the specified boolean expression results to true or timeout is reached, whichever is earlier.
class UntilActivityResponse {
  /// List of activities to execute.
  final List<AppendVariableActivityResponse> activities;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// An expression that would evaluate to Boolean. The loop will continue until this expression evaluates to true
  final ExpressionResponse expression;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Specifies the timeout for the activity to run. If there is no value specified, it takes the value of TimeSpan.FromDays(7) which is 1 week as default. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic timeout;
  /// Type of activity.
  /// Expected value is 'Until'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

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
      'activities': pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(activities, (value) => value.toMap()),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'expression': expression.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'timeout': ?timeout,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory UntilActivityResponse.fromMap(Map<String, dynamic> map) {
    return UntilActivityResponse(
      activities: pulumi.Input.decodeList<AppendVariableActivityResponse>(map['activities'], (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>())),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      expression: ExpressionResponse.fromMap((map['expression'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'],
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

