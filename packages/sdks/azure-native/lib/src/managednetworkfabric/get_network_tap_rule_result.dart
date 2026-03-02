// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_dynamic_match_configuration_response.dart';
import 'network_tap_rule_match_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkTapRule.
class GetNetworkTapRuleResult {
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// Input method to configure Network Tap Rule.
  final String configurationType;
  /// List of dynamic match configurations.
  final List<CommonDynamicMatchConfigurationResponse>? dynamicMatchConfigurations;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The last sync timestamp.
  final String lastSyncedTime;
  /// The geo-location where the resource lives
  final String location;
  /// List of match configurations.
  final List<NetworkTapRuleMatchConfigurationResponse>? matchConfigurations;
  /// The name of the resource
  final String name;
  /// The ARM resource Id of the NetworkTap.
  final String networkTapId;
  /// Polling interval in seconds.
  final int? pollingIntervalInSeconds;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Network Tap Rules file URL.
  final String? tapRulesUrl;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetNetworkTapRuleResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [configurationType] Input method to configure Network Tap Rule.
  /// [dynamicMatchConfigurations] List of dynamic match configurations.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastSyncedTime] The last sync timestamp.
  /// [location] The geo-location where the resource lives
  /// [matchConfigurations] List of match configurations.
  /// [name] The name of the resource
  /// [networkTapId] The ARM resource Id of the NetworkTap.
  /// [pollingIntervalInSeconds] Polling interval in seconds.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tapRulesUrl] Network Tap Rules file URL.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetNetworkTapRuleResult({
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    required this.configurationType,
    this.dynamicMatchConfigurations,
    required this.id,
    required this.lastSyncedTime,
    required this.location,
    this.matchConfigurations,
    required this.name,
    required this.networkTapId,
    this.pollingIntervalInSeconds,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    this.tapRulesUrl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'configurationType': configurationType,
      'dynamicMatchConfigurations': ?dynamicMatchConfigurations == null ? null : pulumi.Input.encodeList<CommonDynamicMatchConfigurationResponse, Map<String, dynamic>>(dynamicMatchConfigurations!, (value) => value.toMap()),
      'id': id,
      'lastSyncedTime': lastSyncedTime,
      'location': location,
      'matchConfigurations': ?matchConfigurations == null ? null : pulumi.Input.encodeList<NetworkTapRuleMatchConfigurationResponse, Map<String, dynamic>>(matchConfigurations!, (value) => value.toMap()),
      'name': name,
      'networkTapId': networkTapId,
      'pollingIntervalInSeconds': ?pollingIntervalInSeconds,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tapRulesUrl': ?tapRulesUrl,
      'type': type,
    };
  }

  factory GetNetworkTapRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkTapRuleResult(
      administrativeState: map['administrativeState'] as String,
      annotation: map['annotation'] == null ? null : map['annotation']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      configurationType: map['configurationType'] as String,
      dynamicMatchConfigurations: map['dynamicMatchConfigurations'] == null ? null : pulumi.Input.decodeList<CommonDynamicMatchConfigurationResponse>(map['dynamicMatchConfigurations']!, (value) => CommonDynamicMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastSyncedTime: map['lastSyncedTime'] as String,
      location: map['location'] as String,
      matchConfigurations: map['matchConfigurations'] == null ? null : pulumi.Input.decodeList<NetworkTapRuleMatchConfigurationResponse>(map['matchConfigurations']!, (value) => NetworkTapRuleMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkTapId: map['networkTapId'] as String,
      pollingIntervalInSeconds: map['pollingIntervalInSeconds'] == null ? null : map['pollingIntervalInSeconds']! as int,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      tapRulesUrl: map['tapRulesUrl'] == null ? null : map['tapRulesUrl']! as String,
      type: map['type'] as String,
    );
  }
}

