import 'package:pulumi/pulumi.dart';
import 'connect_args.dart';

/// Manages an EC2 Transit Gateway Connect.
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
/// const attachment = new aws.ec2transitgateway.Connect("attachment", {
/// transportAttachmentId: example.id,
/// transitGatewayId: exampleAwsEc2TransitGateway.id,
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
/// attachment = aws.ec2transitgateway.Connect("attachment",
/// transport_attachment_id=example.id,
/// transit_gateway_id=example_aws_ec2_transit_gateway["id"])
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
/// var attachment = new Aws.Ec2TransitGateway.Connect("attachment", new()
/// {
/// TransportAttachmentId = example.Id,
/// TransitGatewayId = exampleAwsEc2TransitGateway.Id,
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
/// example, err := ec2transitgateway.NewVpcAttachment(ctx, "example", &ec2transitgateway.VpcAttachmentArgs{
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// VpcId:            pulumi.Any(exampleAwsVpc.Id),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2transitgateway.NewConnect(ctx, "attachment", &ec2transitgateway.ConnectArgs{
/// TransportAttachmentId: example.ID(),
/// TransitGatewayId:      pulumi.Any(exampleAwsEc2TransitGateway.Id),
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
/// import com.pulumi.aws.ec2transitgateway.Connect;
/// import com.pulumi.aws.ec2transitgateway.ConnectArgs;
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
/// var attachment = new Connect("attachment", ConnectArgs.builder()
/// .transportAttachmentId(example.id())
/// .transitGatewayId(exampleAwsEc2TransitGateway.id())
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
/// attachment:
/// type: aws:ec2transitgateway:Connect
/// properties:
/// transportAttachmentId: ${example.id}
/// transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.Connect`" pulumi-lang-dotnet="`aws.ec2transitgateway.Connect`" pulumi-lang-go="`ec2transitgateway.Connect`" pulumi-lang-python="`ec2transitgateway.Connect`" pulumi-lang-yaml="`aws.ec2transitgateway.Connect`" pulumi-lang-java="`aws.ec2transitgateway.Connect`">`aws.ec2transitgateway.Connect`</span> using the EC2 Transit Gateway Connect identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/connect:Connect example tgw-attach-12345678
/// ```
class Connect extends CustomResource {
  /// The tunnel protocol. Valid values: <span pulumi-lang-nodejs="`gre`" pulumi-lang-dotnet="`Gre`" pulumi-lang-go="`gre`" pulumi-lang-python="`gre`" pulumi-lang-yaml="`gre`" pulumi-lang-java="`gre`">`gre`</span>. Default is <span pulumi-lang-nodejs="`gre`" pulumi-lang-dotnet="`Gre`" pulumi-lang-go="`gre`" pulumi-lang-python="`gre`" pulumi-lang-yaml="`gre`" pulumi-lang-java="`gre`">`gre`</span>.
  late final Output<String?> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  late final Output<String> transitGatewayId;

  /// The underlaying VPC attachment
  late final Output<String> transportAttachmentId;

  Connect(
    String name, {
    ConnectArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/connect:Connect',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.protocol = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.transitGatewayDefaultRouteTableAssociation =
        Output.createUnknown<bool?>();
    this.transitGatewayDefaultRouteTablePropagation =
        Output.createUnknown<bool?>();
    this.transitGatewayId = Output.createUnknown<String>();
    this.transportAttachmentId = Output.createUnknown<String>();
  }
}
