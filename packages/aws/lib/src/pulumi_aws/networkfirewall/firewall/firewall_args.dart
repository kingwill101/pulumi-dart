// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firewall_availability_zone_mapping/firewall_availability_zone_mapping.dart';
import '../firewall_encryption_configuration/firewall_encryption_configuration.dart';
import '../firewall_subnet_mapping/firewall_subnet_mapping.dart';

/// The set of arguments for Firewall.
class FirewallArgs {
  /// A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to `true`, you must first disable this protection before adding or removing Availability Zones.
  final Input<bool>? availabilityZoneChangeProtection;

  /// Required when creating a transit gateway-attached firewall. Set of configuration blocks describing the avaiability availability where you want to create firewall endpoints for a transit gateway-attached firewall.
  final Input<List<FirewallAvailabilityZoneMapping>>? availabilityZoneMappings;

  /// A flag indicating whether the firewall is protected against deletion. Use this setting to protect against accidentally deleting a firewall that is in use. Defaults to `false`.
  final Input<bool>? deleteProtection;

  /// A friendly description of the firewall.
  final Input<String>? description;

  /// Set of types for which to collect analysis metrics. See [Reporting on network traffic in Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/reporting.html) for details on how to use the data. Valid values: `TLS_SNI`, `HTTP_HOST`. Defaults to `[]`.
  final Input<List<String>>? enabledAnalysisTypes;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final Input<FirewallEncryptionConfiguration>? encryptionConfiguration;

  /// The Amazon Resource Name (ARN) of the VPC Firewall policy.
  final Input<String> firewallPolicyArn;

  /// A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  final Input<bool>? firewallPolicyChangeProtection;

  /// A friendly name of the firewall.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A flag indicating whether the firewall is protected against changes to the subnet associations. Use this setting to protect against accidentally modifying the subnet associations for a firewall that is in use. Defaults to `false`.
  final Input<bool>? subnetChangeProtection;

  /// Required when creating a VPC attached firewall. Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details.
  final Input<List<FirewallSubnetMapping>>? subnetMappings;

  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  final Input<String>? transitGatewayId;

  /// Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  final Input<String>? vpcId;

  FirewallArgs({
    this.availabilityZoneChangeProtection,
    this.availabilityZoneMappings,
    this.deleteProtection,
    this.description,
    this.enabledAnalysisTypes,
    this.encryptionConfiguration,
    required this.firewallPolicyArn,
    this.firewallPolicyChangeProtection,
    this.name,
    this.region,
    this.subnetChangeProtection,
    this.subnetMappings,
    this.tags,
    this.transitGatewayId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneChangeProtectionValue =
        availabilityZoneChangeProtection;
    if (availabilityZoneChangeProtectionValue != null) {
      map['availabilityZoneChangeProtection'] =
          availabilityZoneChangeProtectionValue;
    }
    final availabilityZoneMappingsValue = availabilityZoneMappings;
    if (availabilityZoneMappingsValue != null) {
      map['availabilityZoneMappings'] = Input.mapOptionalInputValue<
              List<FirewallAvailabilityZoneMapping>,
              List<Map<String, dynamic>>>(
          availabilityZoneMappingsValue,
          (value) => Input.encodeList<FirewallAvailabilityZoneMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final deleteProtectionValue = deleteProtection;
    if (deleteProtectionValue != null) {
      map['deleteProtection'] = deleteProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enabledAnalysisTypesValue = enabledAnalysisTypes;
    if (enabledAnalysisTypesValue != null) {
      map['enabledAnalysisTypes'] = enabledAnalysisTypesValue;
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = Input.mapOptionalInputValue<
              FirewallEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    map['firewallPolicyArn'] = firewallPolicyArn;
    final firewallPolicyChangeProtectionValue = firewallPolicyChangeProtection;
    if (firewallPolicyChangeProtectionValue != null) {
      map['firewallPolicyChangeProtection'] =
          firewallPolicyChangeProtectionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subnetChangeProtectionValue = subnetChangeProtection;
    if (subnetChangeProtectionValue != null) {
      map['subnetChangeProtection'] = subnetChangeProtectionValue;
    }
    final subnetMappingsValue = subnetMappings;
    if (subnetMappingsValue != null) {
      map['subnetMappings'] = Input.mapOptionalInputValue<
              List<FirewallSubnetMapping>, List<Map<String, dynamic>>>(
          subnetMappingsValue,
          (value) =>
              Input.encodeList<FirewallSubnetMapping, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayIdValue = transitGatewayId;
    if (transitGatewayIdValue != null) {
      map['transitGatewayId'] = transitGatewayIdValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      availabilityZoneChangeProtection:
          Input.asOptionalInput<bool>(map['availabilityZoneChangeProtection']),
      availabilityZoneMappings:
          Input.asOptionalInput<List<FirewallAvailabilityZoneMapping>>(
              map['availabilityZoneMappings']),
      deleteProtection: Input.asOptionalInput<bool>(map['deleteProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      enabledAnalysisTypes:
          Input.asOptionalInput<List<String>>(map['enabledAnalysisTypes']),
      encryptionConfiguration:
          Input.asOptionalInput<FirewallEncryptionConfiguration>(
              map['encryptionConfiguration']),
      firewallPolicyArn: Input.asInput<String>(map['firewallPolicyArn']),
      firewallPolicyChangeProtection:
          Input.asOptionalInput<bool>(map['firewallPolicyChangeProtection']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetChangeProtection:
          Input.asOptionalInput<bool>(map['subnetChangeProtection']),
      subnetMappings: Input.asOptionalInput<List<FirewallSubnetMapping>>(
          map['subnetMappings']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId: Input.asOptionalInput<String>(map['transitGatewayId']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
