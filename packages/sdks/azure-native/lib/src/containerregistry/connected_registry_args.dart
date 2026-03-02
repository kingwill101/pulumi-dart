// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'garbage_collection_properties.dart';
import 'logging_properties.dart';
import 'parent_properties.dart';

/// {@template pulumi_containerregistry_connected_registry_args_doc}
/// The set of arguments for ConnectedRegistry.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_connected_registry_args_doc}
class ConnectedRegistryArgs {
  /// The list of the ACR token resource IDs used to authenticate clients to the connected registry.
  final pulumi.Input<List<String>>? clientTokenIds;
  /// The name of the connected registry.
  final pulumi.Input<String>? connectedRegistryName;
  /// The garbage collection properties of the connected registry.
  final pulumi.Input<GarbageCollectionProperties>? garbageCollection;
  /// The logging properties of the connected registry.
  final pulumi.Input<LoggingProperties>? logging;
  /// The mode of the connected registry resource that indicates the permissions of the registry.
  final pulumi.Input<String> mode;
  /// The list of notifications subscription information for the connected registry.
  final pulumi.Input<List<String>>? notificationsList;
  /// The parent of the connected registry.
  final pulumi.Input<ParentProperties> parent;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectedRegistryArgs].
  /// [clientTokenIds] The list of the ACR token resource IDs used to authenticate clients to the connected registry.
  /// [connectedRegistryName] The name of the connected registry.
  /// [garbageCollection] The garbage collection properties of the connected registry.
  /// [logging] The logging properties of the connected registry.
  /// [mode] The mode of the connected registry resource that indicates the permissions of the registry.
  /// [notificationsList] The list of notifications subscription information for the connected registry.
  /// [parent] The parent of the connected registry.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ConnectedRegistryArgs({
    this.clientTokenIds,
    this.connectedRegistryName,
    this.garbageCollection,
    this.logging,
    required this.mode,
    this.notificationsList,
    required this.parent,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTokenIds': ?clientTokenIds,
      'connectedRegistryName': ?connectedRegistryName,
      'garbageCollection': ?pulumi.Input.mapOptionalInputValue<GarbageCollectionProperties, Map<String, dynamic>>(garbageCollection, (value) => value.toMap()),
      'logging': ?pulumi.Input.mapOptionalInputValue<LoggingProperties, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'mode': mode,
      'notificationsList': ?notificationsList,
      'parent': pulumi.Input.mapInputValue<ParentProperties, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectedRegistryArgs.fromMap(Map<String, dynamic> map) {
    return ConnectedRegistryArgs(
      clientTokenIds: map['clientTokenIds'] == null ? null : ((map['clientTokenIds'] as List).cast<String>()).input(),
      connectedRegistryName: map['connectedRegistryName'] == null ? null : (map['connectedRegistryName'] as String).input(),
      garbageCollection: map['garbageCollection'] == null ? null : (GarbageCollectionProperties.fromMap((map['garbageCollection'] as Map).cast<String, dynamic>())).input(),
      logging: map['logging'] == null ? null : (LoggingProperties.fromMap((map['logging'] as Map).cast<String, dynamic>())).input(),
      mode: (map['mode'] as String).input(),
      notificationsList: map['notificationsList'] == null ? null : ((map['notificationsList'] as List).cast<String>()).input(),
      parent: (ParentProperties.fromMap((map['parent'] as Map).cast<String, dynamic>())).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

