// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_application_rule_collection.dart';
import 'azure_firewall_autoscale_configuration.dart';
import 'azure_firewall_ipconfiguration.dart';
import 'azure_firewall_nat_rule_collection.dart';
import 'azure_firewall_network_rule_collection.dart';
import 'azure_firewall_sku.dart';
import 'hub_ipaddresses.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_azure_firewall_args_doc}
/// The set of arguments for AzureFirewall.
/// {@endtemplate}
/// {@macro pulumi_network_azure_firewall_args_doc}
class AzureFirewallArgs {
  /// The additional properties used to further config this azure firewall.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// Collection of application rule collections used by Azure Firewall.
  final pulumi.Input<List<AzureFirewallApplicationRuleCollection>>? applicationRuleCollections;
  /// Properties to provide a custom autoscale configuration to this azure firewall.
  final pulumi.Input<AzureFirewallAutoscaleConfiguration>? autoscaleConfiguration;
  /// The name of the Azure Firewall.
  final pulumi.Input<String>? azureFirewallName;
  /// The firewallPolicy associated with this azure firewall.
  final pulumi.Input<SubResource>? firewallPolicy;
  /// IP addresses associated with AzureFirewall.
  final pulumi.Input<HubIPAddresses>? hubIPAddresses;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// IP configuration of the Azure Firewall resource.
  final pulumi.Input<List<AzureFirewallIPConfiguration>>? ipConfigurations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// IP configuration of the Azure Firewall used for management traffic.
  final pulumi.Input<AzureFirewallIPConfiguration>? managementIpConfiguration;
  /// Collection of NAT rule collections used by Azure Firewall.
  final pulumi.Input<List<AzureFirewallNatRuleCollection>>? natRuleCollections;
  /// Collection of network rule collections used by Azure Firewall.
  final pulumi.Input<List<AzureFirewallNetworkRuleCollection>>? networkRuleCollections;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The Azure Firewall Resource SKU.
  final pulumi.Input<AzureFirewallSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The operation mode for Threat Intelligence.
  final pulumi.Input<String>? threatIntelMode;
  /// The virtualHub to which the firewall belongs.
  final pulumi.Input<SubResource>? virtualHub;
  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [AzureFirewallArgs].
  /// [additionalProperties] The additional properties used to further config this azure firewall.
  /// [applicationRuleCollections] Collection of application rule collections used by Azure Firewall.
  /// [autoscaleConfiguration] Properties to provide a custom autoscale configuration to this azure firewall.
  /// [azureFirewallName] The name of the Azure Firewall.
  /// [firewallPolicy] The firewallPolicy associated with this azure firewall.
  /// [hubIPAddresses] IP addresses associated with AzureFirewall.
  /// [id] Resource ID.
  /// [ipConfigurations] IP configuration of the Azure Firewall resource.
  /// [location] Resource location.
  /// [managementIpConfiguration] IP configuration of the Azure Firewall used for management traffic.
  /// [natRuleCollections] Collection of NAT rule collections used by Azure Firewall.
  /// [networkRuleCollections] Collection of network rule collections used by Azure Firewall.
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The Azure Firewall Resource SKU.
  /// [tags] Resource tags.
  /// [threatIntelMode] The operation mode for Threat Intelligence.
  /// [virtualHub] The virtualHub to which the firewall belongs.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  AzureFirewallArgs({
    this.additionalProperties,
    this.applicationRuleCollections,
    this.autoscaleConfiguration,
    this.azureFirewallName,
    this.firewallPolicy,
    this.hubIPAddresses,
    this.id,
    this.ipConfigurations,
    this.location,
    this.managementIpConfiguration,
    this.natRuleCollections,
    this.networkRuleCollections,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.threatIntelMode,
    this.virtualHub,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'applicationRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallApplicationRuleCollection>, List<Map<String, dynamic>>>(applicationRuleCollections, (value) => pulumi.Input.encodeList<AzureFirewallApplicationRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscaleConfiguration': ?pulumi.Input.mapOptionalInputValue<AzureFirewallAutoscaleConfiguration, Map<String, dynamic>>(autoscaleConfiguration, (value) => value.toMap()),
      'azureFirewallName': ?azureFirewallName,
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'hubIPAddresses': ?pulumi.Input.mapOptionalInputValue<HubIPAddresses, Map<String, dynamic>>(hubIPAddresses, (value) => value.toMap()),
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallIPConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<AzureFirewallIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'managementIpConfiguration': ?pulumi.Input.mapOptionalInputValue<AzureFirewallIPConfiguration, Map<String, dynamic>>(managementIpConfiguration, (value) => value.toMap()),
      'natRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallNatRuleCollection>, List<Map<String, dynamic>>>(natRuleCollections, (value) => pulumi.Input.encodeList<AzureFirewallNatRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallNetworkRuleCollection>, List<Map<String, dynamic>>>(networkRuleCollections, (value) => pulumi.Input.encodeList<AzureFirewallNetworkRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<AzureFirewallSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'threatIntelMode': ?threatIntelMode,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory AzureFirewallArgs.fromMap(Map<String, dynamic> map) {
    return AzureFirewallArgs(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      applicationRuleCollections: map['applicationRuleCollections'] == null ? null : (pulumi.Input.decodeList<AzureFirewallApplicationRuleCollection>(map['applicationRuleCollections']!, (value) => AzureFirewallApplicationRuleCollection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : (AzureFirewallAutoscaleConfiguration.fromMap((map['autoscaleConfiguration']! as Map).cast<String, dynamic>())).input(),
      azureFirewallName: map['azureFirewallName'] == null ? null : (map['azureFirewallName']! as String).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (SubResource.fromMap((map['firewallPolicy']! as Map).cast<String, dynamic>())).input(),
      hubIPAddresses: map['hubIPAddresses'] == null ? null : (HubIPAddresses.fromMap((map['hubIPAddresses']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<AzureFirewallIPConfiguration>(map['ipConfigurations']!, (value) => AzureFirewallIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managementIpConfiguration: map['managementIpConfiguration'] == null ? null : (AzureFirewallIPConfiguration.fromMap((map['managementIpConfiguration']! as Map).cast<String, dynamic>())).input(),
      natRuleCollections: map['natRuleCollections'] == null ? null : (pulumi.Input.decodeList<AzureFirewallNatRuleCollection>(map['natRuleCollections']!, (value) => AzureFirewallNatRuleCollection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkRuleCollections: map['networkRuleCollections'] == null ? null : (pulumi.Input.decodeList<AzureFirewallNetworkRuleCollection>(map['networkRuleCollections']!, (value) => AzureFirewallNetworkRuleCollection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (AzureFirewallSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      threatIntelMode: map['threatIntelMode'] == null ? null : (map['threatIntelMode']! as String).input(),
      virtualHub: map['virtualHub'] == null ? null : (SubResource.fromMap((map['virtualHub']! as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

