import 'package:pulumi/pulumi.dart';
import 'transit_gateway_args.dart';

/// Manages an EC2 Transit Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.TransitGateway("example", {description: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.TransitGateway("example", description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.TransitGateway("example", new()
/// {
/// Description = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// Description: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new TransitGateway("example", TransitGatewayArgs.builder()
/// .description("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:TransitGateway
/// properties:
/// description: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.TransitGateway`" pulumi-lang-dotnet="`aws.ec2transitgateway.TransitGateway`" pulumi-lang-go="`ec2transitgateway.TransitGateway`" pulumi-lang-python="`ec2transitgateway.TransitGateway`" pulumi-lang-yaml="`aws.ec2transitgateway.TransitGateway`" pulumi-lang-java="`aws.ec2transitgateway.TransitGateway`">`aws.ec2transitgateway.TransitGateway`</span> using the EC2 Transit Gateway identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/transitGateway:TransitGateway example tgw-12345678
/// ```
class TransitGateway extends CustomResource {
  /// Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is <span pulumi-lang-nodejs="`64512`" pulumi-lang-dotnet="`64512`" pulumi-lang-go="`64512`" pulumi-lang-python="`64512`" pulumi-lang-yaml="`64512`" pulumi-lang-java="`64512`">`64512`</span> to <span pulumi-lang-nodejs="`65534`" pulumi-lang-dotnet="`65534`" pulumi-lang-go="`65534`" pulumi-lang-python="`65534`" pulumi-lang-yaml="`65534`" pulumi-lang-java="`65534`">`65534`</span> for 16-bit ASNs and <span pulumi-lang-nodejs="`4200000000`" pulumi-lang-dotnet="`4200000000`" pulumi-lang-go="`4200000000`" pulumi-lang-python="`4200000000`" pulumi-lang-yaml="`4200000000`" pulumi-lang-java="`4200000000`">`4200000000`</span> to <span pulumi-lang-nodejs="`4294967294`" pulumi-lang-dotnet="`4294967294`" pulumi-lang-go="`4294967294`" pulumi-lang-python="`4294967294`" pulumi-lang-yaml="`4294967294`" pulumi-lang-java="`4294967294`">`4294967294`</span> for 32-bit ASNs. Default value: <span pulumi-lang-nodejs="`64512`" pulumi-lang-dotnet="`64512`" pulumi-lang-go="`64512`" pulumi-lang-python="`64512`" pulumi-lang-yaml="`64512`" pulumi-lang-java="`64512`">`64512`</span>.
  ///
  /// > **NOTE:** Modifying <span pulumi-lang-nodejs="`amazonSideAsn`" pulumi-lang-dotnet="`AmazonSideAsn`" pulumi-lang-go="`amazonSideAsn`" pulumi-lang-python="`amazon_side_asn`" pulumi-lang-yaml="`amazonSideAsn`" pulumi-lang-java="`amazonSideAsn`">`amazon_side_asn`</span> on a Transit Gateway with active BGP sessions is [not allowed](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTransitGatewayOptions.html). You must first delete all Transit Gateway attachments that have BGP configured prior to modifying <span pulumi-lang-nodejs="`amazonSideAsn`" pulumi-lang-dotnet="`AmazonSideAsn`" pulumi-lang-go="`amazonSideAsn`" pulumi-lang-python="`amazon_side_asn`" pulumi-lang-yaml="`amazonSideAsn`" pulumi-lang-java="`amazonSideAsn`">`amazon_side_asn`</span>.
  late final Output<int?> amazonSideAsn;

  /// EC2 Transit Gateway Amazon Resource Name (ARN)
  late final Output<String> arn;

  /// Identifier of the default association route table
  late final Output<String> associationDefaultRouteTableId;

  /// Whether resource attachment requests are automatically accepted. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  late final Output<String?> autoAcceptSharedAttachments;

  /// Whether resource attachments are automatically associated with the default association route table. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String?> defaultRouteTableAssociation;

  /// Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String?> defaultRouteTablePropagation;

  /// Description of the EC2 Transit Gateway.
  late final Output<String?> description;

  /// Whether DNS support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String?> dnsSupport;

  /// Whether encryption support for VPC Encryption Control is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>. Once set, switching to <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> requires explicitly specifying <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span> rather than removing the argument.
  late final Output<String> encryptionSupport;

  /// Whether Multicast support is enabled. Required to use <span pulumi-lang-nodejs="`ec2TransitGatewayMulticastDomain`" pulumi-lang-dotnet="`Ec2TransitGatewayMulticastDomain`" pulumi-lang-go="`ec2TransitGatewayMulticastDomain`" pulumi-lang-python="`ec2_transit_gateway_multicast_domain`" pulumi-lang-yaml="`ec2TransitGatewayMulticastDomain`" pulumi-lang-java="`ec2TransitGatewayMulticastDomain`">`ec2_transit_gateway_multicast_domain`</span>. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  late final Output<String?> multicastSupport;

  /// Identifier of the AWS account that owns the EC2 Transit Gateway
  late final Output<String> ownerId;

  /// Identifier of the default propagation route table
  late final Output<String> propagationDefaultRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether Security Group Referencing Support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  late final Output<String?> securityGroupReferencingSupport;

  /// Key-value tags for the EC2 Transit Gateway. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  late final Output<List<String>?> transitGatewayCidrBlocks;

  /// Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String?> vpnEcmpSupport;

  TransitGateway(
    String name, {
    TransitGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/transitGateway:TransitGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amazonSideAsn = Output.createUnknown<int?>();
    this.arn = Output.createUnknown<String>();
    this.associationDefaultRouteTableId = Output.createUnknown<String>();
    this.autoAcceptSharedAttachments = Output.createUnknown<String?>();
    this.defaultRouteTableAssociation = Output.createUnknown<String?>();
    this.defaultRouteTablePropagation = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String?>();
    this.dnsSupport = Output.createUnknown<String?>();
    this.encryptionSupport = Output.createUnknown<String>();
    this.multicastSupport = Output.createUnknown<String?>();
    this.ownerId = Output.createUnknown<String>();
    this.propagationDefaultRouteTableId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.securityGroupReferencingSupport = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.transitGatewayCidrBlocks = Output.createUnknown<List<String>?>();
    this.vpnEcmpSupport = Output.createUnknown<String?>();
  }
}
