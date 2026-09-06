// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'expression_response.dart';
import 'switch_case_response.dart';
import 'user_property_response.dart';

/// This activity evaluates an expression and executes activities under the cases property that correspond to the expression evaluation expected in the equals property.
class SwitchActivityResponse {
  /// List of cases that correspond to expected values of the 'on' property. This is an optional property and if not provided, the activity will execute activities provided in defaultActivities.
  final pulumi.Input<List<SwitchCaseResponse>?>? cases;
  /// List of activities to execute if no case condition is satisfied. This is an optional property and if not provided, the activity will exit without any action.
  final pulumi.Input<List<dynamic>?>? defaultActivities;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Activity name.
  final pulumi.Input<String> name;
  /// An expression that would evaluate to a string or integer. This is used to determine the block of activities in cases that will be executed.
  final pulumi.Input<ExpressionResponse> on;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String?>? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String?>? state;
  /// Type of activity.
  /// Expected value is 'Switch'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>?>? userProperties;

  /// Creates a new [SwitchActivityResponse].
  /// [cases] List of cases that correspond to expected values of the 'on' property. This is an optional property and if not provided, the activity will execute activities provided in defaultActivities.
  /// [defaultActivities] List of activities to execute if no case condition is satisfied. This is an optional property and if not provided, the activity will exit without any action.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [name] Activity name.
  /// [on] An expression that would evaluate to a string or integer. This is used to determine the block of activities in cases that will be executed.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  const SwitchActivityResponse({
    this.cases,
    this.defaultActivities,
    this.dependsOn,
    this.description,
    required this.name,
    required this.on,
    this.onInactiveMarkAs,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': ?pulumi.Input.mapOptionalInputValue<List<SwitchCaseResponse>, List<Map<String, dynamic>>>(cases, (value) => pulumi.Input.encodeList<SwitchCaseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultActivities': ?defaultActivities,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': name,
      'on': pulumi.Input.mapInputValue<ExpressionResponse, Map<String, dynamic>>(on, (value) => value.toMap()),
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SwitchActivityResponse.fromMap(Map<String, dynamic> map) {
    return SwitchActivityResponse(
      cases: (() { final guardedValue = map['cases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SwitchCaseResponse>(guardedValue, (value) => SwitchCaseResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultActivities: (() { final guardedValue = map['defaultActivities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      on: pulumi.Input.fromValue(ExpressionResponse.fromMap((map['on']! as Map).cast<String, dynamic>())),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
