// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_integration_runtime_response.dart';
import 'self_hosted_integration_runtime_node_response.dart';

/// Self-hosted integration runtime status.
class SelfHostedIntegrationRuntimeStatusResponse {
  /// Whether Self-hosted integration runtime auto update has been turned on.
  final String autoUpdate;
  /// The estimated time when the self-hosted integration runtime will be updated.
  final String autoUpdateETA;
  /// Object with additional information about integration runtime capabilities.
  final Map<String, String> capabilities;
  /// The time at which the integration runtime was created, in ISO8601 format.
  final String createTime;
  /// The workspace name which the integration runtime belong to.
  final String dataFactoryName;
  /// It is used to set the encryption mode for node-node communication channel (when more than 2 self-hosted integration runtime nodes exist).
  final String internalChannelEncryption;
  /// The latest version on download center.
  final String latestVersion;
  /// The list of linked integration runtimes that are created to share with this integration runtime.
  final List<LinkedIntegrationRuntimeResponse>? links;
  /// The local time zone offset in hours.
  final String localTimeZoneOffset;
  /// The node communication Channel encryption mode
  final String nodeCommunicationChannelEncryptionMode;
  /// The list of nodes for this integration runtime.
  final List<SelfHostedIntegrationRuntimeNodeResponse>? nodes;
  /// The version that the integration runtime is going to update to.
  final String pushedVersion;
  /// The date at which the integration runtime will be scheduled to update, in ISO8601 format.
  final String scheduledUpdateDate;
  /// The URLs for the services used in integration runtime backend service.
  final List<String> serviceUrls;
  /// The state of integration runtime.
  final String state;
  /// The task queue id of the integration runtime.
  final String taskQueueId;
  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final String type;
  /// The time in the date scheduled by service to update the integration runtime, e.g., PT03H is 3 hours
  final String updateDelayOffset;
  /// Version of the integration runtime.
  final String version;
  /// Status of the integration runtime version.
  final String versionStatus;

  /// Creates a new [SelfHostedIntegrationRuntimeStatusResponse].
  /// [autoUpdate] Whether Self-hosted integration runtime auto update has been turned on.
  /// [autoUpdateETA] The estimated time when the self-hosted integration runtime will be updated.
  /// [capabilities] Object with additional information about integration runtime capabilities.
  /// [createTime] The time at which the integration runtime was created, in ISO8601 format.
  /// [dataFactoryName] The workspace name which the integration runtime belong to.
  /// [internalChannelEncryption] It is used to set the encryption mode for node-node communication channel (when more than 2 self-hosted integration runtime nodes exist).
  /// [latestVersion] The latest version on download center.
  /// [links] The list of linked integration runtimes that are created to share with this integration runtime.
  /// [localTimeZoneOffset] The local time zone offset in hours.
  /// [nodeCommunicationChannelEncryptionMode] The node communication Channel encryption mode
  /// [nodes] The list of nodes for this integration runtime.
  /// [pushedVersion] The version that the integration runtime is going to update to.
  /// [scheduledUpdateDate] The date at which the integration runtime will be scheduled to update, in ISO8601 format.
  /// [serviceUrls] The URLs for the services used in integration runtime backend service.
  /// [state] The state of integration runtime.
  /// [taskQueueId] The task queue id of the integration runtime.
  /// [type] The type of integration runtime.
  /// [updateDelayOffset] The time in the date scheduled by service to update the integration runtime, e.g., PT03H is 3 hours
  /// [version] Version of the integration runtime.
  /// [versionStatus] Status of the integration runtime version.
  SelfHostedIntegrationRuntimeStatusResponse({
    required this.autoUpdate,
    required this.autoUpdateETA,
    required this.capabilities,
    required this.createTime,
    required this.dataFactoryName,
    required this.internalChannelEncryption,
    required this.latestVersion,
    this.links,
    required this.localTimeZoneOffset,
    required this.nodeCommunicationChannelEncryptionMode,
    this.nodes,
    required this.pushedVersion,
    required this.scheduledUpdateDate,
    required this.serviceUrls,
    required this.state,
    required this.taskQueueId,
    required this.type,
    required this.updateDelayOffset,
    required this.version,
    required this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdate': autoUpdate,
      'autoUpdateETA': autoUpdateETA,
      'capabilities': capabilities,
      'createTime': createTime,
      'dataFactoryName': dataFactoryName,
      'internalChannelEncryption': internalChannelEncryption,
      'latestVersion': latestVersion,
      'links': ?links == null ? null : pulumi.Input.encodeList<LinkedIntegrationRuntimeResponse, Map<String, dynamic>>(links!, (value) => value.toMap()),
      'localTimeZoneOffset': localTimeZoneOffset,
      'nodeCommunicationChannelEncryptionMode': nodeCommunicationChannelEncryptionMode,
      'nodes': ?nodes == null ? null : pulumi.Input.encodeList<SelfHostedIntegrationRuntimeNodeResponse, Map<String, dynamic>>(nodes!, (value) => value.toMap()),
      'pushedVersion': pushedVersion,
      'scheduledUpdateDate': scheduledUpdateDate,
      'serviceUrls': serviceUrls,
      'state': state,
      'taskQueueId': taskQueueId,
      'type': type,
      'updateDelayOffset': updateDelayOffset,
      'version': version,
      'versionStatus': versionStatus,
    };
  }

  factory SelfHostedIntegrationRuntimeStatusResponse.fromMap(Map<String, dynamic> map) {
    return SelfHostedIntegrationRuntimeStatusResponse(
      autoUpdate: map['autoUpdate'] as String,
      autoUpdateETA: map['autoUpdateETA'] as String,
      capabilities: (map['capabilities'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      dataFactoryName: map['dataFactoryName'] as String,
      internalChannelEncryption: map['internalChannelEncryption'] as String,
      latestVersion: map['latestVersion'] as String,
      links: map['links'] == null ? null : pulumi.Input.decodeList<LinkedIntegrationRuntimeResponse>(map['links'], (value) => LinkedIntegrationRuntimeResponse.fromMap((value as Map).cast<String, dynamic>())),
      localTimeZoneOffset: map['localTimeZoneOffset'] as String,
      nodeCommunicationChannelEncryptionMode: map['nodeCommunicationChannelEncryptionMode'] as String,
      nodes: map['nodes'] == null ? null : pulumi.Input.decodeList<SelfHostedIntegrationRuntimeNodeResponse>(map['nodes'], (value) => SelfHostedIntegrationRuntimeNodeResponse.fromMap((value as Map).cast<String, dynamic>())),
      pushedVersion: map['pushedVersion'] as String,
      scheduledUpdateDate: map['scheduledUpdateDate'] as String,
      serviceUrls: (map['serviceUrls'] as List).cast<String>(),
      state: map['state'] as String,
      taskQueueId: map['taskQueueId'] as String,
      type: map['type'] as String,
      updateDelayOffset: map['updateDelayOffset'] as String,
      version: map['version'] as String,
      versionStatus: map['versionStatus'] as String,
    );
  }
}

