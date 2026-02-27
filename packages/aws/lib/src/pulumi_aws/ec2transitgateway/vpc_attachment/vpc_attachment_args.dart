// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcAttachment.
class VpcAttachmentArgs {
  /// Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: `disable`, `enable`. Default value: `disable`.
  final Input<String>? applianceModeSupport;

  /// Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  final Input<String>? dnsSupport;

  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  final Input<String>? ipv6Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  final Input<String>? securityGroupReferencingSupport;

  /// Identifiers of EC2 Subnets.
  final Input<List<String>> subnetIds;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and `aws.ec2transitgateway.RouteTableAssociation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  final Input<bool>? transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and `aws.ec2transitgateway.RouteTablePropagation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
  final Input<bool>? transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  final Input<String> transitGatewayId;

  /// Identifier of EC2 VPC.
  final Input<String> vpcId;

  VpcAttachmentArgs({
    this.applianceModeSupport,
    this.dnsSupport,
    this.ipv6Support,
    this.region,
    this.securityGroupReferencingSupport,
    required this.subnetIds,
    this.tags,
    this.transitGatewayDefaultRouteTableAssociation,
    this.transitGatewayDefaultRouteTablePropagation,
    required this.transitGatewayId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applianceModeSupportValue = applianceModeSupport;
    if (applianceModeSupportValue != null) {
      map['applianceModeSupport'] = applianceModeSupportValue;
    }
    final dnsSupportValue = dnsSupport;
    if (dnsSupportValue != null) {
      map['dnsSupport'] = dnsSupportValue;
    }
    final ipv6SupportValue = ipv6Support;
    if (ipv6SupportValue != null) {
      map['ipv6Support'] = ipv6SupportValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupReferencingSupportValue =
        securityGroupReferencingSupport;
    if (securityGroupReferencingSupportValue != null) {
      map['securityGroupReferencingSupport'] =
          securityGroupReferencingSupportValue;
    }
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayDefaultRouteTableAssociationValue =
        transitGatewayDefaultRouteTableAssociation;
    if (transitGatewayDefaultRouteTableAssociationValue != null) {
      map['transitGatewayDefaultRouteTableAssociation'] =
          transitGatewayDefaultRouteTableAssociationValue;
    }
    final transitGatewayDefaultRouteTablePropagationValue =
        transitGatewayDefaultRouteTablePropagation;
    if (transitGatewayDefaultRouteTablePropagationValue != null) {
      map['transitGatewayDefaultRouteTablePropagation'] =
          transitGatewayDefaultRouteTablePropagationValue;
    }
    map['transitGatewayId'] = transitGatewayId;
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentArgs(
      applianceModeSupport:
          Input.asOptionalInput<String>(map['applianceModeSupport']),
      dnsSupport: Input.asOptionalInput<String>(map['dnsSupport']),
      ipv6Support: Input.asOptionalInput<String>(map['ipv6Support']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupReferencingSupport:
          Input.asOptionalInput<String>(map['securityGroupReferencingSupport']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayDefaultRouteTableAssociation: Input.asOptionalInput<bool>(
          map['transitGatewayDefaultRouteTableAssociation']),
      transitGatewayDefaultRouteTablePropagation: Input.asOptionalInput<bool>(
          map['transitGatewayDefaultRouteTablePropagation']),
      transitGatewayId: Input.asInput<String>(map['transitGatewayId']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
