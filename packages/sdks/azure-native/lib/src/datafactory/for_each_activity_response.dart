// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'append_variable_activity_response.dart';
import 'expression_response.dart';
import 'user_property_response.dart';

/// This activity is used for iterating over a collection and execute given activities.
class ForEachActivityResponse {
  /// List of activities to execute .
  final List<AppendVariableActivityResponse> activities;
  /// Batch count to be used for controlling the number of parallel execution (when isSequential is set to false).
  final int? batchCount;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Should the loop be executed in sequence or in parallel (max 50)
  final bool? isSequential;
  /// Collection to iterate.
  final ExpressionResponse items;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'ForEach'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

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
  ForEachActivityResponse({
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
      'activities': pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(activities, (value) => value.toMap()),
      'batchCount': ?batchCount,
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'isSequential': ?isSequential,
      'items': items.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory ForEachActivityResponse.fromMap(Map<String, dynamic> map) {
    return ForEachActivityResponse(
      activities: pulumi.Input.decodeList<AppendVariableActivityResponse>(map['activities'], (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>())),
      batchCount: map['batchCount'] == null ? null : map['batchCount'] as int,
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      isSequential: map['isSequential'] == null ? null : map['isSequential'] as bool,
      items: ExpressionResponse.fromMap((map['items'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

