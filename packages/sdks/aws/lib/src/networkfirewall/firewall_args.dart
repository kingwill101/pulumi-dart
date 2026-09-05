// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_availability_zone_mapping.dart';
import 'firewall_encryption_configuration.dart';
import 'firewall_subnet_mapping.dart';

/// {@template pulumi_networkfirewall_firewall_firewall_args_doc}
/// The set of arguments for Firewall.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_firewall_firewall_args_doc}
class FirewallArgs {
  /// A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to `true`, you must first disable this protection before adding or removing Availability Zones.
  final pulumi.Input<bool?>? availabilityZoneChangeProtection;
  /// Required when creating a transit gateway-attached firewall. Set of configuration blocks describing the avaiability availability where you want to create firewall endpoints for a transit gateway-attached firewall.
  final pulumi.Input<List<FirewallAvailabilityZoneMapping>?>? availabilityZoneMappings;
  /// A flag indicating whether the firewall is protected against deletion. Use this setting to protect against accidentally deleting a firewall that is in use. Defaults to `false`.
  final pulumi.Input<bool?>? deleteProtection;
  /// A friendly description of the firewall.
  final pulumi.Input<String?>? description;
  /// Set of types for which to collect analysis metrics. See [Reporting on network traffic in Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/reporting.html) for details on how to use the data. Valid values: `TLS_SNI`, `HTTP_HOST`. Defaults to `[]`.
  final pulumi.Input<List<String>?>? enabledAnalysisTypes;
  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final pulumi.Input<FirewallEncryptionConfiguration?>? encryptionConfiguration;
  /// ARN of the VPC Firewall policy.
  final pulumi.Input<String> firewallPolicyArn;
  /// A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  final pulumi.Input<bool?>? firewallPolicyChangeProtection;
  /// A friendly name of the firewall.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A flag indicating whether the firewall is protected against changes to the subnet associations. Use this setting to protect against accidentally modifying the subnet associations for a firewall that is in use. Defaults to `false`.
  final pulumi.Input<bool?>? subnetChangeProtection;
  /// Required when creating a VPC attached firewall. Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details.
  final pulumi.Input<List<FirewallSubnetMapping>?>? subnetMappings;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  final pulumi.Input<String?>? transitGatewayId;
  /// Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [FirewallArgs].
  /// [availabilityZoneChangeProtection] A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to `true`, you must first disable this protection before adding or removing Availability Zones.
  /// [availabilityZoneMappings] Required when creating a transit gateway-attached firewall. Set of configuration blocks describing the avaiability availability where you want to create firewall endpoints for a transit gateway-attached firewall.
  /// [deleteProtection] A flag indicating whether the firewall is protected against deletion. Use this setting to protect against accidentally deleting a firewall that is in use. Defaults to `false`.
  /// [description] A friendly description of the firewall.
  /// [enabledAnalysisTypes] Set of types for which to collect analysis metrics. See [Reporting on network traffic in Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/reporting.html) for details on how to use the data. Valid values: `TLS_SNI`, `HTTP_HOST`. Defaults to `[]`.
  /// [encryptionConfiguration] KMS encryption configuration settings. See Encryption Configuration below for details.
  /// [firewallPolicyArn] ARN of the VPC Firewall policy.
  /// [firewallPolicyChangeProtection] A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  /// [name] A friendly name of the firewall.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetChangeProtection] A flag indicating whether the firewall is protected against changes to the subnet associations. Use this setting to protect against accidentally modifying the subnet associations for a firewall that is in use. Defaults to `false`.
  /// [subnetMappings] Required when creating a VPC attached firewall. Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  /// [vpcId] Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  const FirewallArgs({
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
    return <String, dynamic>{
      'availabilityZoneChangeProtection': ?availabilityZoneChangeProtection,
      'availabilityZoneMappings': ?pulumi.Input.mapOptionalInputValue<List<FirewallAvailabilityZoneMapping>, List<Map<String, dynamic>>>(availabilityZoneMappings, (value) => pulumi.Input.encodeList<FirewallAvailabilityZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deleteProtection': ?deleteProtection,
      'description': ?description,
      'enabledAnalysisTypes': ?enabledAnalysisTypes,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<FirewallEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'firewallPolicyArn': firewallPolicyArn,
      'firewallPolicyChangeProtection': ?firewallPolicyChangeProtection,
      'name': ?name,
      'region': ?region,
      'subnetChangeProtection': ?subnetChangeProtection,
      'subnetMappings': ?pulumi.Input.mapOptionalInputValue<List<FirewallSubnetMapping>, List<Map<String, dynamic>>>(subnetMappings, (value) => pulumi.Input.encodeList<FirewallSubnetMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
      'vpcId': ?vpcId,
    };
  }

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      availabilityZoneChangeProtection: (() { final guardedValue = map['availabilityZoneChangeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZoneMappings: (() { final guardedValue = map['availabilityZoneMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallAvailabilityZoneMapping>(guardedValue, (value) => FirewallAvailabilityZoneMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledAnalysisTypes: (() { final guardedValue = map['enabledAnalysisTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firewallPolicyArn: pulumi.Input.fromValue(map['firewallPolicyArn'] as String),
      firewallPolicyChangeProtection: (() { final guardedValue = map['firewallPolicyChangeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetChangeProtection: (() { final guardedValue = map['subnetChangeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetMappings: (() { final guardedValue = map['subnetMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallSubnetMapping>(guardedValue, (value) => FirewallSubnetMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
