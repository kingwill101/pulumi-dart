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
    pulumi.Output<List<String>>? clientTokenIds,
    pulumi.Output<String>? connectedRegistryName,
    pulumi.Output<GarbageCollectionProperties>? garbageCollection,
    pulumi.Output<LoggingProperties>? logging,
    required pulumi.Output<String> mode,
    pulumi.Output<List<String>>? notificationsList,
    required pulumi.Output<ParentProperties> parent,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clientTokenIds = pulumi.Input.asOptionalInput<List<String>>(clientTokenIds),
      connectedRegistryName = pulumi.Input.asOptionalInput<String>(connectedRegistryName),
      garbageCollection = pulumi.Input.asOptionalInput<GarbageCollectionProperties>(garbageCollection),
      logging = pulumi.Input.asOptionalInput<LoggingProperties>(logging),
      mode = pulumi.Input.asInput<String>(mode),
      notificationsList = pulumi.Input.asOptionalInput<List<String>>(notificationsList),
      parent = pulumi.Input.asInput<ParentProperties>(parent),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      clientTokenIds: map['clientTokenIds'] == null ? null : pulumi.Output.create<List<String>>((map['clientTokenIds'] as List).cast<String>()),
      connectedRegistryName: map['connectedRegistryName'] == null ? null : pulumi.Output.create<String>(map['connectedRegistryName'] as String),
      garbageCollection: map['garbageCollection'] == null ? null : pulumi.Output.create<GarbageCollectionProperties>(GarbageCollectionProperties.fromMap((map['garbageCollection'] as Map).cast<String, dynamic>())),
      logging: map['logging'] == null ? null : pulumi.Output.create<LoggingProperties>(LoggingProperties.fromMap((map['logging'] as Map).cast<String, dynamic>())),
      mode: pulumi.Output.create<String>(map['mode'] as String),
      notificationsList: map['notificationsList'] == null ? null : pulumi.Output.create<List<String>>((map['notificationsList'] as List).cast<String>()),
      parent: pulumi.Output.create<ParentProperties>(ParentProperties.fromMap((map['parent'] as Map).cast<String, dynamic>())),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

