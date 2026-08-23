// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'append_variable_activity_response.dart';
import 'expression_response.dart';
import 'user_property_response.dart';

/// This activity is used for iterating over a collection and execute given activities.
class ForEachActivityResponse {
  /// List of activities to execute .
  final pulumi.Input<List<AppendVariableActivityResponse>> activities;
  /// Batch count to be used for controlling the number of parallel execution (when isSequential is set to false).
  final pulumi.Input<int>? batchCount;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Should the loop be executed in sequence or in parallel (max 50)
  final pulumi.Input<bool>? isSequential;
  /// Collection to iterate.
  final pulumi.Input<ExpressionResponse> items;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'ForEach'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [ForEachActivityResponse].
  /// [activities] List of activities to execute .
  /// [batchCount] Batch count to be used for controlling the number of parallel execution (when isSequential is set to false).
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [isSequential] Should the loop be executed in sequence or in parallel (max 50)
  /// [items] Collection to iterate.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  const ForEachActivityResponse({
    required this.activities,
    this.batchCount,
    this.dependsOn,
    this.description,
    this.isSequential,
    required this.items,
    required this.name,
    this.onInactiveMarkAs,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities': pulumi.Input.mapInputValue<List<AppendVariableActivityResponse>, List<Map<String, dynamic>>>(activities, (value) => pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'batchCount': ?batchCount,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'isSequential': ?isSequential,
      'items': pulumi.Input.mapInputValue<ExpressionResponse, Map<String, dynamic>>(items, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ForEachActivityResponse.fromMap(Map<String, dynamic> map) {
    return ForEachActivityResponse(
      activities: pulumi.Input.fromValue(pulumi.Input.decodeList<AppendVariableActivityResponse>(map['activities']!, (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>()))),
      batchCount: (() { final guardedValue = map['batchCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSequential: (() { final guardedValue = map['isSequential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      items: pulumi.Input.fromValue(ExpressionResponse.fromMap((map['items']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
