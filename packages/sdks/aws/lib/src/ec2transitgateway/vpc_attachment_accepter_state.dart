// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcAttachmentAccepter resources.
class VpcAttachmentAccepterState {
  /// Whether Appliance Mode support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? applianceModeSupport;

  /// Whether DNS support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? dnsSupport;

  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? ipv6Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? securityGroupReferencingSupport;

  /// Identifiers of EC2 Subnets.
  final pulumi.Input<List<String>>? subnetIds;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The ID of the EC2 Transit Gateway Attachment to manage.
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: `true`.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: `true`.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;

  /// Identifier of EC2 VPC.
  final pulumi.Input<String>? vpcId;

  /// Identifier of the AWS account that owns the EC2 VPC.
  final pulumi.Input<String>? vpcOwnerId;

  /// Creates a new [VpcAttachmentAccepterState].
  /// [applianceModeSupport] Whether Appliance Mode support is enabled. Valid values: `disable`, `enable`.
  /// [dnsSupport] Whether DNS support is enabled. Valid values: `disable`, `enable`.
  /// [ipv6Support] Whether IPv6 support is enabled. Valid values: `disable`, `enable`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  /// [subnetIds] Identifiers of EC2 Subnets.
  /// [tags] Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayAttachmentId] The ID of the EC2 Transit Gateway Attachment to manage.
  /// [transitGatewayDefaultRouteTableAssociation] Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: `true`.
  /// [transitGatewayDefaultRouteTablePropagation] Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: `true`.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  /// [vpcId] Identifier of EC2 VPC.
  /// [vpcOwnerId] Identifier of the AWS account that owns the EC2 VPC.
  VpcAttachmentAccepterState({
    this.applianceModeSupport,
    this.dnsSupport,
    this.ipv6Support,
    this.region,
    this.securityGroupReferencingSupport,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.transitGatewayAttachmentId,
    this.transitGatewayDefaultRouteTableAssociation,
    this.transitGatewayDefaultRouteTablePropagation,
    this.transitGatewayId,
    this.vpcId,
    this.vpcOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceModeSupport': ?applianceModeSupport,
      'dnsSupport': ?dnsSupport,
      'ipv6Support': ?ipv6Support,
      'region': ?region,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayDefaultRouteTableAssociation':
          ?transitGatewayDefaultRouteTableAssociation,
      'transitGatewayDefaultRouteTablePropagation':
          ?transitGatewayDefaultRouteTablePropagation,
      'transitGatewayId': ?transitGatewayId,
      'vpcId': ?vpcId,
      'vpcOwnerId': ?vpcOwnerId,
    };
  }

  factory VpcAttachmentAccepterState.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentAccepterState(
      applianceModeSupport: (() {
        final guardedValue = map['applianceModeSupport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsSupport: (() {
        final guardedValue = map['dnsSupport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6Support: (() {
        final guardedValue = map['ipv6Support'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupReferencingSupport: (() {
        final guardedValue = map['securityGroupReferencingSupport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetIds: (() {
        final guardedValue = map['subnetIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitGatewayAttachmentId: (() {
        final guardedValue = map['transitGatewayAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitGatewayDefaultRouteTableAssociation: (() {
        final guardedValue = map['transitGatewayDefaultRouteTableAssociation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      transitGatewayDefaultRouteTablePropagation: (() {
        final guardedValue = map['transitGatewayDefaultRouteTablePropagation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      transitGatewayId: (() {
        final guardedValue = map['transitGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcOwnerId: (() {
        final guardedValue = map['vpcOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
