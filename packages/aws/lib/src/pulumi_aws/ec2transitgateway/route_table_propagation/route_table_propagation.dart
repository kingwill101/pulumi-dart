import 'package:pulumi/pulumi.dart';
import 'route_table_propagation_args.dart';

/// Manages an EC2 Transit Gateway Route Table propagation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.RouteTablePropagation("example", {
/// transitGatewayAttachmentId: exampleAwsEc2TransitGatewayVpcAttachment.id,
/// transitGatewayRouteTableId: exampleAwsEc2TransitGatewayRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.RouteTablePropagation("example",
/// transit_gateway_attachment_id=example_aws_ec2_transit_gateway_vpc_attachment["id"],
/// transit_gateway_route_table_id=example_aws_ec2_transit_gateway_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.RouteTablePropagation("example", new()
/// {
/// TransitGatewayAttachmentId = exampleAwsEc2TransitGatewayVpcAttachment.Id,
/// TransitGatewayRouteTableId = exampleAwsEc2TransitGatewayRouteTable.Id,
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
/// _, err := ec2transitgateway.NewRouteTablePropagation(ctx, "example", &ec2transitgateway.RouteTablePropagationArgs{
/// TransitGatewayAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayVpcAttachment.Id),
/// TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGatewayRouteTable.Id),
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
/// import com.pulumi.aws.ec2transitgateway.RouteTablePropagation;
/// import com.pulumi.aws.ec2transitgateway.RouteTablePropagationArgs;
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
/// var example = new RouteTablePropagation("example", RouteTablePropagationArgs.builder()
/// .transitGatewayAttachmentId(exampleAwsEc2TransitGatewayVpcAttachment.id())
/// .transitGatewayRouteTableId(exampleAwsEc2TransitGatewayRouteTable.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:RouteTablePropagation
/// properties:
/// transitGatewayAttachmentId: ${exampleAwsEc2TransitGatewayVpcAttachment.id}
/// transitGatewayRouteTableId: ${exampleAwsEc2TransitGatewayRouteTable.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Direct Connect Gateway Propagation
///
/// When propagating routes from a Direct Connect Gateway attachment, reference the <span pulumi-lang-nodejs="`transitGatewayAttachmentId`" pulumi-lang-dotnet="`TransitGatewayAttachmentId`" pulumi-lang-go="`transitGatewayAttachmentId`" pulumi-lang-python="`transit_gateway_attachment_id`" pulumi-lang-yaml="`transitGatewayAttachmentId`" pulumi-lang-java="`transitGatewayAttachmentId`">`transit_gateway_attachment_id`</span> attribute directly from the <span pulumi-lang-nodejs="`aws.directconnect.GatewayAssociation`" pulumi-lang-dotnet="`aws.directconnect.GatewayAssociation`" pulumi-lang-go="`directconnect.GatewayAssociation`" pulumi-lang-python="`directconnect.GatewayAssociation`" pulumi-lang-yaml="`aws.directconnect.GatewayAssociation`" pulumi-lang-java="`aws.directconnect.GatewayAssociation`">`aws.directconnect.GatewayAssociation`</span> resource (available in v6.5.0+):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Gateway("example", {
/// name: "example",
/// amazonSideAsn: "64512",
/// });
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {description: "example"});
/// const exampleGatewayAssociation = new aws.directconnect.GatewayAssociation("example", {
/// dxGatewayId: example.id,
/// associatedGatewayId: exampleTransitGateway.id,
/// allowedPrefixes: ["10.0.0.0/16"],
/// });
/// const exampleRouteTable = new aws.ec2transitgateway.RouteTable("example", {transitGatewayId: exampleTransitGateway.id});
/// // Correct: Reference the attachment ID directly from the association resource
/// const exampleRouteTablePropagation = new aws.ec2transitgateway.RouteTablePropagation("example", {
/// transitGatewayAttachmentId: exampleGatewayAssociation.transitGatewayAttachmentId,
/// transitGatewayRouteTableId: exampleRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Gateway("example",
/// name="example",
/// amazon_side_asn="64512")
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example", description="example")
/// example_gateway_association = aws.directconnect.GatewayAssociation("example",
/// dx_gateway_id=example.id,
/// associated_gateway_id=example_transit_gateway.id,
/// allowed_prefixes=["10.0.0.0/16"])
/// example_route_table = aws.ec2transitgateway.RouteTable("example", transit_gateway_id=example_transit_gateway.id)
/// # Correct: Reference the attachment ID directly from the association resource
/// example_route_table_propagation = aws.ec2transitgateway.RouteTablePropagation("example",
/// transit_gateway_attachment_id=example_gateway_association.transit_gateway_attachment_id,
/// transit_gateway_route_table_id=example_route_table.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DirectConnect.Gateway("example", new()
/// {
/// Name = "example",
/// AmazonSideAsn = "64512",
/// });
///
/// var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example", new()
/// {
/// Description = "example",
/// });
///
/// var exampleGatewayAssociation = new Aws.DirectConnect.GatewayAssociation("example", new()
/// {
/// DxGatewayId = example.Id,
/// AssociatedGatewayId = exampleTransitGateway.Id,
/// AllowedPrefixes = new[]
/// {
/// "10.0.0.0/16",
/// },
/// });
///
/// var exampleRouteTable = new Aws.Ec2TransitGateway.RouteTable("example", new()
/// {
/// TransitGatewayId = exampleTransitGateway.Id,
/// });
///
/// // Correct: Reference the attachment ID directly from the association resource
/// var exampleRouteTablePropagation = new Aws.Ec2TransitGateway.RouteTablePropagation("example", new()
/// {
/// TransitGatewayAttachmentId = exampleGatewayAssociation.TransitGatewayAttachmentId,
/// TransitGatewayRouteTableId = exampleRouteTable.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// Name:          pulumi.String("example"),
/// AmazonSideAsn: pulumi.String("64512"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// Description: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleGatewayAssociation, err := directconnect.NewGatewayAssociation(ctx, "example", &directconnect.GatewayAssociationArgs{
/// DxGatewayId:         example.ID(),
/// AssociatedGatewayId: exampleTransitGateway.ID(),
/// AllowedPrefixes: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleRouteTable, err := ec2transitgateway.NewRouteTable(ctx, "example", &ec2transitgateway.RouteTableArgs{
/// TransitGatewayId: exampleTransitGateway.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Correct: Reference the attachment ID directly from the association resource
/// _, err = ec2transitgateway.NewRouteTablePropagation(ctx, "example", &ec2transitgateway.RouteTablePropagationArgs{
/// TransitGatewayAttachmentId: exampleGatewayAssociation.TransitGatewayAttachmentId,
/// TransitGatewayRouteTableId: exampleRouteTable.ID(),
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
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import com.pulumi.aws.directconnect.GatewayAssociation;
/// import com.pulumi.aws.directconnect.GatewayAssociationArgs;
/// import com.pulumi.aws.ec2transitgateway.RouteTable;
/// import com.pulumi.aws.ec2transitgateway.RouteTableArgs;
/// import com.pulumi.aws.ec2transitgateway.RouteTablePropagation;
/// import com.pulumi.aws.ec2transitgateway.RouteTablePropagationArgs;
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
/// var example = new Gateway("example", GatewayArgs.builder()
/// .name("example")
/// .amazonSideAsn("64512")
/// .build());
///
/// var exampleTransitGateway = new TransitGateway("exampleTransitGateway", TransitGatewayArgs.builder()
/// .description("example")
/// .build());
///
/// var exampleGatewayAssociation = new GatewayAssociation("exampleGatewayAssociation", GatewayAssociationArgs.builder()
/// .dxGatewayId(example.id())
/// .associatedGatewayId(exampleTransitGateway.id())
/// .allowedPrefixes("10.0.0.0/16")
/// .build());
///
/// var exampleRouteTable = new RouteTable("exampleRouteTable", RouteTableArgs.builder()
/// .transitGatewayId(exampleTransitGateway.id())
/// .build());
///
/// // Correct: Reference the attachment ID directly from the association resource
/// var exampleRouteTablePropagation = new RouteTablePropagation("exampleRouteTablePropagation", RouteTablePropagationArgs.builder()
/// .transitGatewayAttachmentId(exampleGatewayAssociation.transitGatewayAttachmentId())
/// .transitGatewayRouteTableId(exampleRouteTable.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:directconnect:Gateway
/// properties:
/// name: example
/// amazonSideAsn: 64512
/// exampleTransitGateway:
/// type: aws:ec2transitgateway:TransitGateway
/// name: example
/// properties:
/// description: example
/// exampleGatewayAssociation:
/// type: aws:directconnect:GatewayAssociation
/// name: example
/// properties:
/// dxGatewayId: ${example.id}
/// associatedGatewayId: ${exampleTransitGateway.id}
/// allowedPrefixes:
/// - 10.0.0.0/16
/// exampleRouteTable:
/// type: aws:ec2transitgateway:RouteTable
/// name: example
/// properties:
/// transitGatewayId: ${exampleTransitGateway.id}
/// # Correct: Reference the attachment ID directly from the association resource
/// exampleRouteTablePropagation:
/// type: aws:ec2transitgateway:RouteTablePropagation
/// name: example
/// properties:
/// transitGatewayAttachmentId: ${exampleGatewayAssociation.transitGatewayAttachmentId}
/// transitGatewayRouteTableId: ${exampleRouteTable.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **NOTE:** Avoid using the <span pulumi-lang-nodejs="`aws.ec2transitgateway.getDirectConnectGatewayAttachment`" pulumi-lang-dotnet="`aws.ec2transitgateway.getDirectConnectGatewayAttachment`" pulumi-lang-go="`ec2transitgateway.getDirectConnectGatewayAttachment`" pulumi-lang-python="`ec2transitgateway_get_direct_connect_gateway_attachment`" pulumi-lang-yaml="`aws.ec2transitgateway.getDirectConnectGatewayAttachment`" pulumi-lang-java="`aws.ec2transitgateway.getDirectConnectGatewayAttachment`">`aws.ec2transitgateway.getDirectConnectGatewayAttachment`</span> data source to retrieve the attachment ID, as this can cause unnecessary resource recreation when unrelated attributes of the Direct Connect Gateway association change (such as <span pulumi-lang-nodejs="`allowedPrefixes`" pulumi-lang-dotnet="`AllowedPrefixes`" pulumi-lang-go="`allowedPrefixes`" pulumi-lang-python="`allowed_prefixes`" pulumi-lang-yaml="`allowedPrefixes`" pulumi-lang-java="`allowedPrefixes`">`allowed_prefixes`</span>). Always reference the <span pulumi-lang-nodejs="`transitGatewayAttachmentId`" pulumi-lang-dotnet="`TransitGatewayAttachmentId`" pulumi-lang-go="`transitGatewayAttachmentId`" pulumi-lang-python="`transit_gateway_attachment_id`" pulumi-lang-yaml="`transitGatewayAttachmentId`" pulumi-lang-java="`transitGatewayAttachmentId`">`transit_gateway_attachment_id`</span> attribute directly from the <span pulumi-lang-nodejs="`aws.directconnect.GatewayAssociation`" pulumi-lang-dotnet="`aws.directconnect.GatewayAssociation`" pulumi-lang-go="`directconnect.GatewayAssociation`" pulumi-lang-python="`directconnect.GatewayAssociation`" pulumi-lang-yaml="`aws.directconnect.GatewayAssociation`" pulumi-lang-java="`aws.directconnect.GatewayAssociation`">`aws.directconnect.GatewayAssociation`</span> resource when available.
///
/// ### VPC Attachment Propagation
///
/// For VPC attachments, always reference the attachment resource's <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> attribute directly. Avoid using data sources or lifecycle rules that might cause the attachment ID to become unknown during planning:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet = new aws.ec2.Subnet("example", {
/// vpcId: example.id,
/// cidrBlock: "10.0.1.0/24",
/// });
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {description: "example"});
/// const exampleVpcAttachment = new aws.ec2transitgateway.VpcAttachment("example", {
/// subnetIds: [exampleSubnet.id],
/// transitGatewayId: exampleTransitGateway.id,
/// vpcId: example.id,
/// });
/// const exampleRouteTable = new aws.ec2transitgateway.RouteTable("example", {transitGatewayId: exampleTransitGateway.id});
/// // Correct: Reference the VPC attachment ID directly
/// const exampleRouteTablePropagation = new aws.ec2transitgateway.RouteTablePropagation("example", {
/// transitGatewayAttachmentId: exampleVpcAttachment.id,
/// transitGatewayRouteTableId: exampleRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = aws.ec2.Subnet("example",
/// vpc_id=example.id,
/// cidr_block="10.0.1.0/24")
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example", description="example")
/// example_vpc_attachment = aws.ec2transitgateway.VpcAttachment("example",
/// subnet_ids=[example_subnet.id],
/// transit_gateway_id=example_transit_gateway.id,
/// vpc_id=example.id)
/// example_route_table = aws.ec2transitgateway.RouteTable("example", transit_gateway_id=example_transit_gateway.id)
/// # Correct: Reference the VPC attachment ID directly
/// example_route_table_propagation = aws.ec2transitgateway.RouteTablePropagation("example",
/// transit_gateway_attachment_id=example_vpc_attachment.id,
/// transit_gateway_route_table_id=example_route_table.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// var exampleSubnet = new Aws.Ec2.Subnet("example", new()
/// {
/// VpcId = example.Id,
/// CidrBlock = "10.0.1.0/24",
/// });
///
/// var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example", new()
/// {
/// Description = "example",
/// });
///
/// var exampleVpcAttachment = new Aws.Ec2TransitGateway.VpcAttachment("example", new()
/// {
/// SubnetIds = new[]
/// {
/// exampleSubnet.Id,
/// },
/// TransitGatewayId = exampleTransitGateway.Id,
/// VpcId = example.Id,
/// });
///
/// var exampleRouteTable = new Aws.Ec2TransitGateway.RouteTable("example", new()
/// {
/// TransitGatewayId = exampleTransitGateway.Id,
/// });
///
/// // Correct: Reference the VPC attachment ID directly
/// var exampleRouteTablePropagation = new Aws.Ec2TransitGateway.RouteTablePropagation("example", new()
/// {
/// TransitGatewayAttachmentId = exampleVpcAttachment.Id,
/// TransitGatewayRouteTableId = exampleRouteTable.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSubnet, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// VpcId:     example.ID(),
/// CidrBlock: pulumi.String("10.0.1.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// Description: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpcAttachment, err := ec2transitgateway.NewVpcAttachment(ctx, "example", &ec2transitgateway.VpcAttachmentArgs{
/// SubnetIds: pulumi.StringArray{
/// exampleSubnet.ID(),
/// },
/// TransitGatewayId: exampleTransitGateway.ID(),
/// VpcId:            example.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// exampleRouteTable, err := ec2transitgateway.NewRouteTable(ctx, "example", &ec2transitgateway.RouteTableArgs{
/// TransitGatewayId: exampleTransitGateway.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Correct: Reference the VPC attachment ID directly
/// _, err = ec2transitgateway.NewRouteTablePropagation(ctx, "example", &ec2transitgateway.RouteTablePropagationArgs{
/// TransitGatewayAttachmentId: exampleVpcAttachment.ID(),
/// TransitGatewayRouteTableId: exampleRouteTable.ID(),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachment;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentArgs;
/// import com.pulumi.aws.ec2transitgateway.RouteTable;
/// import com.pulumi.aws.ec2transitgateway.RouteTableArgs;
/// import com.pulumi.aws.ec2transitgateway.RouteTablePropagation;
/// import com.pulumi.aws.ec2transitgateway.RouteTablePropagationArgs;
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
/// var example = new Vpc("example", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
/// .vpcId(example.id())
/// .cidrBlock("10.0.1.0/24")
/// .build());
///
/// var exampleTransitGateway = new TransitGateway("exampleTransitGateway", TransitGatewayArgs.builder()
/// .description("example")
/// .build());
///
/// var exampleVpcAttachment = new VpcAttachment("exampleVpcAttachment", VpcAttachmentArgs.builder()
/// .subnetIds(exampleSubnet.id())
/// .transitGatewayId(exampleTransitGateway.id())
/// .vpcId(example.id())
/// .build());
///
/// var exampleRouteTable = new RouteTable("exampleRouteTable", RouteTableArgs.builder()
/// .transitGatewayId(exampleTransitGateway.id())
/// .build());
///
/// // Correct: Reference the VPC attachment ID directly
/// var exampleRouteTablePropagation = new RouteTablePropagation("exampleRouteTablePropagation", RouteTablePropagationArgs.builder()
/// .transitGatewayAttachmentId(exampleVpcAttachment.id())
/// .transitGatewayRouteTableId(exampleRouteTable.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// exampleSubnet:
/// type: aws:ec2:Subnet
/// name: example
/// properties:
/// vpcId: ${example.id}
/// cidrBlock: 10.0.1.0/24
/// exampleTransitGateway:
/// type: aws:ec2transitgateway:TransitGateway
/// name: example
/// properties:
/// description: example
/// exampleVpcAttachment:
/// type: aws:ec2transitgateway:VpcAttachment
/// name: example
/// properties:
/// subnetIds:
/// - ${exampleSubnet.id}
/// transitGatewayId: ${exampleTransitGateway.id}
/// vpcId: ${example.id}
/// exampleRouteTable:
/// type: aws:ec2transitgateway:RouteTable
/// name: example
/// properties:
/// transitGatewayId: ${exampleTransitGateway.id}
/// # Correct: Reference the VPC attachment ID directly
/// exampleRouteTablePropagation:
/// type: aws:ec2transitgateway:RouteTablePropagation
/// name: example
/// properties:
/// transitGatewayAttachmentId: ${exampleVpcAttachment.id}
/// transitGatewayRouteTableId: ${exampleRouteTable.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **NOTE:** When the <span pulumi-lang-nodejs="`transitGatewayAttachmentId`" pulumi-lang-dotnet="`TransitGatewayAttachmentId`" pulumi-lang-go="`transitGatewayAttachmentId`" pulumi-lang-python="`transit_gateway_attachment_id`" pulumi-lang-yaml="`transitGatewayAttachmentId`" pulumi-lang-java="`transitGatewayAttachmentId`">`transit_gateway_attachment_id`</span> changes (for example, when a VPC attachment is replaced), this resource will be recreated. This is the correct behavior to maintain consistency between the attachment and its route table propagation.
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-go="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-python="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTablePropagation`">`aws.ec2transitgateway.RouteTablePropagation`</span> using the EC2 Transit Gateway Route Table identifier, an underscore, and the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/routeTablePropagation:RouteTablePropagation example tgw-rtb-12345678_tgw-attach-87654321
/// ```
class RouteTablePropagation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the resource
  late final Output<String> resourceId;

  /// Type of the resource
  late final Output<String> resourceType;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final Output<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  late final Output<String> transitGatewayRouteTableId;

  RouteTablePropagation(
    String name, {
    RouteTablePropagationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/routeTablePropagation:RouteTablePropagation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
