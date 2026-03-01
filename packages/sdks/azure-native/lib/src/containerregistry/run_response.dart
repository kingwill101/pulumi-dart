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
  final AgentPropertiesResponse? agentConfiguration;
  /// The dedicated agent pool for the run.
  final String? agentPoolName;
  /// The time the run was scheduled.
  final String? createTime;
  /// The list of custom registries that were logged in during this run.
  final List<String>? customRegistries;
  /// The time the run finished.
  final String? finishTime;
  /// The resource ID.
  final String id;
  /// The image update trigger that caused the run. This is applicable if the task has base image trigger configured.
  final ImageUpdateTriggerResponse? imageUpdateTrigger;
  /// The value that indicates whether archiving is enabled or not.
  final bool? isArchiveEnabled;
  /// The last updated time for the run.
  final String? lastUpdatedTime;
  /// The image description for the log artifact.
  final ImageDescriptorResponse logArtifact;
  /// The name of the resource.
  final String name;
  /// The list of all images that were generated from the run. This is applicable if the run generates base image dependencies.
  final List<ImageDescriptorResponse>? outputImages;
  /// The platform properties against which the run will happen.
  final PlatformPropertiesResponse? platform;
  /// The provisioning state of a run.
  final String? provisioningState;
  /// The error message received from backend systems after the run is scheduled.
  final String runErrorMessage;
  /// The unique identifier for the run.
  final String? runId;
  /// The type of run.
  final String? runType;
  /// The scope of the credentials that were used to login to the source registry during this run.
  final String? sourceRegistryAuth;
  /// The source trigger that caused the run.
  final SourceTriggerDescriptorResponse? sourceTrigger;
  /// The time the run started.
  final String? startTime;
  /// The current status of the run.
  final String? status;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The task against which run was scheduled.
  final String? task;
  /// The timer trigger that caused the run.
  final TimerTriggerDescriptorResponse? timerTrigger;
  /// The type of the resource.
  final String type;
  /// The update trigger token passed for the Run.
  final String? updateTriggerToken;

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
    this.isArchiveEnabled,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentConfiguration': ?agentConfiguration == null ? null : agentConfiguration!.toMap(),
      'agentPoolName': ?agentPoolName,
      'createTime': ?createTime,
      'customRegistries': ?customRegistries,
      'finishTime': ?finishTime,
      'id': id,
      'imageUpdateTrigger': ?imageUpdateTrigger == null ? null : imageUpdateTrigger!.toMap(),
      'isArchiveEnabled': ?isArchiveEnabled,
      'lastUpdatedTime': ?lastUpdatedTime,
      'logArtifact': logArtifact.toMap(),
      'name': name,
      'outputImages': ?outputImages == null ? null : pulumi.Input.encodeList<ImageDescriptorResponse, Map<String, dynamic>>(outputImages!, (value) => value.toMap()),
      'platform': ?platform == null ? null : platform!.toMap(),
      'provisioningState': ?provisioningState,
      'runErrorMessage': runErrorMessage,
      'runId': ?runId,
      'runType': ?runType,
      'sourceRegistryAuth': ?sourceRegistryAuth,
      'sourceTrigger': ?sourceTrigger == null ? null : sourceTrigger!.toMap(),
      'startTime': ?startTime,
      'status': ?status,
      'systemData': systemData.toMap(),
      'task': ?task,
      'timerTrigger': ?timerTrigger == null ? null : timerTrigger!.toMap(),
      'type': type,
      'updateTriggerToken': ?updateTriggerToken,
    };
  }

  factory RunResponse.fromMap(Map<String, dynamic> map) {
    return RunResponse(
      agentConfiguration: map['agentConfiguration'] == null ? null : AgentPropertiesResponse.fromMap((map['agentConfiguration'] as Map).cast<String, dynamic>()),
      agentPoolName: map['agentPoolName'] == null ? null : map['agentPoolName'] as String,
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      customRegistries: map['customRegistries'] == null ? null : (map['customRegistries'] as List).cast<String>(),
      finishTime: map['finishTime'] == null ? null : map['finishTime'] as String,
      id: map['id'] as String,
      imageUpdateTrigger: map['imageUpdateTrigger'] == null ? null : ImageUpdateTriggerResponse.fromMap((map['imageUpdateTrigger'] as Map).cast<String, dynamic>()),
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : map['isArchiveEnabled'] as bool,
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : map['lastUpdatedTime'] as String,
      logArtifact: ImageDescriptorResponse.fromMap((map['logArtifact'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      outputImages: map['outputImages'] == null ? null : pulumi.Input.decodeList<ImageDescriptorResponse>(map['outputImages'], (value) => ImageDescriptorResponse.fromMap((value as Map).cast<String, dynamic>())),
      platform: map['platform'] == null ? null : PlatformPropertiesResponse.fromMap((map['platform'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      runErrorMessage: map['runErrorMessage'] as String,
      runId: map['runId'] == null ? null : map['runId'] as String,
      runType: map['runType'] == null ? null : map['runType'] as String,
      sourceRegistryAuth: map['sourceRegistryAuth'] == null ? null : map['sourceRegistryAuth'] as String,
      sourceTrigger: map['sourceTrigger'] == null ? null : SourceTriggerDescriptorResponse.fromMap((map['sourceTrigger'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      task: map['task'] == null ? null : map['task'] as String,
      timerTrigger: map['timerTrigger'] == null ? null : TimerTriggerDescriptorResponse.fromMap((map['timerTrigger'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updateTriggerToken: map['updateTriggerToken'] == null ? null : map['updateTriggerToken'] as String,
    );
  }
}

