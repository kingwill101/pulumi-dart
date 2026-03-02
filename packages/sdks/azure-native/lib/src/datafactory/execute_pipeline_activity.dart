// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'execute_pipeline_activity_policy.dart';
import 'pipeline_reference.dart';
import 'user_property.dart';

/// Execute pipeline activity.
class ExecutePipelineActivity {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Pipeline parameters.
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// Pipeline reference.
  final pulumi.Input<PipelineReference> pipeline;
  /// Execute pipeline activity policy.
  final pulumi.Input<ExecutePipelineActivityPolicy>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'ExecutePipeline'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;
  /// Defines whether activity execution will wait for the dependent pipeline execution to finish. Default is false.
  final pulumi.Input<bool>? waitOnCompletion;

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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'pipeline': pulumi.Input.mapInputValue<PipelineReference, Map<String, dynamic>>(pipeline, (value) => value.toMap()),
      'policy': ?pulumi.Input.mapOptionalInputValue<ExecutePipelineActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitOnCompletion': ?waitOnCompletion,
    };
  }

  factory ExecutePipelineActivity.fromMap(Map<String, dynamic> map) {
    return ExecutePipelineActivity(
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn']!, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, dynamic>()).input(),
      pipeline: (PipelineReference.fromMap((map['pipeline'] as Map).cast<String, dynamic>())).input(),
      policy: map['policy'] == null ? null : (ExecutePipelineActivityPolicy.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties']!, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      waitOnCompletion: map['waitOnCompletion'] == null ? null : (map['waitOnCompletion']! as bool).input(),
    );
  }
}

