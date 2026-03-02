// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_assigned_service_identity.dart';

/// {@template pulumi_deviceregistry_schema_registry_args_doc}
/// The set of arguments for SchemaRegistry.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_schema_registry_args_doc}
class SchemaRegistryArgs {
  /// Human-readable description of the schema registry.
  final pulumi.Input<String>? description;
  /// Human-readable display name.
  final pulumi.Input<String>? displayName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<SystemAssignedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Schema registry namespace. Uniquely identifies a schema registry within a tenant.
  final pulumi.Input<String> namespace;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema registry name parameter.
  final pulumi.Input<String>? schemaRegistryName;
  /// The Storage Account's Container URL where schemas will be stored.
  final pulumi.Input<String> storageAccountContainerUrl;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SchemaRegistryArgs].
  /// [description] Human-readable description of the schema registry.
  /// [displayName] Human-readable display name.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [namespace] Schema registry namespace. Uniquely identifies a schema registry within a tenant.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaRegistryName] Schema registry name parameter.
  /// [storageAccountContainerUrl] The Storage Account's Container URL where schemas will be stored.
  /// [tags] Resource tags.
  SchemaRegistryArgs({
    this.description,
    this.displayName,
    this.identity,
    this.location,
    required this.namespace,
    required this.resourceGroupName,
    this.schemaRegistryName,
    required this.storageAccountContainerUrl,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemAssignedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'namespace': namespace,
      'resourceGroupName': resourceGroupName,
      'schemaRegistryName': ?schemaRegistryName,
      'storageAccountContainerUrl': storageAccountContainerUrl,
      'tags': ?tags,
    };
  }

  factory SchemaRegistryArgs.fromMap(Map<String, dynamic> map) {
    return SchemaRegistryArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      identity: map['identity'] == null ? null : (SystemAssignedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaRegistryName: map['schemaRegistryName'] == null ? null : (map['schemaRegistryName'] as String).input(),
      storageAccountContainerUrl: (map['storageAccountContainerUrl'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

