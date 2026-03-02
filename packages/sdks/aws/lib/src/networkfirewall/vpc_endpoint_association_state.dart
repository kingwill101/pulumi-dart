// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_association_subnet_mapping.dart';
import 'vpc_endpoint_association_timeouts.dart';
import 'vpc_endpoint_association_vpc_endpoint_association_status.dart';

/// Input properties used for looking up and filtering VpcEndpointAssociation resources.
class VpcEndpointAssociationState {
  /// A description of the VPC endpoint association.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) that identifies the firewall.
  final pulumi.Input<String>? firewallArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID for a subnet that's used in an association with a firewall. See Subnet Mapping below for details.
  final pulumi.Input<VpcEndpointAssociationSubnetMapping>? subnetMapping;
  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<VpcEndpointAssociationTimeouts>? timeouts;
  /// ARN of the VPC Endpoint Association.
  final pulumi.Input<String>? vpcEndpointAssociationArn;
  /// The unique identifier of the VPC endpoint association.
  final pulumi.Input<String>? vpcEndpointAssociationId;
  /// Nested list of information about the current status of the VPC Endpoint Association.
  final pulumi.Input<List<VpcEndpointAssociationVpcEndpointAssociationStatus>>? vpcEndpointAssociationStatuses;
  /// The unique identifier of the VPC for the endpoint association.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcEndpointAssociationState].
  /// [description] A description of the VPC endpoint association.
  /// [firewallArn] The Amazon Resource Name (ARN) that identifies the firewall.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetMapping] The ID for a subnet that's used in an association with a firewall. See Subnet Mapping below for details.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcEndpointAssociationArn] ARN of the VPC Endpoint Association.
  /// [vpcEndpointAssociationId] The unique identifier of the VPC endpoint association.
  /// [vpcEndpointAssociationStatuses] Nested list of information about the current status of the VPC Endpoint Association.
  /// [vpcId] The unique identifier of the VPC for the endpoint association.
  VpcEndpointAssociationState({
    this.description,
    this.firewallArn,
    this.region,
    this.subnetMapping,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcEndpointAssociationArn,
    this.vpcEndpointAssociationId,
    this.vpcEndpointAssociationStatuses,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'firewallArn': ?firewallArn,
      'region': ?region,
      'subnetMapping': ?pulumi.Input.mapOptionalInputValue<VpcEndpointAssociationSubnetMapping, Map<String, dynamic>>(subnetMapping, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcEndpointAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcEndpointAssociationArn': ?vpcEndpointAssociationArn,
      'vpcEndpointAssociationId': ?vpcEndpointAssociationId,
      'vpcEndpointAssociationStatuses': ?pulumi.Input.mapOptionalInputValue<List<VpcEndpointAssociationVpcEndpointAssociationStatus>, List<Map<String, dynamic>>>(vpcEndpointAssociationStatuses, (value) => pulumi.Input.encodeList<VpcEndpointAssociationVpcEndpointAssociationStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory VpcEndpointAssociationState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointAssociationState(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      firewallArn: map['firewallArn'] == null ? null : ((map['firewallArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subnetMapping: map['subnetMapping'] == null ? null : ((VpcEndpointAssociationSubnetMapping.fromMap((map['subnetMapping']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((VpcEndpointAssociationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcEndpointAssociationArn: map['vpcEndpointAssociationArn'] == null ? null : ((map['vpcEndpointAssociationArn'] as String).input()).input(),
      vpcEndpointAssociationId: map['vpcEndpointAssociationId'] == null ? null : ((map['vpcEndpointAssociationId'] as String).input()).input(),
      vpcEndpointAssociationStatuses: map['vpcEndpointAssociationStatuses'] == null ? null : ((pulumi.Input.decodeList<VpcEndpointAssociationVpcEndpointAssociationStatus>(map['vpcEndpointAssociationStatuses']!, (value) => VpcEndpointAssociationVpcEndpointAssociationStatus.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

