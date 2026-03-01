// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'execute_pipeline_activity_policy.dart';
import 'pipeline_reference.dart';
import 'user_property.dart';

/// Execute pipeline activity.
class ExecutePipelineActivity {
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Pipeline parameters.
  final Map<String, dynamic>? parameters;
  /// Pipeline reference.
  final PipelineReference pipeline;
  /// Execute pipeline activity policy.
  final ExecutePipelineActivityPolicy? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'ExecutePipeline'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;
  /// Defines whether activity execution will wait for the dependent pipeline execution to finish. Default is false.
  final bool? waitOnCompletion;

  /// Creates a new [ExecutePipelineActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [parameters] Pipeline parameters.
  /// [pipeline] Pipeline reference.
  /// [policy] Execute pipeline activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  /// [waitOnCompletion] Defines whether activity execution will wait for the dependent pipeline execution to finish. Default is false.
  ExecutePipelineActivity({
    this.dependsOn,
    this.description,
    required this.name,
    this.onInactiveMarkAs,
    this.parameters,
    required this.pipeline,
    this.policy,
    this.state,
    required this.type,
    this.userProperties,
    this.waitOnCompletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'pipeline': pipeline.toMap(),
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
      'waitOnCompletion': ?waitOnCompletion,
    };
  }

  factory ExecutePipelineActivity.fromMap(Map<String, dynamic> map) {
    return ExecutePipelineActivity(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, dynamic>(),
      pipeline: PipelineReference.fromMap((map['pipeline'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null ? null : ExecutePipelineActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
      waitOnCompletion: map['waitOnCompletion'] == null ? null : map['waitOnCompletion'] as bool,
    );
  }
}

