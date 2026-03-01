// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'secure_input_output_policy.dart';
import 'user_property.dart';

/// Set value for a Variable.
class SetVariableActivity {
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final SecureInputOutputPolicy? policy;
  /// If set to true, it sets the pipeline run return value.
  final bool? setSystemVariable;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'SetVariable'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;
  /// Value to be set. Could be a static value or Expression.
  final dynamic value;
  /// Name of the variable whose value needs to be set.
  final String? variableName;

  /// Creates a new [SetVariableActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [setSystemVariable] If set to true, it sets the pipeline run return value.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  /// [value] Value to be set. Could be a static value or Expression.
  /// [variableName] Name of the variable whose value needs to be set.
  SetVariableActivity({
    this.dependsOn,
    this.description,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.setSystemVariable,
    this.state,
    required this.type,
    this.userProperties,
    this.value,
    this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'setSystemVariable': ?setSystemVariable,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
      'value': ?value,
      'variableName': ?variableName,
    };
  }

  factory SetVariableActivity.fromMap(Map<String, dynamic> map) {
    return SetVariableActivity(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : SecureInputOutputPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      setSystemVariable: map['setSystemVariable'] == null ? null : map['setSystemVariable'] as bool,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
      value: map['value'] == null ? null : map['value'],
      variableName: map['variableName'] == null ? null : map['variableName'] as String,
    );
  }
}

