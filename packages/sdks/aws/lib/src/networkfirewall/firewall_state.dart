// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_availability_zone_mapping.dart';
import 'firewall_encryption_configuration.dart';
import 'firewall_firewall_status.dart';
import 'firewall_subnet_mapping.dart';

/// Input properties used for looking up and filtering Firewall resources.
class FirewallState {
  /// The Amazon Resource Name (ARN) that identifies the firewall.
  final pulumi.Input<String>? arn;
  /// A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to `true`, you must first disable this protection before adding or removing Availability Zones.
  final pulumi.Input<bool>? availabilityZoneChangeProtection;
  /// Required when creating a transit gateway-attached firewall. Set of configuration blocks describing the avaiability availability where you want to create firewall endpoints for a transit gateway-attached firewall.
  final pulumi.Input<List<FirewallAvailabilityZoneMapping>>? availabilityZoneMappings;
  /// A flag indicating whether the firewall is protected against deletion. Use this setting to protect against accidentally deleting a firewall that is in use. Defaults to `false`.
  final pulumi.Input<bool>? deleteProtection;
  /// A friendly description of the firewall.
  final pulumi.Input<String>? description;
  /// Set of types for which to collect analysis metrics. See [Reporting on network traffic in Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/reporting.html) for details on how to use the data. Valid values: `TLS_SNI`, `HTTP_HOST`. Defaults to `[]`.
  final pulumi.Input<List<String>>? enabledAnalysisTypes;
  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final pulumi.Input<FirewallEncryptionConfiguration>? encryptionConfiguration;
  /// The Amazon Resource Name (ARN) of the VPC Firewall policy.
  final pulumi.Input<String>? firewallPolicyArn;
  /// A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  final pulumi.Input<bool>? firewallPolicyChangeProtection;
  /// Nested list of information about the current status of the firewall.
  final pulumi.Input<List<FirewallFirewallStatus>>? firewallStatuses;
  /// A friendly name of the firewall.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A flag indicating whether the firewall is protected against changes to the subnet associations. Use this setting to protect against accidentally modifying the subnet associations for a firewall that is in use. Defaults to `false`.
  final pulumi.Input<bool>? subnetChangeProtection;
  /// Required when creating a VPC attached firewall. Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details.
  final pulumi.Input<List<FirewallSubnetMapping>>? subnetMappings;
  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  final pulumi.Input<String>? transitGatewayId;
  /// The AWS account ID that owns the transit gateway.
  final pulumi.Input<String>? transitGatewayOwnerAccountId;
  /// A string token used when updating a firewall.
  final pulumi.Input<String>? updateToken;
  /// Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [FirewallState].
  /// [arn] The Amazon Resource Name (ARN) that identifies the firewall.
  /// [availabilityZoneChangeProtection] A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to `true`, you must first disable this protection before adding or removing Availability Zones.
  /// [availabilityZoneMappings] Required when creating a transit gateway-attached firewall. Set of configuration blocks describing the avaiability availability where you want to create firewall endpoints for a transit gateway-attached firewall.
  /// [deleteProtection] A flag indicating whether the firewall is protected against deletion. Use this setting to protect against accidentally deleting a firewall that is in use. Defaults to `false`.
  /// [description] A friendly description of the firewall.
  /// [enabledAnalysisTypes] Set of types for which to collect analysis metrics. See [Reporting on network traffic in Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/reporting.html) for details on how to use the data. Valid values: `TLS_SNI`, `HTTP_HOST`. Defaults to `[]`.
  /// [encryptionConfiguration] KMS encryption configuration settings. See Encryption Configuration below for details.
  /// [firewallPolicyArn] The Amazon Resource Name (ARN) of the VPC Firewall policy.
  /// [firewallPolicyChangeProtection] A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  /// [firewallStatuses] Nested list of information about the current status of the firewall.
  /// [name] A friendly name of the firewall.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetChangeProtection] A flag indicating whether the firewall is protected against changes to the subnet associations. Use this setting to protect against accidentally modifying the subnet associations for a firewall that is in use. Defaults to `false`.
  /// [subnetMappings] Required when creating a VPC attached firewall. Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayId] . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  /// [transitGatewayOwnerAccountId] The AWS account ID that owns the transit gateway.
  /// [updateToken] A string token used when updating a firewall.
  /// [vpcId] Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  FirewallState({
    this.arn,
    this.availabilityZoneChangeProtection,
    this.availabilityZoneMappings,
    this.deleteProtection,
    this.description,
    this.enabledAnalysisTypes,
    this.encryptionConfiguration,
    this.firewallPolicyArn,
    this.firewallPolicyChangeProtection,
    this.firewallStatuses,
    this.name,
    this.region,
    this.subnetChangeProtection,
    this.subnetMappings,
    this.tags,
    this.tagsAll,
    this.transitGatewayId,
    this.transitGatewayOwnerAccountId,
    this.updateToken,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZoneChangeProtection': ?availabilityZoneChangeProtection,
      'availabilityZoneMappings': ?pulumi.Input.mapOptionalInputValue<List<FirewallAvailabilityZoneMapping>, List<Map<String, dynamic>>>(availabilityZoneMappings, (value) => pulumi.Input.encodeList<FirewallAvailabilityZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deleteProtection': ?deleteProtection,
      'description': ?description,
      'enabledAnalysisTypes': ?enabledAnalysisTypes,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<FirewallEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'firewallPolicyArn': ?firewallPolicyArn,
      'firewallPolicyChangeProtection': ?firewallPolicyChangeProtection,
      'firewallStatuses': ?pulumi.Input.mapOptionalInputValue<List<FirewallFirewallStatus>, List<Map<String, dynamic>>>(firewallStatuses, (value) => pulumi.Input.encodeList<FirewallFirewallStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'subnetChangeProtection': ?subnetChangeProtection,
      'subnetMappings': ?pulumi.Input.mapOptionalInputValue<List<FirewallSubnetMapping>, List<Map<String, dynamic>>>(subnetMappings, (value) => pulumi.Input.encodeList<FirewallSubnetMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayId': ?transitGatewayId,
      'transitGatewayOwnerAccountId': ?transitGatewayOwnerAccountId,
      'updateToken': ?updateToken,
      'vpcId': ?vpcId,
    };
  }

  factory FirewallState.fromMap(Map<String, dynamic> map) {
    return FirewallState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZoneChangeProtection: map['availabilityZoneChangeProtection'] == null ? null : ((map['availabilityZoneChangeProtection'] as bool).input()).input(),
      availabilityZoneMappings: map['availabilityZoneMappings'] == null ? null : ((pulumi.Input.decodeList<FirewallAvailabilityZoneMapping>(map['availabilityZoneMappings']!, (value) => FirewallAvailabilityZoneMapping.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      deleteProtection: map['deleteProtection'] == null ? null : ((map['deleteProtection'] as bool).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      enabledAnalysisTypes: map['enabledAnalysisTypes'] == null ? null : (((map['enabledAnalysisTypes'] as List).cast<String>()).input()).input(),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : ((FirewallEncryptionConfiguration.fromMap((map['encryptionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      firewallPolicyArn: map['firewallPolicyArn'] == null ? null : ((map['firewallPolicyArn'] as String).input()).input(),
      firewallPolicyChangeProtection: map['firewallPolicyChangeProtection'] == null ? null : ((map['firewallPolicyChangeProtection'] as bool).input()).input(),
      firewallStatuses: map['firewallStatuses'] == null ? null : ((pulumi.Input.decodeList<FirewallFirewallStatus>(map['firewallStatuses']!, (value) => FirewallFirewallStatus.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subnetChangeProtection: map['subnetChangeProtection'] == null ? null : ((map['subnetChangeProtection'] as bool).input()).input(),
      subnetMappings: map['subnetMappings'] == null ? null : ((pulumi.Input.decodeList<FirewallSubnetMapping>(map['subnetMappings']!, (value) => FirewallSubnetMapping.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : ((map['transitGatewayId'] as String).input()).input(),
      transitGatewayOwnerAccountId: map['transitGatewayOwnerAccountId'] == null ? null : ((map['transitGatewayOwnerAccountId'] as String).input()).input(),
      updateToken: map['updateToken'] == null ? null : ((map['updateToken'] as String).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

