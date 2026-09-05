// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_availability_zone_mapping.dart';
import 'get_firewall_encryption_configuration.dart';
import 'get_firewall_firewall_status.dart';
import 'get_firewall_subnet_mapping.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// ARN of the firewall.
  final String? arn;
  /// Indicates whether the firewall is protected against changes to its Availability Zone configuration.
  final bool? availabilityZoneChangeProtection;
  /// Set of Availability Zones where the firewall endpoints are created for a transit gateway-attached firewall.
  final List<GetFirewallAvailabilityZoneMapping>? availabilityZoneMappings;
  /// A flag indicating whether the firewall is protected against deletion.
  final bool? deleteProtection;
  /// Description of the firewall.
  final String? description;
  /// Set of types for which to collect analysis metrics.
  final List<String>? enabledAnalysisTypes;
  /// KMS encryption settings for the firewall.
  final List<GetFirewallEncryptionConfiguration>? encryptionConfigurations;
  /// ARN of the VPC Firewall policy.
  final String? firewallPolicyArn;
  /// A flag indicating whether the firewall is protected against a change to the firewall policy association.
  final bool? firewallPolicyChangeProtection;
  /// Nested list of information about the current status of the firewall.
  final List<GetFirewallFirewallStatus>? firewallStatuses;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Descriptive name of the firewall.
  final String? name;
  final String? region;
  /// A flag indicating whether the firewall is protected against changes to the subnet associations.
  final bool? subnetChangeProtection;
  /// Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet.
  final List<GetFirewallSubnetMapping>? subnetMappings;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;
  /// The unique identifier of the transit gateway associated with this firewall.
  final String? transitGatewayId;
  /// The AWS account ID that owns the transit gateway.
  final String? transitGatewayOwnerAccountId;
  /// String token used when updating a firewall.
  final String? updateToken;
  /// Unique identifier of the VPC where AWS Network Firewall should create the firewall.
  final String? vpcId;

  /// Creates a new [GetFirewallResult].
  /// [arn] ARN of the firewall.
  /// [availabilityZoneChangeProtection] Indicates whether the firewall is protected against changes to its Availability Zone configuration.
  /// [availabilityZoneMappings] Set of Availability Zones where the firewall endpoints are created for a transit gateway-attached firewall.
  /// [deleteProtection] A flag indicating whether the firewall is protected against deletion.
  /// [description] Description of the firewall.
  /// [enabledAnalysisTypes] Set of types for which to collect analysis metrics.
  /// [encryptionConfigurations] KMS encryption settings for the firewall.
  /// [firewallPolicyArn] ARN of the VPC Firewall policy.
  /// [firewallPolicyChangeProtection] A flag indicating whether the firewall is protected against a change to the firewall policy association.
  /// [firewallStatuses] Nested list of information about the current status of the firewall.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Descriptive name of the firewall.
  /// [region] Optional.
  /// [subnetChangeProtection] A flag indicating whether the firewall is protected against changes to the subnet associations.
  /// [subnetMappings] Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] The unique identifier of the transit gateway associated with this firewall.
  /// [transitGatewayOwnerAccountId] The AWS account ID that owns the transit gateway.
  /// [updateToken] String token used when updating a firewall.
  /// [vpcId] Unique identifier of the VPC where AWS Network Firewall should create the firewall.
  const GetFirewallResult({
    this.arn,
    this.availabilityZoneChangeProtection,
    this.availabilityZoneMappings,
    this.deleteProtection,
    this.description,
    this.enabledAnalysisTypes,
    this.encryptionConfigurations,
    this.firewallPolicyArn,
    this.firewallPolicyChangeProtection,
    this.firewallStatuses,
    this.id,
    this.name,
    this.region,
    this.subnetChangeProtection,
    this.subnetMappings,
    this.tags,
    this.transitGatewayId,
    this.transitGatewayOwnerAccountId,
    this.updateToken,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZoneChangeProtection': ?availabilityZoneChangeProtection,
      'availabilityZoneMappings': ?(() { final guardedValue = availabilityZoneMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallAvailabilityZoneMapping, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deleteProtection': ?deleteProtection,
      'description': ?description,
      'enabledAnalysisTypes': ?enabledAnalysisTypes,
      'encryptionConfigurations': ?(() { final guardedValue = encryptionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallEncryptionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'firewallPolicyArn': ?firewallPolicyArn,
      'firewallPolicyChangeProtection': ?firewallPolicyChangeProtection,
      'firewallStatuses': ?(() { final guardedValue = firewallStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallFirewallStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'subnetChangeProtection': ?subnetChangeProtection,
      'subnetMappings': ?(() { final guardedValue = subnetMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallSubnetMapping, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
      'transitGatewayOwnerAccountId': ?transitGatewayOwnerAccountId,
      'updateToken': ?updateToken,
      'vpcId': ?vpcId,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneChangeProtection: (() { final guardedValue = map['availabilityZoneChangeProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      availabilityZoneMappings: (() { final guardedValue = map['availabilityZoneMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallAvailabilityZoneMapping>(guardedValue, (value) => GetFirewallAvailabilityZoneMapping.fromMap((value as Map).cast<String, dynamic>())); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledAnalysisTypes: (() { final guardedValue = map['enabledAnalysisTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      encryptionConfigurations: (() { final guardedValue = map['encryptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallEncryptionConfiguration>(guardedValue, (value) => GetFirewallEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      firewallPolicyArn: (() { final guardedValue = map['firewallPolicyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallPolicyChangeProtection: (() { final guardedValue = map['firewallPolicyChangeProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      firewallStatuses: (() { final guardedValue = map['firewallStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallFirewallStatus>(guardedValue, (value) => GetFirewallFirewallStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetChangeProtection: (() { final guardedValue = map['subnetChangeProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      subnetMappings: (() { final guardedValue = map['subnetMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallSubnetMapping>(guardedValue, (value) => GetFirewallSubnetMapping.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayOwnerAccountId: (() { final guardedValue = map['transitGatewayOwnerAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateToken: (() { final guardedValue = map['updateToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
