// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_artifact.dart';
import 'deployment_batch_resource_setting.dart';
import 'deployment_deployment_target.dart';
import 'deployment_local_variable.dart';
import 'deployment_logging.dart';
import 'deployment_streaming_resource_setting.dart';

/// {@template pulumi_realtimecompute_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_realtimecompute_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Content of the deployment job See `artifact` below.
  final pulumi.Input<DeploymentArtifact> artifact;
  /// Batch job resource settings See `batch_resource_setting` below.
  final pulumi.Input<DeploymentBatchResourceSetting>? batchResourceSetting;
  /// Name of the deployment
  final pulumi.Input<String> deploymentName;
  /// Deployment target See `deployment_target` below.
  final pulumi.Input<DeploymentDeploymentTarget> deploymentTarget;
  /// Description
  final pulumi.Input<String>? description;
  /// Engine version of the deployment instance
  final pulumi.Input<String>? engineVersion;
  /// Execution mode. Valid values: STREAMING or BATCH.
  final pulumi.Input<String> executionMode;
  /// Flink configuration
  final pulumi.Input<Map<String, String>>? flinkConf;
  /// Deployment labels
  final pulumi.Input<Map<String, String>>? labels;
  /// Job variables See `local_variables` below.
  final pulumi.Input<List<DeploymentLocalVariable>>? localVariables;
  /// Job log configuration   See `logging` below.
  final pulumi.Input<DeploymentLogging>? logging;
  /// Namespace name
  final pulumi.Input<String> namespace;
  /// Workspace resource ID
  final pulumi.Input<String>? resourceId;
  /// Resource settings for streaming mode See `streaming_resource_setting` below.
  final pulumi.Input<DeploymentStreamingResourceSetting>? streamingResourceSetting;

  /// Creates a new [DeploymentArgs].
  /// [artifact] Content of the deployment job See `artifact` below.
  /// [batchResourceSetting] Batch job resource settings See `batch_resource_setting` below.
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
  DeploymentArgs({
    required this.artifact,
    this.batchResourceSetting,
    required this.deploymentName,
    required this.deploymentTarget,
    this.description,
    this.engineVersion,
    required this.executionMode,
    this.flinkConf,
    this.labels,
    this.localVariables,
    this.logging,
    required this.namespace,
    this.resourceId,
    this.streamingResourceSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifact': pulumi.Input.mapInputValue<DeploymentArtifact, Map<String, dynamic>>(artifact, (value) => value.toMap()),
      'batchResourceSetting': ?pulumi.Input.mapOptionalInputValue<DeploymentBatchResourceSetting, Map<String, dynamic>>(batchResourceSetting, (value) => value.toMap()),
      'deploymentName': deploymentName,
      'deploymentTarget': pulumi.Input.mapInputValue<DeploymentDeploymentTarget, Map<String, dynamic>>(deploymentTarget, (value) => value.toMap()),
      'description': ?description,
      'engineVersion': ?engineVersion,
      'executionMode': executionMode,
      'flinkConf': ?flinkConf,
      'labels': ?labels,
      'localVariables': ?pulumi.Input.mapOptionalInputValue<List<DeploymentLocalVariable>, List<Map<String, dynamic>>>(localVariables, (value) => pulumi.Input.encodeList<DeploymentLocalVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logging': ?pulumi.Input.mapOptionalInputValue<DeploymentLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'namespace': namespace,
      'resourceId': ?resourceId,
      'streamingResourceSetting': ?pulumi.Input.mapOptionalInputValue<DeploymentStreamingResourceSetting, Map<String, dynamic>>(streamingResourceSetting, (value) => value.toMap()),
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      artifact: (DeploymentArtifact.fromMap((map['artifact'] as Map).cast<String, dynamic>())).input(),
      batchResourceSetting: map['batchResourceSetting'] == null ? null : (DeploymentBatchResourceSetting.fromMap((map['batchResourceSetting'] as Map).cast<String, dynamic>())).input(),
      deploymentName: (map['deploymentName'] as String).input(),
      deploymentTarget: (DeploymentDeploymentTarget.fromMap((map['deploymentTarget'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      executionMode: (map['executionMode'] as String).input(),
      flinkConf: map['flinkConf'] == null ? null : ((map['flinkConf'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      localVariables: map['localVariables'] == null ? null : (pulumi.Input.decodeList<DeploymentLocalVariable>(map['localVariables'], (value) => DeploymentLocalVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logging: map['logging'] == null ? null : (DeploymentLogging.fromMap((map['logging'] as Map).cast<String, dynamic>())).input(),
      namespace: (map['namespace'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      streamingResourceSetting: map['streamingResourceSetting'] == null ? null : (DeploymentStreamingResourceSetting.fromMap((map['streamingResourceSetting'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

