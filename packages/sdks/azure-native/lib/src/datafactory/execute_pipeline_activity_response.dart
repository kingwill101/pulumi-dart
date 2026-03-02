// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'execute_pipeline_activity_policy_response.dart';
import 'pipeline_reference_response.dart';
import 'user_property_response.dart';

/// Execute pipeline activity.
class ExecutePipelineActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Pipeline parameters.
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// Pipeline reference.
  final pulumi.Input<PipelineReferenceResponse> pipeline;
  /// Execute pipeline activity policy.
  final pulumi.Input<ExecutePipelineActivityPolicyResponse>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'ExecutePipeline'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;
  /// Defines whether activity execution will wait for the dependent pipeline execution to finish. Default is false.
  final pulumi.Input<bool>? waitOnCompletion;

  /// Creates a new [ExecutePipelineActivityResponse].
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
  ExecutePipelineActivityResponse({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters,
      'pipeline': pulumi.Input.mapInputValue<PipelineReferenceResponse, Map<String, dynamic>>(pipeline, (value) => value.toMap()),
      'policy': ?pulumi.Input.mapOptionalInputValue<ExecutePipelineActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitOnCompletion': ?waitOnCompletion,
    };
  }

  factory ExecutePipelineActivityResponse.fromMap(Map<String, dynamic> map) {
    return ExecutePipelineActivityResponse(
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn']!, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, dynamic>()).input(),
      pipeline: (PipelineReferenceResponse.fromMap((map['pipeline'] as Map).cast<String, dynamic>())).input(),
      policy: map['policy'] == null ? null : (ExecutePipelineActivityPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties']!, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      waitOnCompletion: map['waitOnCompletion'] == null ? null : (map['waitOnCompletion']! as bool).input(),
    );
  }
}

