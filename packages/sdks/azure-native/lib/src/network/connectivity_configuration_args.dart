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
    required pulumi.Output<List<ConnectivityGroupItem>> appliesToGroups,
    pulumi.Output<String>? configurationName,
    required pulumi.Output<String> connectivityTopology,
    pulumi.Output<String>? deleteExistingPeering,
    pulumi.Output<String>? description,
    pulumi.Output<List<Hub>>? hubs,
    pulumi.Output<String>? isGlobal,
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      appliesToGroups = pulumi.Input.asInput<List<ConnectivityGroupItem>>(appliesToGroups),
      configurationName = pulumi.Input.asOptionalInput<String>(configurationName),
      connectivityTopology = pulumi.Input.asInput<String>(connectivityTopology),
      deleteExistingPeering = pulumi.Input.asOptionalInput<String>(deleteExistingPeering),
      description = pulumi.Input.asOptionalInput<String>(description),
      hubs = pulumi.Input.asOptionalInput<List<Hub>>(hubs),
      isGlobal = pulumi.Input.asOptionalInput<String>(isGlobal),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      appliesToGroups: pulumi.Output.create<List<ConnectivityGroupItem>>(pulumi.Input.decodeList<ConnectivityGroupItem>(map['appliesToGroups'], (value) => ConnectivityGroupItem.fromMap((value as Map).cast<String, dynamic>()))),
      configurationName: map['configurationName'] == null ? null : pulumi.Output.create<String>(map['configurationName'] as String),
      connectivityTopology: pulumi.Output.create<String>(map['connectivityTopology'] as String),
      deleteExistingPeering: map['deleteExistingPeering'] == null ? null : pulumi.Output.create<String>(map['deleteExistingPeering'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hubs: map['hubs'] == null ? null : pulumi.Output.create<List<Hub>>(pulumi.Input.decodeList<Hub>(map['hubs'], (value) => Hub.fromMap((value as Map).cast<String, dynamic>()))),
      isGlobal: map['isGlobal'] == null ? null : pulumi.Output.create<String>(map['isGlobal'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

