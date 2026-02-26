import 'package:pulumi/pulumi.dart';
import 'vpc_attachment_accepter_args.dart';

/// Manages the accepter's side of an EC2 Transit Gateway VPC Attachment.
///
/// When a cross-account (requester's AWS account differs from the accepter's AWS account) EC2 Transit Gateway VPC Attachment
/// is created, an EC2 Transit Gateway VPC Attachment resource is automatically created in the accepter's account.
/// The requester can use the <span pulumi-lang-nodejs="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-dotnet="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-go="`ec2transitgateway.VpcAttachment`" pulumi-lang-python="`ec2transitgateway.VpcAttachment`" pulumi-lang-yaml="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-java="`aws.ec2transitgateway.VpcAttachment`">`aws.ec2transitgateway.VpcAttachment`</span> resource to manage its side of the connection
/// and the accepter can use the <span pulumi-lang-nodejs="`aws.ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-dotnet="`aws.ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-go="`ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-python="`ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-yaml="`aws.ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-java="`aws.ec2transitgateway.VpcAttachmentAccepter`">`aws.ec2transitgateway.VpcAttachmentAccepter`</span> resource to "adopt" its side of the
/// connection into management.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.VpcAttachmentAccepter("example", {
/// transitGatewayAttachmentId: exampleAwsEc2TransitGatewayVpcAttachment.id,
/// tags: {
/// Name: "Example cross-account attachment",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.VpcAttachmentAccepter("example",
/// transit_gateway_attachment_id=example_aws_ec2_transit_gateway_vpc_attachment["id"],
/// tags={
/// "Name": "Example cross-account attachment",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.VpcAttachmentAccepter("example", new()
/// {
/// TransitGatewayAttachmentId = exampleAwsEc2TransitGatewayVpcAttachment.Id,
/// Tags =
/// {
/// { "Name", "Example cross-account attachment" },
/// },
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
/// _, err := ec2transitgateway.NewVpcAttachmentAccepter(ctx, "example", &ec2transitgateway.VpcAttachmentAccepterArgs{
/// TransitGatewayAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayVpcAttachment.Id),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example cross-account attachment"),
/// },
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
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentAccepter;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentAccepterArgs;
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
/// var example = new VpcAttachmentAccepter("example", VpcAttachmentAccepterArgs.builder()
/// .transitGatewayAttachmentId(exampleAwsEc2TransitGatewayVpcAttachment.id())
/// .tags(Map.of("Name", "Example cross-account attachment"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:VpcAttachmentAccepter
/// properties:
/// transitGatewayAttachmentId: ${exampleAwsEc2TransitGatewayVpcAttachment.id}
/// tags:
/// Name: Example cross-account attachment
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-dotnet="`aws.ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-go="`ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-python="`ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-yaml="`aws.ec2transitgateway.VpcAttachmentAccepter`" pulumi-lang-java="`aws.ec2transitgateway.VpcAttachmentAccepter`">`aws.ec2transitgateway.VpcAttachmentAccepter`</span> using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/vpcAttachmentAccepter:VpcAttachmentAccepter example tgw-attach-12345678
/// ```
class VpcAttachmentAccepter extends CustomResource {
  /// Whether Appliance Mode support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String> applianceModeSupport;

  /// Whether DNS support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String> dnsSupport;

  /// Whether IPv6 support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String> ipv6Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether Security Group Referencing Support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String> securityGroupReferencingSupport;

  /// Identifiers of EC2 Subnets.
  late final Output<List<String>> subnetIds;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the EC2 Transit Gateway Attachment to manage.
  late final Output<String> transitGatewayAttachmentId;

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  late final Output<String> transitGatewayId;

  /// Identifier of EC2 VPC.
  late final Output<String> vpcId;

  /// Identifier of the AWS account that owns the EC2 VPC.
  late final Output<String> vpcOwnerId;

  VpcAttachmentAccepter(
    String name, {
    VpcAttachmentAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/vpcAttachmentAccepter:VpcAttachmentAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applianceModeSupport = registerOutput<String>('applianceModeSupport');
    this.dnsSupport = registerOutput<String>('dnsSupport');
    this.ipv6Support = registerOutput<String>('ipv6Support');
    this.region = registerOutput<String>('region');
    this.securityGroupReferencingSupport =
        registerOutput<String>('securityGroupReferencingSupport');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayDefaultRouteTableAssociation =
        registerOutput<bool?>('transitGatewayDefaultRouteTableAssociation');
    this.transitGatewayDefaultRouteTablePropagation =
        registerOutput<bool?>('transitGatewayDefaultRouteTablePropagation');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }
}
