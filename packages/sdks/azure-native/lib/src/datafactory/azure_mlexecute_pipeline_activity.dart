// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Azure ML Execute Pipeline activity.
class AzureMLExecutePipelineActivity {
  /// Whether to continue execution of other steps in the PipelineRun if a step fails. This information will be passed in the continueOnStepFailure property of the published pipeline execution request. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? continueOnStepFailure;
  /// Dictionary used for changing data path assignments without retraining. Values will be passed in the dataPathAssignments property of the published pipeline execution request. Type: object (or Expression with resultType object).
  final pulumi.Input<dynamic>? dataPathAssignments;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Run history experiment name of the pipeline run. This information will be passed in the ExperimentName property of the published pipeline execution request. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? experimentName;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;
  /// The parent Azure ML Service pipeline run id. This information will be passed in the ParentRunId property of the published pipeline execution request. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? mlParentRunId;
  /// ID of the published Azure ML pipeline endpoint. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? mlPipelineEndpointId;
  /// ID of the published Azure ML pipeline. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? mlPipelineId;
  /// Key,Value pairs to be passed to the published Azure ML pipeline endpoint. Keys must match the names of pipeline parameters defined in the published pipeline. Values will be passed in the ParameterAssignments property of the published pipeline execution request. Type: object with key value pairs (or Expression with resultType object).
  final pulumi.Input<dynamic>? mlPipelineParameters;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'AzureMLExecutePipeline'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;
  /// Version of the published Azure ML pipeline endpoint. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? version;

  /// Creates a new [AzureMLExecutePipelineActivity].
  /// [continueOnStepFailure] Whether to continue execution of other steps in the PipelineRun if a step fails. This information will be passed in the continueOnStepFailure property of the published pipeline execution request. Type: boolean (or Expression with resultType boolean).
  /// [dataPathAssignments] Dictionary used for changing data path assignments without retraining. Values will be passed in the dataPathAssignments property of the published pipeline execution request. Type: object (or Expression with resultType object).
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [experimentName] Run history experiment name of the pipeline run. This information will be passed in the ExperimentName property of the published pipeline execution request. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Linked service reference.
  /// [mlParentRunId] The parent Azure ML Service pipeline run id. This information will be passed in the ParentRunId property of the published pipeline execution request. Type: string (or Expression with resultType string).
  /// [mlPipelineEndpointId] ID of the published Azure ML pipeline endpoint. Type: string (or Expression with resultType string).
  /// [mlPipelineId] ID of the published Azure ML pipeline. Type: string (or Expression with resultType string).
  /// [mlPipelineParameters] Key,Value pairs to be passed to the published Azure ML pipeline endpoint. Keys must match the names of pipeline parameters defined in the published pipeline. Values will be passed in the ParameterAssignments property of the published pipeline execution request. Type: object with key value pairs (or Expression with resultType object).
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  /// [version] Version of the published Azure ML pipeline endpoint. Type: string (or Expression with resultType string).
  AzureMLExecutePipelineActivity({
    this.continueOnStepFailure,
    this.dataPathAssignments,
    this.dependsOn,
    this.description,
    this.experimentName,
    this.linkedServiceName,
    this.mlParentRunId,
    this.mlPipelineEndpointId,
    this.mlPipelineId,
    this.mlPipelineParameters,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    required this.type,
    this.userProperties,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnStepFailure': ?continueOnStepFailure,
      'dataPathAssignments': ?dataPathAssignments,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'experimentName': ?experimentName,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'mlParentRunId': ?mlParentRunId,
      'mlPipelineEndpointId': ?mlPipelineEndpointId,
      'mlPipelineId': ?mlPipelineId,
      'mlPipelineParameters': ?mlPipelineParameters,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory AzureMLExecutePipelineActivity.fromMap(Map<String, dynamic> map) {
    return AzureMLExecutePipelineActivity(
      continueOnStepFailure: map['continueOnStepFailure'] == null ? null : (map['continueOnStepFailure']).input(),
      dataPathAssignments: map['dataPathAssignments'] == null ? null : (map['dataPathAssignments']).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      experimentName: map['experimentName'] == null ? null : (map['experimentName']).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      mlParentRunId: map['mlParentRunId'] == null ? null : (map['mlParentRunId']).input(),
      mlPipelineEndpointId: map['mlPipelineEndpointId'] == null ? null : (map['mlPipelineEndpointId']).input(),
      mlPipelineId: map['mlPipelineId'] == null ? null : (map['mlPipelineId']).input(),
      mlPipelineParameters: map['mlPipelineParameters'] == null ? null : (map['mlPipelineParameters']).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: map['version'] == null ? null : (map['version']).input(),
    );
  }
}

