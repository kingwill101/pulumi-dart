// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_association_subnet_mapping/vpc_endpoint_association_subnet_mapping.dart';
import '../vpc_endpoint_association_timeouts/vpc_endpoint_association_timeouts.dart';

/// The set of arguments for VpcEndpointAssociation.
class VpcEndpointAssociationArgs {
  /// A description of the VPC endpoint association.
  final Input<String>? description;

  /// The Amazon Resource Name (ARN) that identifies the firewall.
  final Input<String> firewallArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID for a subnet that's used in an association with a firewall. See Subnet Mapping below for details.
  final Input<VpcEndpointAssociationSubnetMapping> subnetMapping;

  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<VpcEndpointAssociationTimeouts>? timeouts;

  /// The unique identifier of the VPC for the endpoint association.
  final Input<String> vpcId;

  VpcEndpointAssociationArgs({
    this.description,
    required this.firewallArn,
    this.region,
    required this.subnetMapping,
    this.tags,
    this.timeouts,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['firewallArn'] = firewallArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetMapping'] = Input.mapInputValue<
        VpcEndpointAssociationSubnetMapping,
        Map<String, dynamic>>(subnetMapping, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          VpcEndpointAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcEndpointAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointAssociationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      firewallArn: Input.asInput<String>(map['firewallArn']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetMapping: Input.asInput<VpcEndpointAssociationSubnetMapping>(
          map['subnetMapping']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<VpcEndpointAssociationTimeouts>(
          map['timeouts']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
