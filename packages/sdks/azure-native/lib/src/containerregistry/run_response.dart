// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_properties_response.dart';
import 'image_descriptor_response.dart';
import 'image_update_trigger_response.dart';
import 'platform_properties_response.dart';
import 'source_trigger_descriptor_response.dart';
import 'system_data_response.dart';
import 'timer_trigger_descriptor_response.dart';

/// Run resource properties
class RunResponse {
  /// The machine configuration of the run agent.
  final pulumi.Input<AgentPropertiesResponse?>? agentConfiguration;
  /// The dedicated agent pool for the run.
  final pulumi.Input<String?>? agentPoolName;
  /// The time the run was scheduled.
  final pulumi.Input<String?>? createTime;
  /// The list of custom registries that were logged in during this run.
  final pulumi.Input<List<String>?>? customRegistries;
  /// The time the run finished.
  final pulumi.Input<String?>? finishTime;
  /// The resource ID.
  final pulumi.Input<String> id;
  /// The image update trigger that caused the run. This is applicable if the task has base image trigger configured.
  final pulumi.Input<ImageUpdateTriggerResponse?>? imageUpdateTrigger;
  /// The value that indicates whether archiving is enabled or not.
  final pulumi.Input<bool?>? isArchiveEnabled;
  /// The last updated time for the run.
  final pulumi.Input<String?>? lastUpdatedTime;
  /// The image description for the log artifact.
  final pulumi.Input<ImageDescriptorResponse> logArtifact;
  /// The name of the resource.
  final pulumi.Input<String> name;
  /// The list of all images that were generated from the run. This is applicable if the run generates base image dependencies.
  final pulumi.Input<List<ImageDescriptorResponse>?>? outputImages;
  /// The platform properties against which the run will happen.
  final pulumi.Input<PlatformPropertiesResponse?>? platform;
  /// The provisioning state of a run.
  final pulumi.Input<String?>? provisioningState;
  /// The error message received from backend systems after the run is scheduled.
  final pulumi.Input<String> runErrorMessage;
  /// The unique identifier for the run.
  final pulumi.Input<String?>? runId;
  /// The type of run.
  final pulumi.Input<String?>? runType;
  /// The scope of the credentials that were used to login to the source registry during this run.
  final pulumi.Input<String?>? sourceRegistryAuth;
  /// The source trigger that caused the run.
  final pulumi.Input<SourceTriggerDescriptorResponse?>? sourceTrigger;
  /// The time the run started.
  final pulumi.Input<String?>? startTime;
  /// The current status of the run.
  final pulumi.Input<String?>? status;
  /// Metadata pertaining to creation and last modification of the resource.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The task against which run was scheduled.
  final pulumi.Input<String?>? task;
  /// The timer trigger that caused the run.
  final pulumi.Input<TimerTriggerDescriptorResponse?>? timerTrigger;
  /// The type of the resource.
  final pulumi.Input<String> type;
  /// The update trigger token passed for the Run.
  final pulumi.Input<String?>? updateTriggerToken;

