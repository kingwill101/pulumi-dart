// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_firewall_availability_zone_mapping/get_firewall_availability_zone_mapping.dart';
import '../get_firewall_encryption_configuration/get_firewall_encryption_configuration.dart';
import '../get_firewall_firewall_status/get_firewall_firewall_status.dart';
import '../get_firewall_subnet_mapping/get_firewall_subnet_mapping.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// ARN of the firewall.
  final String arn;

  /// Indicates whether the firewall is protected against changes to its Availability Zone configuration.
  final bool availabilityZoneChangeProtection;

  /// Set of Availability Zones where the firewall endpoints are created for a transit gateway-attached firewall.
  final List<GetFirewallAvailabilityZoneMapping> availabilityZoneMappings;

  /// A flag indicating whether the firewall is protected against deletion.
  final bool deleteProtection;

  /// Description of the firewall.
  final String description;

  /// Set of types for which to collect analysis metrics.
  final List<String> enabledAnalysisTypes;

  /// AWS Key Management Service (AWS KMS) encryption settings for the firewall.
  final List<GetFirewallEncryptionConfiguration> encryptionConfigurations;

  /// ARN of the VPC Firewall policy.
  final String firewallPolicyArn;

  /// A flag indicating whether the firewall is protected against a change to the firewall policy association.
  final bool firewallPolicyChangeProtection;

  /// Nested list of information about the current status of the firewall.
  final List<GetFirewallFirewallStatus> firewallStatuses;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Descriptive name of the firewall.
  final String name;
  final String region;

  /// A flag indicating whether the firewall is protected against changes to the subnet associations.
  final bool subnetChangeProtection;

  /// Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet.
  final List<GetFirewallSubnetMapping> subnetMappings;

  /// Map of resource tags to associate with the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String> tags;

  /// The unique identifier of the transit gateway associated with this firewall.
  final String transitGatewayId;

  /// The AWS account ID that owns the transit gateway.
  final String transitGatewayOwnerAccountId;

  /// String token used when updating a firewall.
  final String updateToken;

  /// Unique identifier of the VPC where AWS Network Firewall should create the firewall.
  final String vpcId;

  GetFirewallResult({
    required this.arn,
    required this.availabilityZoneChangeProtection,
    required this.availabilityZoneMappings,
    required this.deleteProtection,
    required this.description,
    required this.enabledAnalysisTypes,
    required this.encryptionConfigurations,
    required this.firewallPolicyArn,
    required this.firewallPolicyChangeProtection,
    required this.firewallStatuses,
    required this.id,
    required this.name,
    required this.region,
    required this.subnetChangeProtection,
    required this.subnetMappings,
    required this.tags,
    required this.transitGatewayId,
    required this.transitGatewayOwnerAccountId,
    required this.updateToken,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['availabilityZoneChangeProtection'] = availabilityZoneChangeProtection;
    map['availabilityZoneMappings'] = Input.encodeList<
            GetFirewallAvailabilityZoneMapping, Map<String, dynamic>>(
        availabilityZoneMappings, (value) => value.toMap());
    map['deleteProtection'] = deleteProtection;
    map['description'] = description;
    map['enabledAnalysisTypes'] = enabledAnalysisTypes;
    map['encryptionConfigurations'] = Input.encodeList<
            GetFirewallEncryptionConfiguration, Map<String, dynamic>>(
        encryptionConfigurations, (value) => value.toMap());
    map['firewallPolicyArn'] = firewallPolicyArn;
    map['firewallPolicyChangeProtection'] = firewallPolicyChangeProtection;
    map['firewallStatuses'] =
        Input.encodeList<GetFirewallFirewallStatus, Map<String, dynamic>>(
            firewallStatuses, (value) => value.toMap());
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['subnetChangeProtection'] = subnetChangeProtection;
    map['subnetMappings'] =
        Input.encodeList<GetFirewallSubnetMapping, Map<String, dynamic>>(
            subnetMappings, (value) => value.toMap());
    map['tags'] = tags;
    map['transitGatewayId'] = transitGatewayId;
    map['transitGatewayOwnerAccountId'] = transitGatewayOwnerAccountId;
    map['updateToken'] = updateToken;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      arn: map['arn'] as String,
      availabilityZoneChangeProtection:
          map['availabilityZoneChangeProtection'] as bool,
      availabilityZoneMappings:
          Input.decodeList<GetFirewallAvailabilityZoneMapping>(
              map['availabilityZoneMappings'],
              (value) => GetFirewallAvailabilityZoneMapping.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deleteProtection: map['deleteProtection'] as bool,
      description: map['description'] as String,
      enabledAnalysisTypes:
          (map['enabledAnalysisTypes'] as List).cast<String>(),
      encryptionConfigurations:
          Input.decodeList<GetFirewallEncryptionConfiguration>(
              map['encryptionConfigurations'],
              (value) => GetFirewallEncryptionConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      firewallPolicyArn: map['firewallPolicyArn'] as String,
      firewallPolicyChangeProtection:
          map['firewallPolicyChangeProtection'] as bool,
      firewallStatuses: Input.decodeList<GetFirewallFirewallStatus>(
          map['firewallStatuses'],
          (value) => GetFirewallFirewallStatus.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      subnetChangeProtection: map['subnetChangeProtection'] as bool,
      subnetMappings: Input.decodeList<GetFirewallSubnetMapping>(
          map['subnetMappings'],
          (value) => GetFirewallSubnetMapping.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
      transitGatewayOwnerAccountId:
          map['transitGatewayOwnerAccountId'] as String,
      updateToken: map['updateToken'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
