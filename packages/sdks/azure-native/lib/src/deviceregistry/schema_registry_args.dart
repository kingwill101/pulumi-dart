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
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<SystemAssignedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> namespace,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? schemaRegistryName,
    required pulumi.Output<String> storageAccountContainerUrl,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identity = pulumi.Input.asOptionalInput<SystemAssignedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      namespace = pulumi.Input.asInput<String>(namespace),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaRegistryName = pulumi.Input.asOptionalInput<String>(schemaRegistryName),
      storageAccountContainerUrl = pulumi.Input.asInput<String>(storageAccountContainerUrl),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<SystemAssignedServiceIdentity>(SystemAssignedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaRegistryName: map['schemaRegistryName'] == null ? null : pulumi.Output.create<String>(map['schemaRegistryName'] as String),
      storageAccountContainerUrl: pulumi.Output.create<String>(map['storageAccountContainerUrl'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

