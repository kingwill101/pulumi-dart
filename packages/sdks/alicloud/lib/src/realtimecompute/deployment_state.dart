// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_artifact.dart';
import 'deployment_batch_resource_setting.dart';
import 'deployment_deployment_target.dart';
import 'deployment_local_variable.dart';
import 'deployment_logging.dart';
import 'deployment_streaming_resource_setting.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Content of the deployment job See `artifact` below.
  final pulumi.Input<DeploymentArtifact>? artifact;
  /// Batch job resource settings See `batch_resource_setting` below.
  final pulumi.Input<DeploymentBatchResourceSetting>? batchResourceSetting;
  /// Resource property field representing the primary resource ID
  final pulumi.Input<String>? deploymentId;
  /// Name of the deployment
  final pulumi.Input<String>? deploymentName;
  /// Deployment target See `deployment_target` below.
  final pulumi.Input<DeploymentDeploymentTarget>? deploymentTarget;
  /// Description
  final pulumi.Input<String>? description;
  /// Engine version of the deployment instance
  final pulumi.Input<String>? engineVersion;
  /// Execution mode. Valid values: STREAMING or BATCH.
  final pulumi.Input<String>? executionMode;
  /// Flink configuration
  final pulumi.Input<Map<String, String>>? flinkConf;
  /// Deployment labels
  final pulumi.Input<Map<String, String>>? labels;
  /// Job variables See `local_variables` below.
  final pulumi.Input<List<DeploymentLocalVariable>>? localVariables;
  /// Job log configuration   See `logging` below.
  final pulumi.Input<DeploymentLogging>? logging;
  /// Namespace name
  final pulumi.Input<String>? namespace;
  /// Workspace resource ID
  final pulumi.Input<String>? resourceId;
  /// Resource settings for streaming mode See `streaming_resource_setting` below.
  final pulumi.Input<DeploymentStreamingResourceSetting>? streamingResourceSetting;

  /// Creates a new [DeploymentState].
  /// [artifact] Content of the deployment job See `artifact` below.
  /// [batchResourceSetting] Batch job resource settings See `batch_resource_setting` below.
  /// [deploymentId] Resource property field representing the primary resource ID
  /// [deploymentName] Name of the deployment
  /// [deploymentTarget] Deployment target See `deployment_target` below.
  /// [description] Description
  /// [engineVersion] Engine version of the deployment instance
  /// [executionMode] Execution mode. Valid values: STREAMING or BATCH.
  /// [flinkConf] Flink configuration
  /// [labels] Deployment labels
  /// [localVariables] Job variables See `local_variables` below.
  /// [logging] Job log configuration   See `logging` below.
  /// [namespace] Namespace name
  /// [resourceId] Workspace resource ID
  /// [streamingResourceSetting] Resource settings for streaming mode See `streaming_resource_setting` below.
  DeploymentState({
    pulumi.Output<DeploymentArtifact>? artifact,
    pulumi.Output<DeploymentBatchResourceSetting>? batchResourceSetting,
    pulumi.Output<String>? deploymentId,
    pulumi.Output<String>? deploymentName,
    pulumi.Output<DeploymentDeploymentTarget>? deploymentTarget,
    pulumi.Output<String>? description,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? executionMode,
    pulumi.Output<Map<String, String>>? flinkConf,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<DeploymentLocalVariable>>? localVariables,
    pulumi.Output<DeploymentLogging>? logging,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? resourceId,
    pulumi.Output<DeploymentStreamingResourceSetting>? streamingResourceSetting,
  }) :
      artifact = pulumi.Input.asOptionalInput<DeploymentArtifact>(artifact),
      batchResourceSetting = pulumi.Input.asOptionalInput<DeploymentBatchResourceSetting>(batchResourceSetting),
      deploymentId = pulumi.Input.asOptionalInput<String>(deploymentId),
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      deploymentTarget = pulumi.Input.asOptionalInput<DeploymentDeploymentTarget>(deploymentTarget),
      description = pulumi.Input.asOptionalInput<String>(description),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      executionMode = pulumi.Input.asOptionalInput<String>(executionMode),
      flinkConf = pulumi.Input.asOptionalInput<Map<String, String>>(flinkConf),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      localVariables = pulumi.Input.asOptionalInput<List<DeploymentLocalVariable>>(localVariables),
      logging = pulumi.Input.asOptionalInput<DeploymentLogging>(logging),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      streamingResourceSetting = pulumi.Input.asOptionalInput<DeploymentStreamingResourceSetting>(streamingResourceSetting);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifact': ?pulumi.Input.mapOptionalInputValue<DeploymentArtifact, Map<String, dynamic>>(artifact, (value) => value.toMap()),
      'batchResourceSetting': ?pulumi.Input.mapOptionalInputValue<DeploymentBatchResourceSetting, Map<String, dynamic>>(batchResourceSetting, (value) => value.toMap()),
      'deploymentId': ?deploymentId,
      'deploymentName': ?deploymentName,
      'deploymentTarget': ?pulumi.Input.mapOptionalInputValue<DeploymentDeploymentTarget, Map<String, dynamic>>(deploymentTarget, (value) => value.toMap()),
      'description': ?description,
      'engineVersion': ?engineVersion,
      'executionMode': ?executionMode,
      'flinkConf': ?flinkConf,
      'labels': ?labels,
      'localVariables': ?pulumi.Input.mapOptionalInputValue<List<DeploymentLocalVariable>, List<Map<String, dynamic>>>(localVariables, (value) => pulumi.Input.encodeList<DeploymentLocalVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logging': ?pulumi.Input.mapOptionalInputValue<DeploymentLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'namespace': ?namespace,
      'resourceId': ?resourceId,
      'streamingResourceSetting': ?pulumi.Input.mapOptionalInputValue<DeploymentStreamingResourceSetting, Map<String, dynamic>>(streamingResourceSetting, (value) => value.toMap()),
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      artifact: map['artifact'] == null ? null : pulumi.Output.create<DeploymentArtifact>(DeploymentArtifact.fromMap((map['artifact'] as Map).cast<String, dynamic>())),
      batchResourceSetting: map['batchResourceSetting'] == null ? null : pulumi.Output.create<DeploymentBatchResourceSetting>(DeploymentBatchResourceSetting.fromMap((map['batchResourceSetting'] as Map).cast<String, dynamic>())),
      deploymentId: map['deploymentId'] == null ? null : pulumi.Output.create<String>(map['deploymentId'] as String),
      deploymentName: map['deploymentName'] == null ? null : pulumi.Output.create<String>(map['deploymentName'] as String),
      deploymentTarget: map['deploymentTarget'] == null ? null : pulumi.Output.create<DeploymentDeploymentTarget>(DeploymentDeploymentTarget.fromMap((map['deploymentTarget'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      executionMode: map['executionMode'] == null ? null : pulumi.Output.create<String>(map['executionMode'] as String),
      flinkConf: map['flinkConf'] == null ? null : pulumi.Output.create<Map<String, String>>((map['flinkConf'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      localVariables: map['localVariables'] == null ? null : pulumi.Output.create<List<DeploymentLocalVariable>>(pulumi.Input.decodeList<DeploymentLocalVariable>(map['localVariables'], (value) => DeploymentLocalVariable.fromMap((value as Map).cast<String, dynamic>()))),
      logging: map['logging'] == null ? null : pulumi.Output.create<DeploymentLogging>(DeploymentLogging.fromMap((map['logging'] as Map).cast<String, dynamic>())),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      streamingResourceSetting: map['streamingResourceSetting'] == null ? null : pulumi.Output.create<DeploymentStreamingResourceSetting>(DeploymentStreamingResourceSetting.fromMap((map['streamingResourceSetting'] as Map).cast<String, dynamic>())),
    );
  }
}

