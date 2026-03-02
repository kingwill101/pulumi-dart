// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_group_item.dart';
import 'hub.dart';

/// {@template pulumi_network_connectivity_configuration_args_doc}
/// The set of arguments for ConnectivityConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_connectivity_configuration_args_doc}
class ConnectivityConfigurationArgs {
  /// Groups for configuration
  final pulumi.Input<List<ConnectivityGroupItem>> appliesToGroups;
  /// The name of the network manager connectivity configuration.
  final pulumi.Input<String>? configurationName;
  /// Connectivity topology type.
  final pulumi.Input<String> connectivityTopology;
  /// Flag if need to remove current existing peerings.
  final pulumi.Input<String>? deleteExistingPeering;
  /// A description of the connectivity configuration.
  final pulumi.Input<String>? description;
  /// List of hubItems
  final pulumi.Input<List<Hub>>? hubs;
  /// Flag if global mesh is supported.
  final pulumi.Input<String>? isGlobal;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectivityConfigurationArgs].
  /// [appliesToGroups] Groups for configuration
  /// [configurationName] The name of the network manager connectivity configuration.
  /// [connectivityTopology] Connectivity topology type.
  /// [deleteExistingPeering] Flag if need to remove current existing peerings.
  /// [description] A description of the connectivity configuration.
  /// [hubs] List of hubItems
  /// [isGlobal] Flag if global mesh is supported.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  ConnectivityConfigurationArgs({
    required this.appliesToGroups,
    this.configurationName,
    required this.connectivityTopology,
    this.deleteExistingPeering,
    this.description,
    this.hubs,
    this.isGlobal,
    required this.networkManagerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.mapInputValue<List<ConnectivityGroupItem>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<ConnectivityGroupItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationName': ?configurationName,
      'connectivityTopology': connectivityTopology,
      'deleteExistingPeering': ?deleteExistingPeering,
      'description': ?description,
      'hubs': ?pulumi.Input.mapOptionalInputValue<List<Hub>, List<Map<String, dynamic>>>(hubs, (value) => pulumi.Input.encodeList<Hub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isGlobal': ?isGlobal,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectivityConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConnectivityConfigurationArgs(
      appliesToGroups: (pulumi.Input.decodeList<ConnectivityGroupItem>(map['appliesToGroups'], (value) => ConnectivityGroupItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurationName: map['configurationName'] == null ? null : (map['configurationName'] as String).input(),
      connectivityTopology: (map['connectivityTopology'] as String).input(),
      deleteExistingPeering: map['deleteExistingPeering'] == null ? null : (map['deleteExistingPeering'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hubs: map['hubs'] == null ? null : (pulumi.Input.decodeList<Hub>(map['hubs'], (value) => Hub.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isGlobal: map['isGlobal'] == null ? null : (map['isGlobal'] as String).input(),
      networkManagerName: (map['networkManagerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

