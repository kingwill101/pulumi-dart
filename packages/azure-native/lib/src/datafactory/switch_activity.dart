// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'append_variable_activity.dart';
import 'expression.dart';
import 'switch_case.dart';
import 'user_property.dart';

/// This activity evaluates an expression and executes activities under the cases property that correspond to the expression evaluation expected in the equals property.
class SwitchActivity {
  /// List of cases that correspond to expected values of the 'on' property. This is an optional property and if not provided, the activity will execute activities provided in defaultActivities.
  final List<SwitchCase>? cases;
  /// List of activities to execute if no case condition is satisfied. This is an optional property and if not provided, the activity will exit without any action.
  final List<AppendVariableActivity>? defaultActivities;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Activity name.
  final String name;
  /// An expression that would evaluate to a string or integer. This is used to determine the block of activities in cases that will be executed.
  final Expression on;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'Switch'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [SwitchActivity].
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
  SwitchActivity({
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
      'cases': ?cases == null ? null : pulumi.Input.encodeList<SwitchCase, Map<String, dynamic>>(cases!, (value) => value.toMap()),
      'defaultActivities': ?defaultActivities == null ? null : pulumi.Input.encodeList<AppendVariableActivity, Map<String, dynamic>>(defaultActivities!, (value) => value.toMap()),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'name': name,
      'on': on.toMap(),
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory SwitchActivity.fromMap(Map<String, dynamic> map) {
    return SwitchActivity(
      cases: map['cases'] == null ? null : pulumi.Input.decodeList<SwitchCase>(map['cases'], (value) => SwitchCase.fromMap((value as Map).cast<String, dynamic>())),
      defaultActivities: map['defaultActivities'] == null ? null : pulumi.Input.decodeList<AppendVariableActivity>(map['defaultActivities'], (value) => AppendVariableActivity.fromMap((value as Map).cast<String, dynamic>())),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      on: Expression.fromMap((map['on'] as Map).cast<String, dynamic>()),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

