// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Azure ML Execute Pipeline activity.
class AzureMLExecutePipelineActivity {
  /// Whether to continue execution of other steps in the PipelineRun if a step fails. This information will be passed in the continueOnStepFailure property of the published pipeline execution request. Type: boolean (or Expression with resultType boolean).
  final dynamic continueOnStepFailure;
  /// Dictionary used for changing data path assignments without retraining. Values will be passed in the dataPathAssignments property of the published pipeline execution request. Type: object (or Expression with resultType object).
  final dynamic dataPathAssignments;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Run history experiment name of the pipeline run. This information will be passed in the ExperimentName property of the published pipeline execution request. Type: string (or Expression with resultType string).
  final dynamic experimentName;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// The parent Azure ML Service pipeline run id. This information will be passed in the ParentRunId property of the published pipeline execution request. Type: string (or Expression with resultType string).
  final dynamic mlParentRunId;
  /// ID of the published Azure ML pipeline endpoint. Type: string (or Expression with resultType string).
  final dynamic mlPipelineEndpointId;
  /// ID of the published Azure ML pipeline. Type: string (or Expression with resultType string).
  final dynamic mlPipelineId;
  /// Key,Value pairs to be passed to the published Azure ML pipeline endpoint. Keys must match the names of pipeline parameters defined in the published pipeline. Values will be passed in the ParameterAssignments property of the published pipeline execution request. Type: object with key value pairs (or Expression with resultType object).
  final dynamic mlPipelineParameters;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'AzureMLExecutePipeline'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;
  /// Version of the published Azure ML pipeline endpoint. Type: string (or Expression with resultType string).
  final dynamic version;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'experimentName': ?experimentName,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'mlParentRunId': ?mlParentRunId,
      'mlPipelineEndpointId': ?mlPipelineEndpointId,
      'mlPipelineId': ?mlPipelineId,
      'mlPipelineParameters': ?mlPipelineParameters,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory AzureMLExecutePipelineActivity.fromMap(Map<String, dynamic> map) {
    return AzureMLExecutePipelineActivity(
      continueOnStepFailure: map['continueOnStepFailure'] == null ? null : map['continueOnStepFailure'],
      dataPathAssignments: map['dataPathAssignments'] == null ? null : map['dataPathAssignments'],
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      experimentName: map['experimentName'] == null ? null : map['experimentName'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      mlParentRunId: map['mlParentRunId'] == null ? null : map['mlParentRunId'],
      mlPipelineEndpointId: map['mlPipelineEndpointId'] == null ? null : map['mlPipelineEndpointId'],
      mlPipelineId: map['mlPipelineId'] == null ? null : map['mlPipelineId'],
      mlPipelineParameters: map['mlPipelineParameters'] == null ? null : map['mlPipelineParameters'],
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'],
    );
  }
}

