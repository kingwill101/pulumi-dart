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
  final pulumi.Input<bool?>? adminUserEnabled;
  /// Enables registry-wide pull from unauthenticated clients.
  final pulumi.Input<bool?>? anonymousPullEnabled;
  /// Enable a single data endpoint per region for serving data.
  final pulumi.Input<bool?>? dataEndpointEnabled;
  /// The encryption settings of container registry.
  final pulumi.Input<EncryptionProperty?>? encryption;
  /// The identity of the container registry.
  final pulumi.Input<IdentityProperties?>? identity;
  /// The location of the resource. This cannot be changed after the resource is created.
  final pulumi.Input<String?>? location;
  /// Whether to allow trusted Azure services to access a network restricted registry.
  final pulumi.Input<dynamic>? networkRuleBypassOptions;
  /// The network rule set for a container registry.
  final pulumi.Input<NetworkRuleSet?>? networkRuleSet;
  /// The policies for a container registry.
  final pulumi.Input<Policies?>? policies;
  /// Whether or not public network access is allowed for the container registry.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The name of the container registry.
  final pulumi.Input<String?>? registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the container registry.
  final pulumi.Input<Sku> sku;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Whether or not zone redundancy is enabled for this container registry
  final pulumi.Input<dynamic>? zoneRedundancy;

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
    pulumi.Input<bool?>? adminUserEnabled,
    pulumi.Input<bool?>? anonymousPullEnabled,
    this.dataEndpointEnabled,
    this.encryption,
    this.identity,
    this.location,
    pulumi.Input<dynamic>? networkRuleBypassOptions,
    this.networkRuleSet,
    this.policies,
    pulumi.Input<dynamic>? publicNetworkAccess,
    this.registryName,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    pulumi.Input<dynamic>? zoneRedundancy,
  }) : adminUserEnabled = adminUserEnabled ?? pulumi.Input.fromValue(false), anonymousPullEnabled = anonymousPullEnabled ?? pulumi.Input.fromValue(false), networkRuleBypassOptions = networkRuleBypassOptions ?? pulumi.Input.fromValue('AzureServices'), publicNetworkAccess = publicNetworkAccess ?? pulumi.Input.fromValue('Enabled'), zoneRedundancy = zoneRedundancy ?? pulumi.Input.fromValue('Disabled');

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
      adminUserEnabled: (() { final guardedValue = map['adminUserEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      anonymousPullEnabled: (() { final guardedValue = map['anonymousPullEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataEndpointEnabled: (() { final guardedValue = map['dataEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRuleBypassOptions: (() { final guardedValue = map['networkRuleBypassOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      networkRuleSet: (() { final guardedValue = map['networkRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Policies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      registryName: (() { final guardedValue = map['registryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundancy: (() { final guardedValue = map['zoneRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
