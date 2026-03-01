// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_group_response.dart';
import 'connectivity_group_item_response.dart';
import 'hub_response.dart';

/// Active connectivity configuration.
class ActiveConnectivityConfigurationResponse {
  /// Groups for configuration
  final List<ConnectivityGroupItemResponse> appliesToGroups;
  /// Deployment time string.
  final String? commitTime;
  /// Effective configuration groups.
  final List<ConfigurationGroupResponse>? configurationGroups;
  /// Connectivity topology type.
  final String connectivityTopology;
  /// Flag if need to remove current existing peerings.
  final String? deleteExistingPeering;
  /// A description of the connectivity configuration.
  final String? description;
  /// A friendly name for the resource.
  final String? displayName;
  /// List of hubItems
  final List<HubResponse>? hubs;
  /// Connectivity configuration ID.
  final String? id;
  /// Flag if global mesh is supported.
  final String? isGlobal;
  /// The provisioning state of the connectivity configuration resource.
  final String provisioningState;
  /// Deployment region.
  final String? region;
  /// Unique identifier for this resource.
  final String resourceGuid;

  /// Creates a new [ActiveConnectivityConfigurationResponse].
  /// [appliesToGroups] Groups for configuration
  /// [commitTime] Deployment time string.
  /// [configurationGroups] Effective configuration groups.
  /// [connectivityTopology] Connectivity topology type.
  /// [deleteExistingPeering] Flag if need to remove current existing peerings.
  /// [description] A description of the connectivity configuration.
  /// [displayName] A friendly name for the resource.
  /// [hubs] List of hubItems
  /// [id] Connectivity configuration ID.
  /// [isGlobal] Flag if global mesh is supported.
  /// [provisioningState] The provisioning state of the connectivity configuration resource.
  /// [region] Deployment region.
  /// [resourceGuid] Unique identifier for this resource.
  ActiveConnectivityConfigurationResponse({
    required this.appliesToGroups,
    this.commitTime,
    this.configurationGroups,
    required this.connectivityTopology,
    this.deleteExistingPeering,
    this.description,
    this.displayName,
    this.hubs,
    this.id,
    this.isGlobal,
    required this.provisioningState,
    this.region,
    required this.resourceGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.encodeList<ConnectivityGroupItemResponse, Map<String, dynamic>>(appliesToGroups, (value) => value.toMap()),
      'commitTime': ?commitTime,
      'configurationGroups': ?configurationGroups == null ? null : pulumi.Input.encodeList<ConfigurationGroupResponse, Map<String, dynamic>>(configurationGroups!, (value) => value.toMap()),
      'connectivityTopology': connectivityTopology,
      'deleteExistingPeering': ?deleteExistingPeering,
      'description': ?description,
      'displayName': ?displayName,
      'hubs': ?hubs == null ? null : pulumi.Input.encodeList<HubResponse, Map<String, dynamic>>(hubs!, (value) => value.toMap()),
      'id': ?id,
      'isGlobal': ?isGlobal,
      'provisioningState': provisioningState,
      'region': ?region,
      'resourceGuid': resourceGuid,
    };
  }

  factory ActiveConnectivityConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ActiveConnectivityConfigurationResponse(
      appliesToGroups: pulumi.Input.decodeList<ConnectivityGroupItemResponse>(map['appliesToGroups'], (value) => ConnectivityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      commitTime: map['commitTime'] == null ? null : map['commitTime'] as String,
      configurationGroups: map['configurationGroups'] == null ? null : pulumi.Input.decodeList<ConfigurationGroupResponse>(map['configurationGroups'], (value) => ConfigurationGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      connectivityTopology: map['connectivityTopology'] as String,
      deleteExistingPeering: map['deleteExistingPeering'] == null ? null : map['deleteExistingPeering'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      hubs: map['hubs'] == null ? null : pulumi.Input.decodeList<HubResponse>(map['hubs'], (value) => HubResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      isGlobal: map['isGlobal'] == null ? null : map['isGlobal'] as String,
      provisioningState: map['provisioningState'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceGuid: map['resourceGuid'] as String,
    );
  }
}

