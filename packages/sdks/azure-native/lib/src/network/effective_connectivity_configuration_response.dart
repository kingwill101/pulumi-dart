// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_group_response.dart';
import 'connectivity_group_item_response.dart';
import 'hub_response.dart';

/// The network manager effective connectivity configuration
class EffectiveConnectivityConfigurationResponse {
  /// Groups for configuration
  final pulumi.Input<List<ConnectivityGroupItemResponse>> appliesToGroups;
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
  /// Connectivity configuration ID.
  final pulumi.Input<String>? id;
  /// Flag if global mesh is supported.
  final pulumi.Input<String>? isGlobal;
  /// The provisioning state of the connectivity configuration resource.
  final pulumi.Input<String> provisioningState;
  /// Unique identifier for this resource.
  final pulumi.Input<String> resourceGuid;

  /// Creates a new [EffectiveConnectivityConfigurationResponse].
  /// [appliesToGroups] Groups for configuration
  /// [configurationGroups] Effective configuration groups.
  /// [connectivityTopology] Connectivity topology type.
  /// [deleteExistingPeering] Flag if need to remove current existing peerings.
  /// [description] A description of the connectivity configuration.
  /// [displayName] A friendly name for the resource.
  /// [hubs] List of hubItems
  /// [id] Connectivity configuration ID.
  /// [isGlobal] Flag if global mesh is supported.
  /// [provisioningState] The provisioning state of the connectivity configuration resource.
  /// [resourceGuid] Unique identifier for this resource.
  EffectiveConnectivityConfigurationResponse({
    required this.appliesToGroups,
    this.configurationGroups,
    required this.connectivityTopology,
    this.deleteExistingPeering,
    this.description,
    this.displayName,
    this.hubs,
    this.id,
    this.isGlobal,
    required this.provisioningState,
    required this.resourceGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.mapInputValue<List<ConnectivityGroupItemResponse>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<ConnectivityGroupItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationGroups': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationGroupResponse>, List<Map<String, dynamic>>>(configurationGroups, (value) => pulumi.Input.encodeList<ConfigurationGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectivityTopology': connectivityTopology,
      'deleteExistingPeering': ?deleteExistingPeering,
      'description': ?description,
      'displayName': ?displayName,
      'hubs': ?pulumi.Input.mapOptionalInputValue<List<HubResponse>, List<Map<String, dynamic>>>(hubs, (value) => pulumi.Input.encodeList<HubResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'isGlobal': ?isGlobal,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
    };
  }

  factory EffectiveConnectivityConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EffectiveConnectivityConfigurationResponse(
      appliesToGroups: (pulumi.Input.decodeList<ConnectivityGroupItemResponse>(map['appliesToGroups'], (value) => ConnectivityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurationGroups: map['configurationGroups'] == null ? null : (pulumi.Input.decodeList<ConfigurationGroupResponse>(map['configurationGroups']!, (value) => ConfigurationGroupResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectivityTopology: (map['connectivityTopology'] as String).input(),
      deleteExistingPeering: map['deleteExistingPeering'] == null ? null : (map['deleteExistingPeering']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      hubs: map['hubs'] == null ? null : (pulumi.Input.decodeList<HubResponse>(map['hubs']!, (value) => HubResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      isGlobal: map['isGlobal'] == null ? null : (map['isGlobal']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceGuid: (map['resourceGuid'] as String).input(),
    );
  }
}

