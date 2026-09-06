// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_grouplist_network_manager_effective_connectivity_configurations_response.dart';
import 'connectivity_group_item_response.dart';
import 'hub_response.dart';

/// The network manager effective connectivity configuration
class EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse {
  /// Groups for configuration
  final pulumi.Input<List<ConnectivityGroupItemResponse>> appliesToGroups;
  /// Effective configuration groups.
  final pulumi.Input<List<ConfigurationGrouplistNetworkManagerEffectiveConnectivityConfigurationsResponse>?>? configurationGroups;
  /// Connectivity topology type.
  final pulumi.Input<String> connectivityTopology;
  /// Flag if need to remove current existing peerings.
  final pulumi.Input<String?>? deleteExistingPeering;
  /// A description of the connectivity configuration.
  final pulumi.Input<String?>? description;
  /// List of hubItems
  final pulumi.Input<List<HubResponse>?>? hubs;
  /// Connectivity configuration ID.
  final pulumi.Input<String?>? id;
  /// Flag if global mesh is supported.
  final pulumi.Input<String?>? isGlobal;
  /// The provisioning state of the connectivity configuration resource.
  final pulumi.Input<String> provisioningState;
  /// Unique identifier for this resource.
  final pulumi.Input<String> resourceGuid;

  /// Creates a new [EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse].
  /// [appliesToGroups] Groups for configuration
  /// [configurationGroups] Effective configuration groups.
  /// [connectivityTopology] Connectivity topology type.
  /// [deleteExistingPeering] Flag if need to remove current existing peerings.
  /// [description] A description of the connectivity configuration.
  /// [hubs] List of hubItems
  /// [id] Connectivity configuration ID.
  /// [isGlobal] Flag if global mesh is supported.
  /// [provisioningState] The provisioning state of the connectivity configuration resource.
  /// [resourceGuid] Unique identifier for this resource.
  const EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse({
    required this.appliesToGroups,
    this.configurationGroups,
    required this.connectivityTopology,
    this.deleteExistingPeering,
    this.description,
    this.hubs,
    this.id,
    this.isGlobal,
    required this.provisioningState,
    required this.resourceGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.mapInputValue<List<ConnectivityGroupItemResponse>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<ConnectivityGroupItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationGroups': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationGrouplistNetworkManagerEffectiveConnectivityConfigurationsResponse>, List<Map<String, dynamic>>>(configurationGroups, (value) => pulumi.Input.encodeList<ConfigurationGrouplistNetworkManagerEffectiveConnectivityConfigurationsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectivityTopology': connectivityTopology,
      'deleteExistingPeering': ?deleteExistingPeering,
      'description': ?description,
      'hubs': ?pulumi.Input.mapOptionalInputValue<List<HubResponse>, List<Map<String, dynamic>>>(hubs, (value) => pulumi.Input.encodeList<HubResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'isGlobal': ?isGlobal,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
    };
  }

  factory EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return EffectiveConnectivityConfigurationlistNetworkManagerEffectiveConnectivityConfigurationsResponse(
      appliesToGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectivityGroupItemResponse>(map['appliesToGroups']!, (value) => ConnectivityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      configurationGroups: (() { final guardedValue = map['configurationGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationGrouplistNetworkManagerEffectiveConnectivityConfigurationsResponse>(guardedValue, (value) => ConfigurationGrouplistNetworkManagerEffectiveConnectivityConfigurationsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectivityTopology: pulumi.Input.fromValue(map['connectivityTopology'] as String),
      deleteExistingPeering: (() { final guardedValue = map['deleteExistingPeering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubs: (() { final guardedValue = map['hubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HubResponse>(guardedValue, (value) => HubResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
    );
  }
}