  /// Creates a new [RunResponse].
  /// [agentConfiguration] The machine configuration of the run agent.
  /// [agentPoolName] The dedicated agent pool for the run.
  /// [createTime] The time the run was scheduled.
  /// [customRegistries] The list of custom registries that were logged in during this run.
  /// [finishTime] The time the run finished.
  /// [id] The resource ID.
  /// [imageUpdateTrigger] The image update trigger that caused the run. This is applicable if the task has base image trigger configured.
  /// [isArchiveEnabled] The value that indicates whether archiving is enabled or not.
  /// [lastUpdatedTime] The last updated time for the run.
  /// [logArtifact] The image description for the log artifact.
  /// [name] The name of the resource.
  /// [outputImages] The list of all images that were generated from the run. This is applicable if the run generates base image dependencies.
  /// [platform] The platform properties against which the run will happen.
  /// [provisioningState] The provisioning state of a run.
  /// [runErrorMessage] The error message received from backend systems after the run is scheduled.
  /// [runId] The unique identifier for the run.
  /// [runType] The type of run.
  /// [sourceRegistryAuth] The scope of the credentials that were used to login to the source registry during this run.
  /// [sourceTrigger] The source trigger that caused the run.
  /// [startTime] The time the run started.
  /// [status] The current status of the run.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [task] The task against which run was scheduled.
  /// [timerTrigger] The timer trigger that caused the run.
  /// [type] The type of the resource.
  /// [updateTriggerToken] The update trigger token passed for the Run.
  RunResponse({
    this.agentConfiguration,
    this.agentPoolName,
    this.createTime,
    this.customRegistries,
    this.finishTime,
    required this.id,
    this.imageUpdateTrigger,
    pulumi.Input<bool?>? isArchiveEnabled,
    this.lastUpdatedTime,
    required this.logArtifact,
    required this.name,
    this.outputImages,
    this.platform,
    this.provisioningState,
    required this.runErrorMessage,
    this.runId,
    this.runType,
    this.sourceRegistryAuth,
    this.sourceTrigger,
    this.startTime,
    this.status,
    required this.systemData,
    this.task,
    this.timerTrigger,
    required this.type,
    this.updateTriggerToken,
  }) : isArchiveEnabled = isArchiveEnabled ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentPropertiesResponse, Map<String, dynamic>>(agentConfiguration, (value) => value.toMap()),
      'agentPoolName': ?agentPoolName,
      'createTime': ?createTime,
      'customRegistries': ?customRegistries,
      'finishTime': ?finishTime,
      'id': id,
      'imageUpdateTrigger': ?pulumi.Input.mapOptionalInputValue<ImageUpdateTriggerResponse, Map<String, dynamic>>(imageUpdateTrigger, (value) => value.toMap()),
      'isArchiveEnabled': ?isArchiveEnabled,
      'lastUpdatedTime': ?lastUpdatedTime,
      'logArtifact': pulumi.Input.mapInputValue<ImageDescriptorResponse, Map<String, dynamic>>(logArtifact, (value) => value.toMap()),
      'name': name,
      'outputImages': ?pulumi.Input.mapOptionalInputValue<List<ImageDescriptorResponse>, List<Map<String, dynamic>>>(outputImages, (value) => pulumi.Input.encodeList<ImageDescriptorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platform': ?pulumi.Input.mapOptionalInputValue<PlatformPropertiesResponse, Map<String, dynamic>>(platform, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'runErrorMessage': runErrorMessage,
      'runId': ?runId,
      'runType': ?runType,
      'sourceRegistryAuth': ?sourceRegistryAuth,
      'sourceTrigger': ?pulumi.Input.mapOptionalInputValue<SourceTriggerDescriptorResponse, Map<String, dynamic>>(sourceTrigger, (value) => value.toMap()),
      'startTime': ?startTime,
      'status': ?status,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'task': ?task,
      'timerTrigger': ?pulumi.Input.mapOptionalInputValue<TimerTriggerDescriptorResponse, Map<String, dynamic>>(timerTrigger, (value) => value.toMap()),
      'type': type,
      'updateTriggerToken': ?updateTriggerToken,
    };
  }

  factory RunResponse.fromMap(Map<String, dynamic> map) {
    return RunResponse(
      agentConfiguration: (() { final guardedValue = map['agentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentPoolName: (() { final guardedValue = map['agentPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customRegistries: (() { final guardedValue = map['customRegistries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      finishTime: (() { final guardedValue = map['finishTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageUpdateTrigger: (() { final guardedValue = map['imageUpdateTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageUpdateTriggerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isArchiveEnabled: (() { final guardedValue = map['isArchiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logArtifact: pulumi.Input.fromValue(ImageDescriptorResponse.fromMap((map['logArtifact']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputImages: (() { final guardedValue = map['outputImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageDescriptorResponse>(guardedValue, (value) => ImageDescriptorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlatformPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runErrorMessage: pulumi.Input.fromValue(map['runErrorMessage'] as String),
      runId: (() { final guardedValue = map['runId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runType: (() { final guardedValue = map['runType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRegistryAuth: (() { final guardedValue = map['sourceRegistryAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceTrigger: (() { final guardedValue = map['sourceTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceTriggerDescriptorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      task: (() { final guardedValue = map['task']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timerTrigger: (() { final guardedValue = map['timerTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimerTriggerDescriptorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateTriggerToken: (() { final guardedValue = map['updateTriggerToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
