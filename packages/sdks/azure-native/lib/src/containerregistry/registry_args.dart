// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_property.dart';
import 'identity_properties.dart';
import 'network_rule_set.dart';
import 'policies.dart';
import 'sku.dart';

/// {@template pulumi_containerregistry_registry_args_doc}
/// The set of arguments for Registry.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_registry_args_doc}
class RegistryArgs {
  /// The value that indicates whether the admin user is enabled.
  final pulumi.Input<bool>? adminUserEnabled;
  /// Enables registry-wide pull from unauthenticated clients.
  final pulumi.Input<bool>? anonymousPullEnabled;
  /// Enable a single data endpoint per region for serving data.
  final pulumi.Input<bool>? dataEndpointEnabled;
  /// The encryption settings of container registry.
  final pulumi.Input<EncryptionProperty>? encryption;
  /// The identity of the container registry.
  final pulumi.Input<IdentityProperties>? identity;
  /// The location of the resource. This cannot be changed after the resource is created.
  final pulumi.Input<String>? location;
  /// Whether to allow trusted Azure services to access a network restricted registry.
  final pulumi.Input<String>? networkRuleBypassOptions;
  /// The network rule set for a container registry.
  final pulumi.Input<NetworkRuleSet>? networkRuleSet;
  /// The policies for a container registry.
  final pulumi.Input<Policies>? policies;
  /// Whether or not public network access is allowed for the container registry.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the container registry.
  final pulumi.Input<String>? registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the container registry.
  final pulumi.Input<Sku> sku;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether or not zone redundancy is enabled for this container registry
  final pulumi.Input<String>? zoneRedundancy;

  /// Creates a new [RegistryArgs].
  /// [adminUserEnabled] The value that indicates whether the admin user is enabled.
  /// [anonymousPullEnabled] Enables registry-wide pull from unauthenticated clients.
  /// [dataEndpointEnabled] Enable a single data endpoint per region for serving data.
  /// [encryption] The encryption settings of container registry.
  /// [identity] The identity of the container registry.
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [networkRuleBypassOptions] Whether to allow trusted Azure services to access a network restricted registry.
  /// [networkRuleSet] The network rule set for a container registry.
  /// [policies] The policies for a container registry.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the container registry.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the container registry.
  /// [tags] The tags of the resource.
  /// [zoneRedundancy] Whether or not zone redundancy is enabled for this container registry
  RegistryArgs({
    this.adminUserEnabled,
    this.anonymousPullEnabled,
    this.dataEndpointEnabled,
    this.encryption,
    this.identity,
    this.location,
    this.networkRuleBypassOptions,
    this.networkRuleSet,
    this.policies,
    this.publicNetworkAccess,
    this.registryName,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.zoneRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUserEnabled': ?adminUserEnabled,
      'anonymousPullEnabled': ?anonymousPullEnabled,
      'dataEndpointEnabled': ?dataEndpointEnabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionProperty, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkRuleBypassOptions': ?networkRuleBypassOptions,
      'networkRuleSet': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSet, Map<String, dynamic>>(networkRuleSet, (value) => value.toMap()),
      'policies': ?pulumi.Input.mapOptionalInputValue<Policies, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'registryName': ?registryName,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory RegistryArgs.fromMap(Map<String, dynamic> map) {
    return RegistryArgs(
      adminUserEnabled: map['adminUserEnabled'] == null ? null : (map['adminUserEnabled']! as bool).input(),
      anonymousPullEnabled: map['anonymousPullEnabled'] == null ? null : (map['anonymousPullEnabled']! as bool).input(),
      dataEndpointEnabled: map['dataEndpointEnabled'] == null ? null : (map['dataEndpointEnabled']! as bool).input(),
      encryption: map['encryption'] == null ? null : (EncryptionProperty.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (IdentityProperties.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkRuleBypassOptions: map['networkRuleBypassOptions'] == null ? null : (map['networkRuleBypassOptions']! as String).input(),
      networkRuleSet: map['networkRuleSet'] == null ? null : (NetworkRuleSet.fromMap((map['networkRuleSet']! as Map).cast<String, dynamic>())).input(),
      policies: map['policies'] == null ? null : (Policies.fromMap((map['policies']! as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      registryName: map['registryName'] == null ? null : (map['registryName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zoneRedundancy: map['zoneRedundancy'] == null ? null : (map['zoneRedundancy']! as String).input(),
    );
  }
}

