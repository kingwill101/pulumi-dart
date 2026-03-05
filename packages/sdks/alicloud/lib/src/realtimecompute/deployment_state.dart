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
    this.artifact,
    this.batchResourceSetting,
    this.deploymentId,
    this.deploymentName,
    this.deploymentTarget,
    this.description,
    this.engineVersion,
    this.executionMode,
    this.flinkConf,
    this.labels,
    this.localVariables,
    this.logging,
    this.namespace,
    this.resourceId,
    this.streamingResourceSetting,
  });

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
      artifact: (() { final guardedValue = map['artifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentArtifact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      batchResourceSetting: (() { final guardedValue = map['batchResourceSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentBatchResourceSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentName: (() { final guardedValue = map['deploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentTarget: (() { final guardedValue = map['deploymentTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentDeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionMode: (() { final guardedValue = map['executionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flinkConf: (() { final guardedValue = map['flinkConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      localVariables: (() { final guardedValue = map['localVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentLocalVariable>(guardedValue, (value) => DeploymentLocalVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamingResourceSetting: (() { final guardedValue = map['streamingResourceSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStreamingResourceSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

