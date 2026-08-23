// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'user_property_response.dart';

/// This activity will fail within its own scope and output a custom error message and error code. The error message and code can provided either as a string literal or as an expression that can be evaluated to a string at runtime. The activity scope can be the whole pipeline or a control activity (e.g. foreach, switch, until), if the fail activity is contained in it.
class FailActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// The error code that categorizes the error type of the Fail activity. It can be dynamic content that's evaluated to a non empty/blank string at runtime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> errorCode;
  /// The error message that surfaced in the Fail activity. It can be dynamic content that's evaluated to a non empty/blank string at runtime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> message;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'Fail'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [FailActivityResponse].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [errorCode] The error code that categorizes the error type of the Fail activity. It can be dynamic content that's evaluated to a non empty/blank string at runtime. Type: string (or Expression with resultType string).
  /// [message] The error message that surfaced in the Fail activity. It can be dynamic content that's evaluated to a non empty/blank string at runtime. Type: string (or Expression with resultType string).
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  const FailActivityResponse({
    this.dependsOn,
    this.description,
    required this.errorCode,
    required this.message,
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
      'errorCode': errorCode,
      'message': message,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FailActivityResponse.fromMap(Map<String, dynamic> map) {
    return FailActivityResponse(
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorCode: pulumi.Input.fromValue(map['errorCode']),
      message: pulumi.Input.fromValue(map['message']),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
