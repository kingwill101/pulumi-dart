// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'user_property.dart';

/// This activity will fail within its own scope and output a custom error message and error code. The error message and code can provided either as a string literal or as an expression that can be evaluated to a string at runtime. The activity scope can be the whole pipeline or a control activity (e.g. foreach, switch, until), if the fail activity is contained in it.
class FailActivity {
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// The error code that categorizes the error type of the Fail activity. It can be dynamic content that's evaluated to a non empty/blank string at runtime. Type: string (or Expression with resultType string).
  final dynamic errorCode;
  /// The error message that surfaced in the Fail activity. It can be dynamic content that's evaluated to a non empty/blank string at runtime. Type: string (or Expression with resultType string).
  final dynamic message;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'Fail'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [FailActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [errorCode] The error code that categorizes the error type of the Fail activity. It can be dynamic content that's evaluated to a non empty/blank string at runtime. Type: string (or Expression with resultType string).
  /// [message] The error message that surfaced in the Fail activity. It can be dynamic content that's evaluated to a non empty/blank string at runtime. Type: string (or Expression with resultType string).
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  FailActivity({
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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'errorCode': errorCode,
      'message': message,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory FailActivity.fromMap(Map<String, dynamic> map) {
    return FailActivity(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      errorCode: map['errorCode'],
      message: map['message'],
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

