// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hsm_properties.dart';
import 'managed_hsm_sku.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_keyvault_managed_hsm_args_doc}
/// The set of arguments for ManagedHsm.
/// {@endtemplate}
/// {@macro pulumi_keyvault_managed_hsm_args_doc}
class ManagedHsmArgs {
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The supported Azure location where the managed HSM Pool should be created.
  final pulumi.Input<String>? location;
  /// Name of the managed HSM Pool
  final pulumi.Input<String>? name;
  /// Properties of the managed HSM
  final pulumi.Input<ManagedHsmProperties>? properties;
  /// Name of the resource group that contains the managed HSM pool.
  final pulumi.Input<String> resourceGroupName;
  /// SKU details
  final pulumi.Input<ManagedHsmSku>? sku;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedHsmArgs].
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The supported Azure location where the managed HSM Pool should be created.
  /// [name] Name of the managed HSM Pool
  /// [properties] Properties of the managed HSM
  /// [resourceGroupName] Name of the resource group that contains the managed HSM pool.
  /// [sku] SKU details
  /// [tags] Resource tags
  ManagedHsmArgs({
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<ManagedHsmProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ManagedHsmSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<ManagedHsmProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<ManagedHsmSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedHsmProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ManagedHsmSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ManagedHsmArgs.fromMap(Map<String, dynamic> map) {
    return ManagedHsmArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ManagedHsmProperties>(ManagedHsmProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ManagedHsmSku>(ManagedHsmSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

