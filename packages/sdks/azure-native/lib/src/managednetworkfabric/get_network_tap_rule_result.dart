// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_dynamic_match_configuration_response.dart';
import 'network_tap_rule_match_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkTapRule.
class GetNetworkTapRuleResult {
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration state of the resource.
  final String? configurationState;
  /// Input method to configure Network Tap Rule.
  final String? configurationType;
  /// List of dynamic match configurations.
  final List<CommonDynamicMatchConfigurationResponse>? dynamicMatchConfigurations;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The last sync timestamp.
  final String? lastSyncedTime;
  /// The geo-location where the resource lives
  final String? location;
  /// List of match configurations.
  final List<NetworkTapRuleMatchConfigurationResponse>? matchConfigurations;
  /// The name of the resource
  final String? name;
  /// The ARM resource Id of the NetworkTap.
  final String? networkTapId;
  /// Polling interval in seconds.
  final int? pollingIntervalInSeconds;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Network Tap Rules file URL.
  final String? tapRulesUrl;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.configurationState,
    this.configurationType,
    this.dynamicMatchConfigurations,
    this.id,
    this.lastSyncedTime,
    this.location,
    this.matchConfigurations,
    this.name,
    this.networkTapId,
    int? pollingIntervalInSeconds,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.tapRulesUrl,
    this.type,
  }) : pollingIntervalInSeconds = pollingIntervalInSeconds ?? 30;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'configurationState': ?configurationState,
      'configurationType': ?configurationType,
      'dynamicMatchConfigurations': ?(() { final guardedValue = dynamicMatchConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<CommonDynamicMatchConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'lastSyncedTime': ?lastSyncedTime,
      'location': ?location,
      'matchConfigurations': ?(() { final guardedValue = matchConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkTapRuleMatchConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkTapId': ?networkTapId,
      'pollingIntervalInSeconds': ?pollingIntervalInSeconds,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tapRulesUrl': ?tapRulesUrl,
      'type': ?type,
    };
  }

  factory GetNetworkTapRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkTapRuleResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationType: (() { final guardedValue = map['configurationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicMatchConfigurations: (() { final guardedValue = map['dynamicMatchConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CommonDynamicMatchConfigurationResponse>(guardedValue, (value) => CommonDynamicMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSyncedTime: (() { final guardedValue = map['lastSyncedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      matchConfigurations: (() { final guardedValue = map['matchConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkTapRuleMatchConfigurationResponse>(guardedValue, (value) => NetworkTapRuleMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkTapId: (() { final guardedValue = map['networkTapId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pollingIntervalInSeconds: (() { final guardedValue = map['pollingIntervalInSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tapRulesUrl: (() { final guardedValue = map['tapRulesUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
