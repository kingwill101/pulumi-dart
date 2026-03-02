// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_integration_runtime_response.dart';
import 'self_hosted_integration_runtime_node_response.dart';

/// Self-hosted integration runtime status.
class SelfHostedIntegrationRuntimeStatusResponse {
  /// Whether Self-hosted integration runtime auto update has been turned on.
  final pulumi.Input<String> autoUpdate;
  /// The estimated time when the self-hosted integration runtime will be updated.
  final pulumi.Input<String> autoUpdateETA;
  /// Object with additional information about integration runtime capabilities.
  final pulumi.Input<Map<String, String>> capabilities;
  /// The time at which the integration runtime was created, in ISO8601 format.
  final pulumi.Input<String> createTime;
  /// The data factory name which the integration runtime belong to.
  final pulumi.Input<String> dataFactoryName;
  /// It is used to set the encryption mode for node-node communication channel (when more than 2 self-hosted integration runtime nodes exist).
  final pulumi.Input<String> internalChannelEncryption;
  /// The latest version on download center.
  final pulumi.Input<String> latestVersion;
  /// The list of linked integration runtimes that are created to share with this integration runtime.
  final pulumi.Input<List<LinkedIntegrationRuntimeResponse>>? links;
  /// The local time zone offset in hours.
  final pulumi.Input<String> localTimeZoneOffset;
  /// The list of nodes for this integration runtime.
  final pulumi.Input<List<SelfHostedIntegrationRuntimeNodeResponse>>? nodes;
  /// The version that the integration runtime is going to update to.
  final pulumi.Input<String> pushedVersion;
  /// The date at which the integration runtime will be scheduled to update, in ISO8601 format.
  final pulumi.Input<String> scheduledUpdateDate;
  /// An alternative option to ensure interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  final pulumi.Input<bool> selfContainedInteractiveAuthoringEnabled;
  /// The URLs for the services used in integration runtime backend service.
  final pulumi.Input<List<String>> serviceUrls;
  /// The state of integration runtime.
  final pulumi.Input<String> state;
  /// The task queue id of the integration runtime.
  final pulumi.Input<String> taskQueueId;
  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final pulumi.Input<String> type;
  /// The time in the date scheduled by service to update the integration runtime, e.g., PT03H is 3 hours
  final pulumi.Input<String> updateDelayOffset;
  /// Version of the integration runtime.
  final pulumi.Input<String> version;
  /// Status of the integration runtime version.
  final pulumi.Input<String> versionStatus;

  /// Creates a new [SelfHostedIntegrationRuntimeStatusResponse].
  /// [autoUpdate] Whether Self-hosted integration runtime auto update has been turned on.
  /// [autoUpdateETA] The estimated time when the self-hosted integration runtime will be updated.
  /// [capabilities] Object with additional information about integration runtime capabilities.
  /// [createTime] The time at which the integration runtime was created, in ISO8601 format.
  /// [dataFactoryName] The data factory name which the integration runtime belong to.
  /// [internalChannelEncryption] It is used to set the encryption mode for node-node communication channel (when more than 2 self-hosted integration runtime nodes exist).
  /// [latestVersion] The latest version on download center.
  /// [links] The list of linked integration runtimes that are created to share with this integration runtime.
  /// [localTimeZoneOffset] The local time zone offset in hours.
  /// [nodes] The list of nodes for this integration runtime.
  /// [pushedVersion] The version that the integration runtime is going to update to.
  /// [scheduledUpdateDate] The date at which the integration runtime will be scheduled to update, in ISO8601 format.
  /// [selfContainedInteractiveAuthoringEnabled] An alternative option to ensure interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
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
    this.nodes,
    required this.pushedVersion,
    required this.scheduledUpdateDate,
    required this.selfContainedInteractiveAuthoringEnabled,
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
      'links': ?pulumi.Input.mapOptionalInputValue<List<LinkedIntegrationRuntimeResponse>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<LinkedIntegrationRuntimeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localTimeZoneOffset': localTimeZoneOffset,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<SelfHostedIntegrationRuntimeNodeResponse>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<SelfHostedIntegrationRuntimeNodeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pushedVersion': pushedVersion,
      'scheduledUpdateDate': scheduledUpdateDate,
      'selfContainedInteractiveAuthoringEnabled': selfContainedInteractiveAuthoringEnabled,
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
      autoUpdate: (map['autoUpdate'] as String).input(),
      autoUpdateETA: (map['autoUpdateETA'] as String).input(),
      capabilities: ((map['capabilities'] as Map).cast<String, String>()).input(),
      createTime: (map['createTime'] as String).input(),
      dataFactoryName: (map['dataFactoryName'] as String).input(),
      internalChannelEncryption: (map['internalChannelEncryption'] as String).input(),
      latestVersion: (map['latestVersion'] as String).input(),
      links: map['links'] == null ? null : (pulumi.Input.decodeList<LinkedIntegrationRuntimeResponse>(map['links'], (value) => LinkedIntegrationRuntimeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localTimeZoneOffset: (map['localTimeZoneOffset'] as String).input(),
      nodes: map['nodes'] == null ? null : (pulumi.Input.decodeList<SelfHostedIntegrationRuntimeNodeResponse>(map['nodes'], (value) => SelfHostedIntegrationRuntimeNodeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pushedVersion: (map['pushedVersion'] as String).input(),
      scheduledUpdateDate: (map['scheduledUpdateDate'] as String).input(),
      selfContainedInteractiveAuthoringEnabled: (map['selfContainedInteractiveAuthoringEnabled'] as bool).input(),
      serviceUrls: ((map['serviceUrls'] as List).cast<String>()).input(),
      state: (map['state'] as String).input(),
      taskQueueId: (map['taskQueueId'] as String).input(),
      type: (map['type'] as String).input(),
      updateDelayOffset: (map['updateDelayOffset'] as String).input(),
      version: (map['version'] as String).input(),
      versionStatus: (map['versionStatus'] as String).input(),
    );
  }
}

