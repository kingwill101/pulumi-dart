// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'append_variable_activity.dart';
import 'expression.dart';
import 'user_property.dart';

/// This activity is used for iterating over a collection and execute given activities.
class ForEachActivity {
  /// List of activities to execute .
  final pulumi.Input<List<AppendVariableActivity>> activities;
  /// Batch count to be used for controlling the number of parallel execution (when isSequential is set to false).
  final pulumi.Input<int>? batchCount;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Should the loop be executed in sequence or in parallel (max 50)
  final pulumi.Input<bool>? isSequential;
  /// Collection to iterate.
  final pulumi.Input<Expression> items;
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
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [ForEachActivity].
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
  ForEachActivity({
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
      'activities': pulumi.Input.mapInputValue<List<AppendVariableActivity>, List<Map<String, dynamic>>>(activities, (value) => pulumi.Input.encodeList<AppendVariableActivity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'batchCount': ?batchCount,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'isSequential': ?isSequential,
      'items': pulumi.Input.mapInputValue<Expression, Map<String, dynamic>>(items, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ForEachActivity.fromMap(Map<String, dynamic> map) {
    return ForEachActivity(
      activities: (pulumi.Input.decodeList<AppendVariableActivity>(map['activities'], (value) => AppendVariableActivity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      batchCount: map['batchCount'] == null ? null : (map['batchCount'] as int).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isSequential: map['isSequential'] == null ? null : (map['isSequential'] as bool).input(),
      items: (Expression.fromMap((map['items'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

