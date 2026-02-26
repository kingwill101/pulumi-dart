import 'package:pulumi/pulumi.dart';
import 'vpc_attachment_args.dart';

/// Manages an EC2 Transit Gateway VPC Attachment. For examples of custom route table association and propagation, see the EC2 Transit Gateway Networking Examples Guide.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.VpcAttachment("example", {
/// subnetIds: [exampleAwsSubnet.id],
/// transitGatewayId: exampleAwsEc2TransitGateway.id,
/// vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.VpcAttachment("example",
/// subnet_ids=[example_aws_subnet["id"]],
/// transit_gateway_id=example_aws_ec2_transit_gateway["id"],
/// vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.VpcAttachment("example", new()
/// {
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// TransitGatewayId = exampleAwsEc2TransitGateway.Id,
/// VpcId = exampleAwsVpc.Id,
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
/// _, err := ec2transitgateway.NewVpcAttachment(ctx, "example", &ec2transitgateway.VpcAttachmentArgs{
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// VpcId:            pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.ec2transitgateway.VpcAttachment;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentArgs;
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
/// var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
/// .subnetIds(exampleAwsSubnet.id())
/// .transitGatewayId(exampleAwsEc2TransitGateway.id())
/// .vpcId(exampleAwsVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:VpcAttachment
/// properties:
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// vpcId: ${exampleAwsVpc.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-dotnet="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-go="`ec2transitgateway.VpcAttachment`" pulumi-lang-python="`ec2transitgateway.VpcAttachment`" pulumi-lang-yaml="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-java="`aws.ec2transitgateway.VpcAttachment`">`aws.ec2transitgateway.VpcAttachment`</span> using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/vpcAttachment:VpcAttachment example tgw-attach-12345678
/// ```
class VpcAttachment extends CustomResource {
  /// Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  late final Output<String?> applianceModeSupport;

  /// ARN of the attachment.
  late final Output<String> arn;

  /// Whether DNS support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>.
  late final Output<String?> dnsSupport;

  /// Whether IPv6 support is enabled. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  late final Output<String?> ipv6Support;

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

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. **Setting this argument to** <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-go="`ec2transitgateway.RouteTableAssociation`" pulumi-lang-python="`ec2transitgateway.RouteTableAssociation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTableAssociation`">`aws.ec2transitgateway.RouteTableAssociation`</span>, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  late final Output<bool> transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. **Setting this argument to** <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-go="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-python="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTablePropagation`">`aws.ec2transitgateway.RouteTablePropagation`</span>, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
  late final Output<bool> transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  late final Output<String> transitGatewayId;

  /// Identifier of EC2 VPC.
  late final Output<String> vpcId;

  /// Identifier of the AWS account that owns the EC2 VPC.
  late final Output<String> vpcOwnerId;

  VpcAttachment(
    String name, {
    VpcAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/vpcAttachment:VpcAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applianceModeSupport = registerOutput<String?>('applianceModeSupport');
    this.arn = registerOutput<String>('arn');
    this.dnsSupport = registerOutput<String?>('dnsSupport');
    this.ipv6Support = registerOutput<String?>('ipv6Support');
    this.region = registerOutput<String>('region');
    this.securityGroupReferencingSupport =
        registerOutput<String>('securityGroupReferencingSupport');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayDefaultRouteTableAssociation =
        registerOutput<bool>('transitGatewayDefaultRouteTableAssociation');
    this.transitGatewayDefaultRouteTablePropagation =
        registerOutput<bool>('transitGatewayDefaultRouteTablePropagation');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }
}
