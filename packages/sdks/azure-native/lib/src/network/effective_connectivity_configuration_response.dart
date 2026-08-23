// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_group_response.dart';
import 'connectivity_group_itemlist_effective_connectivity_configuration_response.dart';
import 'hub_response.dart';

/// The network manager effective connectivity configuration
class EffectiveConnectivityConfigurationResponse {
  /// Groups for configuration
  final pulumi.Input<List<ConnectivityGroupItemlistEffectiveConnectivityConfigurationResponse>>? appliesToGroups;
  /// Effective configuration groups.
  final pulumi.Input<List<ConfigurationGroupResponse>>? configurationGroups;
  /// Connectivity topology type.
  final pulumi.Input<String> connectivityTopology;
  /// Flag if need to remove current existing peerings.
  final pulumi.Input<String>? deleteExistingPeering;
  /// A description of the connectivity configuration.
  final pulumi.Input<String>? description;
  /// A friendly name for the resource.
  final pulumi.Input<String>? displayName;
  /// List of hubItems
  final pulumi.Input<List<HubResponse>>? hubs;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Flag if global mesh is supported.
  final pulumi.Input<String>? isGlobal;
  /// The provisioning state of the connectivity configuration resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [EffectiveConnectivityConfigurationResponse].
  /// [appliesToGroups] Groups for configuration
  /// [configurationGroups] Effective configuration groups.
  /// [connectivityTopology] Connectivity topology type.
  /// [deleteExistingPeering] Flag if need to remove current existing peerings.
  /// [description] A description of the connectivity configuration.
  /// [displayName] A friendly name for the resource.
  /// [hubs] List of hubItems
  /// [id] Resource ID.
  /// [isGlobal] Flag if global mesh is supported.
  /// [provisioningState] The provisioning state of the connectivity configuration resource.
  const EffectiveConnectivityConfigurationResponse({
    this.appliesToGroups,
    this.configurationGroups,
    required this.connectivityTopology,
    this.deleteExistingPeering,
    this.description,
    this.displayName,
    this.hubs,
    this.id,
    this.isGlobal,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': ?pulumi.Input.mapOptionalInputValue<List<ConnectivityGroupItemlistEffectiveConnectivityConfigurationResponse>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<ConnectivityGroupItemlistEffectiveConnectivityConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationGroups': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationGroupResponse>, List<Map<String, dynamic>>>(configurationGroups, (value) => pulumi.Input.encodeList<ConfigurationGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectivityTopology': connectivityTopology,
      'deleteExistingPeering': ?deleteExistingPeering,
      'description': ?description,
      'displayName': ?displayName,
      'hubs': ?pulumi.Input.mapOptionalInputValue<List<HubResponse>, List<Map<String, dynamic>>>(hubs, (value) => pulumi.Input.encodeList<HubResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'isGlobal': ?isGlobal,
      'provisioningState': provisioningState,
    };
  }

  factory EffectiveConnectivityConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EffectiveConnectivityConfigurationResponse(
      appliesToGroups: (() { final guardedValue = map['appliesToGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectivityGroupItemlistEffectiveConnectivityConfigurationResponse>(guardedValue, (value) => ConnectivityGroupItemlistEffectiveConnectivityConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configurationGroups: (() { final guardedValue = map['configurationGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationGroupResponse>(guardedValue, (value) => ConfigurationGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectivityTopology: pulumi.Input.fromValue(map['connectivityTopology'] as String),
      deleteExistingPeering: (() { final guardedValue = map['deleteExistingPeering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubs: (() { final guardedValue = map['hubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HubResponse>(guardedValue, (value) => HubResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
