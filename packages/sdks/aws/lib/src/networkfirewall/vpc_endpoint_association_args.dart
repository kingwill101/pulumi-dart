// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_association_subnet_mapping.dart';
import 'vpc_endpoint_association_timeouts.dart';

/// {@template pulumi_networkfirewall_vpc_endpoint_association_vpc_endpoint_association_args_doc}
/// The set of arguments for VpcEndpointAssociation.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_vpc_endpoint_association_vpc_endpoint_association_args_doc}
class VpcEndpointAssociationArgs {
  /// A description of the VPC endpoint association.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) that identifies the firewall.
  final pulumi.Input<String> firewallArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID for a subnet that's used in an association with a firewall. See Subnet Mapping below for details.
  final pulumi.Input<VpcEndpointAssociationSubnetMapping> subnetMapping;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<VpcEndpointAssociationTimeouts>? timeouts;
  /// The unique identifier of the VPC for the endpoint association.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcEndpointAssociationArgs].
  /// [description] A description of the VPC endpoint association.
  /// [firewallArn] The Amazon Resource Name (ARN) that identifies the firewall.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetMapping] The ID for a subnet that's used in an association with a firewall. See Subnet Mapping below for details.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcId] The unique identifier of the VPC for the endpoint association.
  const VpcEndpointAssociationArgs({
    this.description,
    required this.firewallArn,
    this.region,
    required this.subnetMapping,
    this.tags,
    this.timeouts,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'firewallArn': firewallArn,
      'region': ?region,
      'subnetMapping': pulumi.Input.mapInputValue<VpcEndpointAssociationSubnetMapping, Map<String, dynamic>>(subnetMapping, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcEndpointAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': vpcId,
    };
  }

  factory VpcEndpointAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointAssociationArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallArn: pulumi.Input.fromValue(map['firewallArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetMapping: pulumi.Input.fromValue(VpcEndpointAssociationSubnetMapping.fromMap((map['subnetMapping']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcEndpointAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
