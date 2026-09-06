// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'execute_pipeline_activity_policy_response.dart';
import 'pipeline_reference_response.dart';
import 'user_property_response.dart';

/// Execute pipeline activity.
class ExecutePipelineActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String?>? onInactiveMarkAs;
  /// Pipeline parameters.
  final pulumi.Input<dynamic>? parameters;
  /// Pipeline reference.
  final pulumi.Input<PipelineReferenceResponse> pipeline;
  /// Execute pipeline activity policy.
  final pulumi.Input<ExecutePipelineActivityPolicyResponse?>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String?>? state;
  /// Type of activity.
  /// Expected value is 'ExecutePipeline'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>?>? userProperties;
  /// Defines whether activity execution will wait for the dependent pipeline execution to finish. Default is false.
  final pulumi.Input<bool?>? waitOnCompletion;

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
  const ExecutePipelineActivityResponse({
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
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      pipeline: pulumi.Input.fromValue(PipelineReferenceResponse.fromMap((map['pipeline']! as Map).cast<String, dynamic>())),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutePipelineActivityPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitOnCompletion: (() { final guardedValue = map['waitOnCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
