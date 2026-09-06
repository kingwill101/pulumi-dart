// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'user_property.dart';

/// Base class for all control activities like IfCondition, ForEach , Until.
class ControlActivity {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<dynamic>? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<dynamic>? state;
  /// Type of activity.
  /// Expected value is 'Container'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>?>? userProperties;

  /// Creates a new [ControlActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  const ControlActivity({
    this.dependsOn,
    this.description,
    required this.name,
    this.onInactiveMarkAs,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ControlActivity.fromMap(Map<String, dynamic> map) {
    return ControlActivity(
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependency>(guardedValue, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProperty>(guardedValue, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
