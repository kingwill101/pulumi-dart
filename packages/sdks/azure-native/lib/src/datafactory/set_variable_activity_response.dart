// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'secure_input_output_policy_response.dart';
import 'user_property_response.dart';

/// Set value for a Variable.
class SetVariableActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<SecureInputOutputPolicyResponse>? policy;
  /// If set to true, it sets the pipeline run return value.
  final pulumi.Input<bool>? setSystemVariable;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'SetVariable'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;
  /// Value to be set. Could be a static value or Expression.
  final pulumi.Input<dynamic>? value;
  /// Name of the variable whose value needs to be set.
  final pulumi.Input<String>? variableName;

  /// Creates a new [SetVariableActivityResponse].
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
  SetVariableActivityResponse({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<SecureInputOutputPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'setSystemVariable': ?setSystemVariable,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': ?value,
      'variableName': ?variableName,
    };
  }

  factory SetVariableActivityResponse.fromMap(Map<String, dynamic> map) {
    return SetVariableActivityResponse(
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn']!, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (SecureInputOutputPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      setSystemVariable: map['setSystemVariable'] == null ? null : (map['setSystemVariable']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties']!, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      value: map['value'] == null ? null : (map['value']!).input(),
      variableName: map['variableName'] == null ? null : (map['variableName']! as String).input(),
    );
  }
}

