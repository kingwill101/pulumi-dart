// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcAttachment.
class VpcAttachmentArgs {
  /// Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  final Input<String>? applianceModeSupport;

  /// Whether DNS support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  final Input<String>? dnsSupport;

  /// Whether IPv6 support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  final Input<String>? ipv6Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether Security Group Referencing Support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  final Input<String>? securityGroupReferencingSupport;

  /// Identifiers of EC2 Subnets.
  final Input<List<String>> subnetIds;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. **Setting this argument to** <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-go="`ec2transitgateway.RouteTableAssociation`" pulumi-lang-python="`ec2transitgateway.RouteTableAssociation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTableAssociation`">`aws.ec2transitgateway.RouteTableAssociation`</span>, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  final Input<bool>? transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. **Setting this argument to** <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-go="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-python="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTablePropagation`">`aws.ec2transitgateway.RouteTablePropagation`</span>, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
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
