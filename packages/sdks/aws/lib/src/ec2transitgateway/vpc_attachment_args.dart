// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_vpc_attachment_vpc_attachment_args_doc}
/// The set of arguments for VpcAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_vpc_attachment_vpc_attachment_args_doc}
class VpcAttachmentArgs {
  /// Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String?>? applianceModeSupport;
  /// Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  final pulumi.Input<String?>? dnsSupport;
  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String?>? ipv6Support;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String?>? securityGroupReferencingSupport;
  /// Identifiers of EC2 Subnets.
  final pulumi.Input<List<String>> subnetIds;
  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and `aws.ec2transitgateway.RouteTableAssociation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  final pulumi.Input<bool?>? transitGatewayDefaultRouteTableAssociation;
  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and `aws.ec2transitgateway.RouteTablePropagation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
  final pulumi.Input<bool?>? transitGatewayDefaultRouteTablePropagation;
  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String> transitGatewayId;
  /// Identifier of EC2 VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcAttachmentArgs].
  /// [applianceModeSupport] Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [dnsSupport] Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  /// [ipv6Support] Whether IPv6 support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  /// [subnetIds] Identifiers of EC2 Subnets.
  /// [tags] Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayDefaultRouteTableAssociation] Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and `aws.ec2transitgateway.RouteTableAssociation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  /// [transitGatewayDefaultRouteTablePropagation] Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and `aws.ec2transitgateway.RouteTablePropagation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  /// [vpcId] Identifier of EC2 VPC.
  const VpcAttachmentArgs({
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
    return <String, dynamic>{
      'applianceModeSupport': ?applianceModeSupport,
      'dnsSupport': ?dnsSupport,
      'ipv6Support': ?ipv6Support,
      'region': ?region,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'transitGatewayDefaultRouteTableAssociation': ?transitGatewayDefaultRouteTableAssociation,
      'transitGatewayDefaultRouteTablePropagation': ?transitGatewayDefaultRouteTablePropagation,
      'transitGatewayId': transitGatewayId,
      'vpcId': vpcId,
    };
  }

  factory VpcAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentArgs(
      applianceModeSupport: (() { final guardedValue = map['applianceModeSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsSupport: (() { final guardedValue = map['dnsSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Support: (() { final guardedValue = map['ipv6Support']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupReferencingSupport: (() { final guardedValue = map['securityGroupReferencingSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayDefaultRouteTableAssociation: (() { final guardedValue = map['transitGatewayDefaultRouteTableAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transitGatewayDefaultRouteTablePropagation: (() { final guardedValue = map['transitGatewayDefaultRouteTablePropagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transitGatewayId: pulumi.Input.fromValue(map['transitGatewayId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
