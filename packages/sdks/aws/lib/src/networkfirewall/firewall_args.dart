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
  final pulumi.Input<String> firewallPolicyArn;
  /// A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  final pulumi.Input<bool>? firewallPolicyChangeProtection;
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
  /// . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  final pulumi.Input<String>? transitGatewayId;
  /// Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [FirewallArgs].
  /// [availabilityZoneChangeProtection] A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to `true`, you must first disable this protection before adding or removing Availability Zones.
  /// [availabilityZoneMappings] Required when creating a transit gateway-attached firewall. Set of configuration blocks describing the avaiability availability where you want to create firewall endpoints for a transit gateway-attached firewall.
  /// [deleteProtection] A flag indicating whether the firewall is protected against deletion. Use this setting to protect against accidentally deleting a firewall that is in use. Defaults to `false`.
  /// [description] A friendly description of the firewall.
  /// [enabledAnalysisTypes] Set of types for which to collect analysis metrics. See [Reporting on network traffic in Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/reporting.html) for details on how to use the data. Valid values: `TLS_SNI`, `HTTP_HOST`. Defaults to `[]`.
  /// [encryptionConfiguration] KMS encryption configuration settings. See Encryption Configuration below for details.
  /// [firewallPolicyArn] The Amazon Resource Name (ARN) of the VPC Firewall policy.
  /// [firewallPolicyChangeProtection] A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  /// [name] A friendly name of the firewall.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetChangeProtection] A flag indicating whether the firewall is protected against changes to the subnet associations. Use this setting to protect against accidentally modifying the subnet associations for a firewall that is in use. Defaults to `false`.
  /// [subnetMappings] Required when creating a VPC attached firewall. Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  /// [vpcId] Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  FirewallArgs({
    pulumi.Output<bool>? availabilityZoneChangeProtection,
    pulumi.Output<List<FirewallAvailabilityZoneMapping>>? availabilityZoneMappings,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? enabledAnalysisTypes,
    pulumi.Output<FirewallEncryptionConfiguration>? encryptionConfiguration,
    required pulumi.Output<String> firewallPolicyArn,
    pulumi.Output<bool>? firewallPolicyChangeProtection,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? subnetChangeProtection,
    pulumi.Output<List<FirewallSubnetMapping>>? subnetMappings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitGatewayId,
    pulumi.Output<String>? vpcId,
  }) :
      availabilityZoneChangeProtection = pulumi.Input.asOptionalInput<bool>(availabilityZoneChangeProtection),
      availabilityZoneMappings = pulumi.Input.asOptionalInput<List<FirewallAvailabilityZoneMapping>>(availabilityZoneMappings),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabledAnalysisTypes = pulumi.Input.asOptionalInput<List<String>>(enabledAnalysisTypes),
      encryptionConfiguration = pulumi.Input.asOptionalInput<FirewallEncryptionConfiguration>(encryptionConfiguration),
      firewallPolicyArn = pulumi.Input.asInput<String>(firewallPolicyArn),
      firewallPolicyChangeProtection = pulumi.Input.asOptionalInput<bool>(firewallPolicyChangeProtection),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetChangeProtection = pulumi.Input.asOptionalInput<bool>(subnetChangeProtection),
      subnetMappings = pulumi.Input.asOptionalInput<List<FirewallSubnetMapping>>(subnetMappings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      availabilityZoneChangeProtection: map['availabilityZoneChangeProtection'] == null ? null : pulumi.Output.create<bool>(map['availabilityZoneChangeProtection'] as bool),
      availabilityZoneMappings: map['availabilityZoneMappings'] == null ? null : pulumi.Output.create<List<FirewallAvailabilityZoneMapping>>(pulumi.Input.decodeList<FirewallAvailabilityZoneMapping>(map['availabilityZoneMappings'], (value) => FirewallAvailabilityZoneMapping.fromMap((value as Map).cast<String, dynamic>()))),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabledAnalysisTypes: map['enabledAnalysisTypes'] == null ? null : pulumi.Output.create<List<String>>((map['enabledAnalysisTypes'] as List).cast<String>()),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<FirewallEncryptionConfiguration>(FirewallEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      firewallPolicyArn: pulumi.Output.create<String>(map['firewallPolicyArn'] as String),
      firewallPolicyChangeProtection: map['firewallPolicyChangeProtection'] == null ? null : pulumi.Output.create<bool>(map['firewallPolicyChangeProtection'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetChangeProtection: map['subnetChangeProtection'] == null ? null : pulumi.Output.create<bool>(map['subnetChangeProtection'] as bool),
      subnetMappings: map['subnetMappings'] == null ? null : pulumi.Output.create<List<FirewallSubnetMapping>>(pulumi.Input.decodeList<FirewallSubnetMapping>(map['subnetMappings'], (value) => FirewallSubnetMapping.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

