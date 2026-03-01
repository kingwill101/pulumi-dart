// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'registry_machinelearningservices.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_registry_args_doc}
/// The set of arguments for Registry.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_args_doc}
class RegistryArgs {
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String>? registryName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<RegistryMachinelearningservices> registryProperties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sku details required for ARM contract for Autoscaling.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RegistryArgs].
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [registryProperties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  RegistryArgs({
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? registryName,
    required pulumi.Output<RegistryMachinelearningservices> registryProperties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      registryName = pulumi.Input.asOptionalInput<String>(registryName),
      registryProperties = pulumi.Input.asInput<RegistryMachinelearningservices>(registryProperties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'registryName': ?registryName,
      'registryProperties': registryProperties,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory RegistryArgs.fromMap(Map<String, dynamic> map) {
    return RegistryArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      registryName: map['registryName'] == null ? null : pulumi.Output.create<String>(map['registryName'] as String),
      registryProperties: pulumi.Output.create<RegistryMachinelearningservices>(map['registryProperties'] as RegistryMachinelearningservices),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

