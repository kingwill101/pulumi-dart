import 'package:pulumi/pulumi.dart';
import '../vpn_connection_route/vpn_connection_route.dart';
import '../vpn_connection_tunnel1_log_options/vpn_connection_tunnel1_log_options.dart';
import '../vpn_connection_tunnel2_log_options/vpn_connection_tunnel2_log_options.dart';
import '../vpn_connection_vgw_telemetry/vpn_connection_vgw_telemetry.dart';
import 'vpn_connection_args.dart';

/// Manages a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network.
/// Any new Site-to-Site VPN connection that you create is an [AWS VPN connection](https://docs.aws.amazon.com/vpn/latest/s2svpn/vpn-categories.html).
///
/// > **Note:** The CIDR blocks in the arguments <span pulumi-lang-nodejs="`tunnel1InsideCidr`" pulumi-lang-dotnet="`Tunnel1InsideCidr`" pulumi-lang-go="`tunnel1InsideCidr`" pulumi-lang-python="`tunnel1_inside_cidr`" pulumi-lang-yaml="`tunnel1InsideCidr`" pulumi-lang-java="`tunnel1InsideCidr`">`tunnel1_inside_cidr`</span> and <span pulumi-lang-nodejs="`tunnel2InsideCidr`" pulumi-lang-dotnet="`Tunnel2InsideCidr`" pulumi-lang-go="`tunnel2InsideCidr`" pulumi-lang-python="`tunnel2_inside_cidr`" pulumi-lang-yaml="`tunnel2InsideCidr`" pulumi-lang-java="`tunnel2InsideCidr`">`tunnel2_inside_cidr`</span> must have a prefix of /30 and be a part of a specific range.
/// [Read more about this in the AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnTunnelOptionsSpecification.html).
///
/// ## Example Usage
///
/// ### EC2 Transit Gateway
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.TransitGateway("example", {});
/// const exampleCustomerGateway = new aws.ec2.CustomerGateway("example", {
/// bgpAsn: "65000",
/// ipAddress: "172.0.0.1",
/// type: "ipsec.1",
/// });
/// const exampleVpnConnection = new aws.ec2.VpnConnection("example", {
/// customerGatewayId: exampleCustomerGateway.id,
/// transitGatewayId: example.id,
/// type: exampleCustomerGateway.type,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.TransitGateway("example")
/// example_customer_gateway = aws.ec2.CustomerGateway("example",
/// bgp_asn="65000",
/// ip_address="172.0.0.1",
/// type="ipsec.1")
/// example_vpn_connection = aws.ec2.VpnConnection("example",
/// customer_gateway_id=example_customer_gateway.id,
/// transit_gateway_id=example.id,
/// type=example_customer_gateway.type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.TransitGateway("example");
///
/// var exampleCustomerGateway = new Aws.Ec2.CustomerGateway("example", new()
/// {
/// BgpAsn = "65000",
/// IpAddress = "172.0.0.1",
/// Type = "ipsec.1",
/// });
///
/// var exampleVpnConnection = new Aws.Ec2.VpnConnection("example", new()
/// {
/// CustomerGatewayId = exampleCustomerGateway.Id,
/// TransitGatewayId = example.Id,
/// Type = exampleCustomerGateway.Type,
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
/// example, err := ec2transitgateway.NewTransitGateway(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleCustomerGateway, err := ec2.NewCustomerGateway(ctx, "example", &ec2.CustomerGatewayArgs{
/// BgpAsn:    pulumi.String("65000"),
/// IpAddress: pulumi.String("172.0.0.1"),
/// Type:      pulumi.String("ipsec.1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpnConnection(ctx, "example", &ec2.VpnConnectionArgs{
/// CustomerGatewayId: exampleCustomerGateway.ID(),
/// TransitGatewayId:  example.ID(),
/// Type:              exampleCustomerGateway.Type,
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
/// import com.pulumi.aws.ec2.CustomerGateway;
/// import com.pulumi.aws.ec2.CustomerGatewayArgs;
/// import com.pulumi.aws.ec2.VpnConnection;
/// import com.pulumi.aws.ec2.VpnConnectionArgs;
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
/// var example = new TransitGateway("example");
///
/// var exampleCustomerGateway = new CustomerGateway("exampleCustomerGateway", CustomerGatewayArgs.builder()
/// .bgpAsn("65000")
/// .ipAddress("172.0.0.1")
/// .type("ipsec.1")
/// .build());
///
/// var exampleVpnConnection = new VpnConnection("exampleVpnConnection", VpnConnectionArgs.builder()
/// .customerGatewayId(exampleCustomerGateway.id())
/// .transitGatewayId(example.id())
/// .type(exampleCustomerGateway.type())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:TransitGateway
/// exampleCustomerGateway:
/// type: aws:ec2:CustomerGateway
/// name: example
/// properties:
/// bgpAsn: 65000
/// ipAddress: 172.0.0.1
/// type: ipsec.1
/// exampleVpnConnection:
/// type: aws:ec2:VpnConnection
/// name: example
/// properties:
/// customerGatewayId: ${exampleCustomerGateway.id}
/// transitGatewayId: ${example.id}
/// type: ${exampleCustomerGateway.type}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Virtual Private Gateway
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpc = new aws.ec2.Vpc("vpc", {cidrBlock: "10.0.0.0/16"});
/// const vpnGateway = new aws.ec2.VpnGateway("vpn_gateway", {vpcId: vpc.id});
/// const customerGateway = new aws.ec2.CustomerGateway("customer_gateway", {
/// bgpAsn: "65000",
/// ipAddress: "172.0.0.1",
/// type: "ipsec.1",
/// });
/// const main = new aws.ec2.VpnConnection("main", {
/// vpnGatewayId: vpnGateway.id,
/// customerGatewayId: customerGateway.id,
/// type: "ipsec.1",
/// staticRoutesOnly: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpc = aws.ec2.Vpc("vpc", cidr_block="10.0.0.0/16")
/// vpn_gateway = aws.ec2.VpnGateway("vpn_gateway", vpc_id=vpc.id)
/// customer_gateway = aws.ec2.CustomerGateway("customer_gateway",
/// bgp_asn="65000",
/// ip_address="172.0.0.1",
/// type="ipsec.1")
/// main = aws.ec2.VpnConnection("main",
/// vpn_gateway_id=vpn_gateway.id,
/// customer_gateway_id=customer_gateway.id,
/// type="ipsec.1",
/// static_routes_only=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var vpc = new Aws.Ec2.Vpc("vpc", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// var vpnGateway = new Aws.Ec2.VpnGateway("vpn_gateway", new()
/// {
/// VpcId = vpc.Id,
/// });
///
/// var customerGateway = new Aws.Ec2.CustomerGateway("customer_gateway", new()
/// {
/// BgpAsn = "65000",
/// IpAddress = "172.0.0.1",
/// Type = "ipsec.1",
/// });
///
/// var main = new Aws.Ec2.VpnConnection("main", new()
/// {
/// VpnGatewayId = vpnGateway.Id,
/// CustomerGatewayId = customerGateway.Id,
/// Type = "ipsec.1",
/// StaticRoutesOnly = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// vpc, err := ec2.NewVpc(ctx, "vpc", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// vpnGateway, err := ec2.NewVpnGateway(ctx, "vpn_gateway", &ec2.VpnGatewayArgs{
/// VpcId: vpc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// customerGateway, err := ec2.NewCustomerGateway(ctx, "customer_gateway", &ec2.CustomerGatewayArgs{
/// BgpAsn:    pulumi.String("65000"),
/// IpAddress: pulumi.String("172.0.0.1"),
/// Type:      pulumi.String("ipsec.1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpnConnection(ctx, "main", &ec2.VpnConnectionArgs{
/// VpnGatewayId:      vpnGateway.ID(),
/// CustomerGatewayId: customerGateway.ID(),
/// Type:              pulumi.String("ipsec.1"),
/// StaticRoutesOnly:  pulumi.Bool(true),
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
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.ec2.VpnGatewayArgs;
/// import com.pulumi.aws.ec2.CustomerGateway;
/// import com.pulumi.aws.ec2.CustomerGatewayArgs;
/// import com.pulumi.aws.ec2.VpnConnection;
/// import com.pulumi.aws.ec2.VpnConnectionArgs;
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
/// var vpc = new Vpc("vpc", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// var vpnGateway = new VpnGateway("vpnGateway", VpnGatewayArgs.builder()
/// .vpcId(vpc.id())
/// .build());
///
/// var customerGateway = new CustomerGateway("customerGateway", CustomerGatewayArgs.builder()
/// .bgpAsn("65000")
/// .ipAddress("172.0.0.1")
/// .type("ipsec.1")
/// .build());
///
/// var main = new VpnConnection("main", VpnConnectionArgs.builder()
/// .vpnGatewayId(vpnGateway.id())
/// .customerGatewayId(customerGateway.id())
/// .type("ipsec.1")
/// .staticRoutesOnly(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// vpc:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// vpnGateway:
/// type: aws:ec2:VpnGateway
/// name: vpn_gateway
/// properties:
/// vpcId: ${vpc.id}
/// customerGateway:
/// type: aws:ec2:CustomerGateway
/// name: customer_gateway
/// properties:
/// bgpAsn: 65000
/// ipAddress: 172.0.0.1
/// type: ipsec.1
/// main:
/// type: aws:ec2:VpnConnection
/// properties:
/// vpnGatewayId: ${vpnGateway.id}
/// customerGatewayId: ${customerGateway.id}
/// type: ipsec.1
/// staticRoutesOnly: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS Site to Site Private VPN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGateway = new aws.directconnect.Gateway("example", {
/// name: "example_ipsec_vpn_example",
/// amazonSideAsn: "64512",
/// });
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {
/// amazonSideAsn: 64513,
/// description: "example_ipsec_vpn_example",
/// transitGatewayCidrBlocks: ["10.0.0.0/24"],
/// });
/// const exampleCustomerGateway = new aws.ec2.CustomerGateway("example", {
/// bgpAsn: "64514",
/// ipAddress: "10.0.0.1",
/// type: "ipsec.1",
/// tags: {
/// Name: "example_ipsec_vpn_example",
/// },
/// });
/// const exampleGatewayAssociation = new aws.directconnect.GatewayAssociation("example", {
/// dxGatewayId: exampleGateway.id,
/// associatedGatewayId: exampleTransitGateway.id,
/// allowedPrefixes: ["10.0.0.0/8"],
/// });
/// const example = aws.ec2transitgateway.getDirectConnectGatewayAttachmentOutput({
/// transitGatewayId: exampleTransitGateway.id,
/// dxGatewayId: exampleGateway.id,
/// });
/// const exampleVpnConnection = new aws.ec2.VpnConnection("example", {
/// customerGatewayId: exampleCustomerGateway.id,
/// outsideIpAddressType: "PrivateIpv4",
/// transitGatewayId: exampleTransitGateway.id,
/// transportTransitGatewayAttachmentId: example.apply(example => example.id),
/// type: "ipsec.1",
/// tags: {
/// Name: "example_ipsec_vpn_example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_gateway = aws.directconnect.Gateway("example",
/// name="example_ipsec_vpn_example",
/// amazon_side_asn="64512")
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example",
/// amazon_side_asn=64513,
/// description="example_ipsec_vpn_example",
/// transit_gateway_cidr_blocks=["10.0.0.0/24"])
/// example_customer_gateway = aws.ec2.CustomerGateway("example",
/// bgp_asn="64514",
/// ip_address="10.0.0.1",
/// type="ipsec.1",
/// tags={
/// "Name": "example_ipsec_vpn_example",
/// })
/// example_gateway_association = aws.directconnect.GatewayAssociation("example",
/// dx_gateway_id=example_gateway.id,
/// associated_gateway_id=example_transit_gateway.id,
/// allowed_prefixes=["10.0.0.0/8"])
/// example = aws.ec2transitgateway.get_direct_connect_gateway_attachment_output(transit_gateway_id=example_transit_gateway.id,
/// dx_gateway_id=example_gateway.id)
/// example_vpn_connection = aws.ec2.VpnConnection("example",
/// customer_gateway_id=example_customer_gateway.id,
/// outside_ip_address_type="PrivateIpv4",
/// transit_gateway_id=example_transit_gateway.id,
/// transport_transit_gateway_attachment_id=example.id,
/// type="ipsec.1",
/// tags={
/// "Name": "example_ipsec_vpn_example",
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
/// var exampleGateway = new Aws.DirectConnect.Gateway("example", new()
/// {
/// Name = "example_ipsec_vpn_example",
/// AmazonSideAsn = "64512",
/// });
///
/// var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example", new()
/// {
/// AmazonSideAsn = 64513,
/// Description = "example_ipsec_vpn_example",
/// TransitGatewayCidrBlocks = new[]
/// {
/// "10.0.0.0/24",
/// },
/// });
///
/// var exampleCustomerGateway = new Aws.Ec2.CustomerGateway("example", new()
/// {
/// BgpAsn = "64514",
/// IpAddress = "10.0.0.1",
/// Type = "ipsec.1",
/// Tags =
/// {
/// { "Name", "example_ipsec_vpn_example" },
/// },
/// });
///
/// var exampleGatewayAssociation = new Aws.DirectConnect.GatewayAssociation("example", new()
/// {
/// DxGatewayId = exampleGateway.Id,
/// AssociatedGatewayId = exampleTransitGateway.Id,
/// AllowedPrefixes = new[]
/// {
/// "10.0.0.0/8",
/// },
/// });
///
/// var example = Aws.Ec2TransitGateway.GetDirectConnectGatewayAttachment.Invoke(new()
/// {
/// TransitGatewayId = exampleTransitGateway.Id,
/// DxGatewayId = exampleGateway.Id,
/// });
///
/// var exampleVpnConnection = new Aws.Ec2.VpnConnection("example", new()
/// {
/// CustomerGatewayId = exampleCustomerGateway.Id,
/// OutsideIpAddressType = "PrivateIpv4",
/// TransitGatewayId = exampleTransitGateway.Id,
/// TransportTransitGatewayAttachmentId = example.Apply(getDirectConnectGatewayAttachmentResult => getDirectConnectGatewayAttachmentResult.Id),
/// Type = "ipsec.1",
/// Tags =
/// {
/// { "Name", "example_ipsec_vpn_example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGateway, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// Name:          pulumi.String("example_ipsec_vpn_example"),
/// AmazonSideAsn: pulumi.String("64512"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// AmazonSideAsn: pulumi.Int(64513),
/// Description:   pulumi.String("example_ipsec_vpn_example"),
/// TransitGatewayCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.0.0.0/24"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleCustomerGateway, err := ec2.NewCustomerGateway(ctx, "example", &ec2.CustomerGatewayArgs{
/// BgpAsn:    pulumi.String("64514"),
/// IpAddress: pulumi.String("10.0.0.1"),
/// Type:      pulumi.String("ipsec.1"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example_ipsec_vpn_example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = directconnect.NewGatewayAssociation(ctx, "example", &directconnect.GatewayAssociationArgs{
/// DxGatewayId:         exampleGateway.ID(),
/// AssociatedGatewayId: exampleTransitGateway.ID(),
/// AllowedPrefixes: pulumi.StringArray{
/// pulumi.String("10.0.0.0/8"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example := ec2transitgateway.GetDirectConnectGatewayAttachmentOutput(ctx, ec2transitgateway.GetDirectConnectGatewayAttachmentOutputArgs{
/// TransitGatewayId: exampleTransitGateway.ID(),
/// DxGatewayId:      exampleGateway.ID(),
/// }, nil)
/// _, err = ec2.NewVpnConnection(ctx, "example", &ec2.VpnConnectionArgs{
/// CustomerGatewayId:    exampleCustomerGateway.ID(),
/// OutsideIpAddressType: pulumi.String("PrivateIpv4"),
/// TransitGatewayId:     exampleTransitGateway.ID(),
/// TransportTransitGatewayAttachmentId: pulumi.String(example.ApplyT(func(example ec2transitgateway.GetDirectConnectGatewayAttachmentResult) (*string, error) {
/// return &example.Id, nil
/// }).(pulumi.StringPtrOutput)),
/// Type: pulumi.String("ipsec.1"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example_ipsec_vpn_example"),
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
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import com.pulumi.aws.ec2.CustomerGateway;
/// import com.pulumi.aws.ec2.CustomerGatewayArgs;
/// import com.pulumi.aws.directconnect.GatewayAssociation;
/// import com.pulumi.aws.directconnect.GatewayAssociationArgs;
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetDirectConnectGatewayAttachmentArgs;
/// import com.pulumi.aws.ec2.VpnConnection;
/// import com.pulumi.aws.ec2.VpnConnectionArgs;
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
/// var exampleGateway = new Gateway("exampleGateway", GatewayArgs.builder()
/// .name("example_ipsec_vpn_example")
/// .amazonSideAsn("64512")
/// .build());
///
/// var exampleTransitGateway = new TransitGateway("exampleTransitGateway", TransitGatewayArgs.builder()
/// .amazonSideAsn(64513)
/// .description("example_ipsec_vpn_example")
/// .transitGatewayCidrBlocks("10.0.0.0/24")
/// .build());
///
/// var exampleCustomerGateway = new CustomerGateway("exampleCustomerGateway", CustomerGatewayArgs.builder()
/// .bgpAsn("64514")
/// .ipAddress("10.0.0.1")
/// .type("ipsec.1")
/// .tags(Map.of("Name", "example_ipsec_vpn_example"))
/// .build());
///
/// var exampleGatewayAssociation = new GatewayAssociation("exampleGatewayAssociation", GatewayAssociationArgs.builder()
/// .dxGatewayId(exampleGateway.id())
/// .associatedGatewayId(exampleTransitGateway.id())
/// .allowedPrefixes("10.0.0.0/8")
/// .build());
///
/// final var example = Ec2transitgatewayFunctions.getDirectConnectGatewayAttachment(GetDirectConnectGatewayAttachmentArgs.builder()
/// .transitGatewayId(exampleTransitGateway.id())
/// .dxGatewayId(exampleGateway.id())
/// .build());
///
/// var exampleVpnConnection = new VpnConnection("exampleVpnConnection", VpnConnectionArgs.builder()
/// .customerGatewayId(exampleCustomerGateway.id())
/// .outsideIpAddressType("PrivateIpv4")
/// .transitGatewayId(exampleTransitGateway.id())
/// .transportTransitGatewayAttachmentId(example.applyValue(_example -> _example.id()))
/// .type("ipsec.1")
/// .tags(Map.of("Name", "example_ipsec_vpn_example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleGateway:
/// type: aws:directconnect:Gateway
/// name: example
/// properties:
/// name: example_ipsec_vpn_example
/// amazonSideAsn: '64512'
/// exampleTransitGateway:
/// type: aws:ec2transitgateway:TransitGateway
/// name: example
/// properties:
/// amazonSideAsn: '64513'
/// description: example_ipsec_vpn_example
/// transitGatewayCidrBlocks:
/// - 10.0.0.0/24
/// exampleCustomerGateway:
/// type: aws:ec2:CustomerGateway
/// name: example
/// properties:
/// bgpAsn: 64514
/// ipAddress: 10.0.0.1
/// type: ipsec.1
/// tags:
/// Name: example_ipsec_vpn_example
/// exampleGatewayAssociation:
/// type: aws:directconnect:GatewayAssociation
/// name: example
/// properties:
/// dxGatewayId: ${exampleGateway.id}
/// associatedGatewayId: ${exampleTransitGateway.id}
/// allowedPrefixes:
/// - 10.0.0.0/8
/// exampleVpnConnection:
/// type: aws:ec2:VpnConnection
/// name: example
/// properties:
/// customerGatewayId: ${exampleCustomerGateway.id}
/// outsideIpAddressType: PrivateIpv4
/// transitGatewayId: ${exampleTransitGateway.id}
/// transportTransitGatewayAttachmentId: ${example.id}
/// type: ipsec.1
/// tags:
/// Name: example_ipsec_vpn_example
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2transitgateway:getDirectConnectGatewayAttachment
/// arguments:
/// transitGatewayId: ${exampleTransitGateway.id}
/// dxGatewayId: ${exampleGateway.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPN Connections using the VPN connection <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpnConnection:VpnConnection testvpnconnection vpn-40f41529
/// ```
class VpnConnection extends CustomResource {
  /// Amazon Resource Name (ARN) of the VPN Connection.
  late final Output<String> arn;

  /// The ARN of the core network.
  late final Output<String> coreNetworkArn;

  /// The ARN of the core network attachment.
  late final Output<String> coreNetworkAttachmentArn;

  /// The configuration information for the VPN connection's customer gateway (in the native XML format).
  late final Output<String> customerGatewayConfiguration;

  /// The ID of the customer gateway.
  late final Output<String> customerGatewayId;

  /// Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.
  late final Output<bool> enableAcceleration;

  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  late final Output<String> localIpv4NetworkCidr;

  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  late final Output<String> localIpv6NetworkCidr;

  /// Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are `PublicIpv4 | PrivateIpv4`
  late final Output<String> outsideIpAddressType;

  /// ARN of the Secrets Manager secret storing the pre-shared key(s) for the VPN connection. Note that even if it returns a valid Secrets Manager ARN, the pre-shared key(s) will not be stored in Secrets Manager unless the <span pulumi-lang-nodejs="`presharedKeyStorage`" pulumi-lang-dotnet="`PresharedKeyStorage`" pulumi-lang-go="`presharedKeyStorage`" pulumi-lang-python="`preshared_key_storage`" pulumi-lang-yaml="`presharedKeyStorage`" pulumi-lang-java="`presharedKeyStorage`">`preshared_key_storage`</span> argument is set to `SecretsManager`.
  late final Output<String> presharedKeyArn;

  /// Storage mode for the pre-shared key (PSK). Valid values are `Standard` (stored in the Site-to-Site VPN service) or `SecretsManager` (stored in AWS Secrets Manager).
  late final Output<String> presharedKeyStorage;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IPv4 CIDR on the AWS side of the VPN connection.
  late final Output<String> remoteIpv4NetworkCidr;

  /// The IPv6 CIDR on the AWS side of the VPN connection.
  late final Output<String> remoteIpv6NetworkCidr;

  /// The static routes associated with the VPN connection. Detailed below.
  late final Output<List<VpnConnectionRoute>> routes;

  /// Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP.
  late final Output<bool> staticRoutesOnly;

  /// Tags to apply to the connection. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// When associated with an EC2 Transit Gateway (<span pulumi-lang-nodejs="`transitGatewayId`" pulumi-lang-dotnet="`TransitGatewayId`" pulumi-lang-go="`transitGatewayId`" pulumi-lang-python="`transit_gateway_id`" pulumi-lang-yaml="`transitGatewayId`" pulumi-lang-java="`transitGatewayId`">`transit_gateway_id`</span> argument), the attachment ID. See also the <span pulumi-lang-nodejs="`aws.ec2.Tag`" pulumi-lang-dotnet="`aws.ec2.Tag`" pulumi-lang-go="`ec2.Tag`" pulumi-lang-python="`ec2.Tag`" pulumi-lang-yaml="`aws.ec2.Tag`" pulumi-lang-java="`aws.ec2.Tag`">`aws.ec2.Tag`</span> resource for tagging the EC2 Transit Gateway VPN Attachment.
  late final Output<String> transitGatewayAttachmentId;

  /// The ID of the EC2 Transit Gateway.
  late final Output<String?> transitGatewayId;

  /// . The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only.
  late final Output<String?> transportTransitGatewayAttachmentId;

  /// The public IP address of the first VPN tunnel.
  late final Output<String> tunnel1Address;

  /// The bgp asn number of the first VPN tunnel.
  late final Output<String> tunnel1BgpAsn;

  /// The bgp holdtime of the first VPN tunnel.
  late final Output<int> tunnel1BgpHoldtime;

  /// The RFC 6890 link-local address of the first VPN tunnel (Customer Gateway Side).
  late final Output<String> tunnel1CgwInsideAddress;

  /// The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  late final Output<String?> tunnel1DpdTimeoutAction;

  /// The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>.
  late final Output<int?> tunnel1DpdTimeoutSeconds;

  /// Turn on or off tunnel endpoint lifecycle control feature for the first VPN tunnel. Valid values are `true | false`.
  late final Output<bool?> tunnel1EnableTunnelLifecycleControl;

  /// The IKE versions that are permitted for the first VPN tunnel. Valid values are `ikev1 | ikev2`.
  late final Output<List<String>?> tunnel1IkeVersions;

  /// The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  late final Output<String> tunnel1InsideCidr;

  /// The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  late final Output<String> tunnel1InsideIpv6Cidr;

  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  late final Output<VpnConnectionTunnel1LogOptions> tunnel1LogOptions;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final Output<List<int>?> tunnel1Phase1DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final Output<List<String>?> tunnel1Phase1EncryptionAlgorithms;

  /// One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final Output<List<String>?> tunnel1Phase1IntegrityAlgorithms;

  /// The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between <span pulumi-lang-nodejs="`900`" pulumi-lang-dotnet="`900`" pulumi-lang-go="`900`" pulumi-lang-python="`900`" pulumi-lang-yaml="`900`" pulumi-lang-java="`900`">`900`</span> and <span pulumi-lang-nodejs="`28800`" pulumi-lang-dotnet="`28800`" pulumi-lang-go="`28800`" pulumi-lang-python="`28800`" pulumi-lang-yaml="`28800`" pulumi-lang-java="`28800`">`28800`</span>.
  late final Output<int?> tunnel1Phase1LifetimeSeconds;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final Output<List<int>?> tunnel1Phase2DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final Output<List<String>?> tunnel1Phase2EncryptionAlgorithms;

  /// List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final Output<List<String>?> tunnel1Phase2IntegrityAlgorithms;

  /// The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between <span pulumi-lang-nodejs="`900`" pulumi-lang-dotnet="`900`" pulumi-lang-go="`900`" pulumi-lang-python="`900`" pulumi-lang-yaml="`900`" pulumi-lang-java="`900`">`900`</span> and <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span>.
  late final Output<int?> tunnel1Phase2LifetimeSeconds;

  /// The preshared key of the first VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  late final Output<String> tunnel1PresharedKey;

  /// The percentage of the rekey window for the first VPN tunnel (determined by <span pulumi-lang-nodejs="`tunnel1RekeyMarginTimeSeconds`" pulumi-lang-dotnet="`Tunnel1RekeyMarginTimeSeconds`" pulumi-lang-go="`tunnel1RekeyMarginTimeSeconds`" pulumi-lang-python="`tunnel1_rekey_margin_time_seconds`" pulumi-lang-yaml="`tunnel1RekeyMarginTimeSeconds`" pulumi-lang-java="`tunnel1RekeyMarginTimeSeconds`">`tunnel1_rekey_margin_time_seconds`</span>) during which the rekey time is randomly selected. Valid value is between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  late final Output<int?> tunnel1RekeyFuzzPercentage;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for <span pulumi-lang-nodejs="`tunnel1RekeyFuzzPercentage`" pulumi-lang-dotnet="`Tunnel1RekeyFuzzPercentage`" pulumi-lang-go="`tunnel1RekeyFuzzPercentage`" pulumi-lang-python="`tunnel1_rekey_fuzz_percentage`" pulumi-lang-yaml="`tunnel1RekeyFuzzPercentage`" pulumi-lang-java="`tunnel1RekeyFuzzPercentage`">`tunnel1_rekey_fuzz_percentage`</span>. Valid value is between <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> and half of <span pulumi-lang-nodejs="`tunnel1Phase2LifetimeSeconds`" pulumi-lang-dotnet="`Tunnel1Phase2LifetimeSeconds`" pulumi-lang-go="`tunnel1Phase2LifetimeSeconds`" pulumi-lang-python="`tunnel1_phase2_lifetime_seconds`" pulumi-lang-yaml="`tunnel1Phase2LifetimeSeconds`" pulumi-lang-java="`tunnel1Phase2LifetimeSeconds`">`tunnel1_phase2_lifetime_seconds`</span>.
  late final Output<int?> tunnel1RekeyMarginTimeSeconds;

  /// The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span> and <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>.
  late final Output<int?> tunnel1ReplayWindowSize;

  /// The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  late final Output<String?> tunnel1StartupAction;

  /// The RFC 6890 link-local address of the first VPN tunnel (VPN Gateway Side).
  late final Output<String> tunnel1VgwInsideAddress;

  /// The public IP address of the second VPN tunnel.
  late final Output<String> tunnel2Address;

  /// The bgp asn number of the second VPN tunnel.
  late final Output<String> tunnel2BgpAsn;

  /// The bgp holdtime of the second VPN tunnel.
  late final Output<int> tunnel2BgpHoldtime;

  /// The RFC 6890 link-local address of the second VPN tunnel (Customer Gateway Side).
  late final Output<String> tunnel2CgwInsideAddress;

  /// The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  late final Output<String?> tunnel2DpdTimeoutAction;

  /// The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>.
  late final Output<int?> tunnel2DpdTimeoutSeconds;

  /// Turn on or off tunnel endpoint lifecycle control feature for the second VPN tunnel. Valid values are `true | false`.
  late final Output<bool?> tunnel2EnableTunnelLifecycleControl;

  /// The IKE versions that are permitted for the second VPN tunnel. Valid values are `ikev1 | ikev2`.
  late final Output<List<String>?> tunnel2IkeVersions;

  /// The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  late final Output<String> tunnel2InsideCidr;

  /// The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  late final Output<String> tunnel2InsideIpv6Cidr;

  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  late final Output<VpnConnectionTunnel2LogOptions> tunnel2LogOptions;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final Output<List<int>?> tunnel2Phase1DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final Output<List<String>?> tunnel2Phase1EncryptionAlgorithms;

  /// One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final Output<List<String>?> tunnel2Phase1IntegrityAlgorithms;

  /// The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between <span pulumi-lang-nodejs="`900`" pulumi-lang-dotnet="`900`" pulumi-lang-go="`900`" pulumi-lang-python="`900`" pulumi-lang-yaml="`900`" pulumi-lang-java="`900`">`900`</span> and <span pulumi-lang-nodejs="`28800`" pulumi-lang-dotnet="`28800`" pulumi-lang-go="`28800`" pulumi-lang-python="`28800`" pulumi-lang-yaml="`28800`" pulumi-lang-java="`28800`">`28800`</span>.
  late final Output<int?> tunnel2Phase1LifetimeSeconds;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final Output<List<int>?> tunnel2Phase2DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final Output<List<String>?> tunnel2Phase2EncryptionAlgorithms;

  /// List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final Output<List<String>?> tunnel2Phase2IntegrityAlgorithms;

  /// The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between <span pulumi-lang-nodejs="`900`" pulumi-lang-dotnet="`900`" pulumi-lang-go="`900`" pulumi-lang-python="`900`" pulumi-lang-yaml="`900`" pulumi-lang-java="`900`">`900`</span> and <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span>.
  late final Output<int?> tunnel2Phase2LifetimeSeconds;

  /// The preshared key of the second VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  late final Output<String> tunnel2PresharedKey;

  /// The percentage of the rekey window for the second VPN tunnel (determined by <span pulumi-lang-nodejs="`tunnel2RekeyMarginTimeSeconds`" pulumi-lang-dotnet="`Tunnel2RekeyMarginTimeSeconds`" pulumi-lang-go="`tunnel2RekeyMarginTimeSeconds`" pulumi-lang-python="`tunnel2_rekey_margin_time_seconds`" pulumi-lang-yaml="`tunnel2RekeyMarginTimeSeconds`" pulumi-lang-java="`tunnel2RekeyMarginTimeSeconds`">`tunnel2_rekey_margin_time_seconds`</span>) during which the rekey time is randomly selected. Valid value is between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  late final Output<int?> tunnel2RekeyFuzzPercentage;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for <span pulumi-lang-nodejs="`tunnel2RekeyFuzzPercentage`" pulumi-lang-dotnet="`Tunnel2RekeyFuzzPercentage`" pulumi-lang-go="`tunnel2RekeyFuzzPercentage`" pulumi-lang-python="`tunnel2_rekey_fuzz_percentage`" pulumi-lang-yaml="`tunnel2RekeyFuzzPercentage`" pulumi-lang-java="`tunnel2RekeyFuzzPercentage`">`tunnel2_rekey_fuzz_percentage`</span>. Valid value is between <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> and half of <span pulumi-lang-nodejs="`tunnel2Phase2LifetimeSeconds`" pulumi-lang-dotnet="`Tunnel2Phase2LifetimeSeconds`" pulumi-lang-go="`tunnel2Phase2LifetimeSeconds`" pulumi-lang-python="`tunnel2_phase2_lifetime_seconds`" pulumi-lang-yaml="`tunnel2Phase2LifetimeSeconds`" pulumi-lang-java="`tunnel2Phase2LifetimeSeconds`">`tunnel2_phase2_lifetime_seconds`</span>.
  late final Output<int?> tunnel2RekeyMarginTimeSeconds;

  /// The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span> and <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>.
  late final Output<int?> tunnel2ReplayWindowSize;

  /// The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  late final Output<String?> tunnel2StartupAction;

  /// The RFC 6890 link-local address of the second VPN tunnel (VPN Gateway Side).
  late final Output<String> tunnel2VgwInsideAddress;

  /// Desired bandwidth specification for the VPN tunnel. Valid values are `standard | large`. <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span> supports up to 1.25 Gbps per tunnel, while <span pulumi-lang-nodejs="`large`" pulumi-lang-dotnet="`Large`" pulumi-lang-go="`large`" pulumi-lang-python="`large`" pulumi-lang-yaml="`large`" pulumi-lang-java="`large`">`large`</span> supports up to 5 Gbps per tunnel. Not supported when <span pulumi-lang-nodejs="`vpnGatewayId`" pulumi-lang-dotnet="`VpnGatewayId`" pulumi-lang-go="`vpnGatewayId`" pulumi-lang-python="`vpn_gateway_id`" pulumi-lang-yaml="`vpnGatewayId`" pulumi-lang-java="`vpnGatewayId`">`vpn_gateway_id`</span> is specified, or <span pulumi-lang-nodejs="`enableAcceleration`" pulumi-lang-dotnet="`EnableAcceleration`" pulumi-lang-go="`enableAcceleration`" pulumi-lang-python="`enable_acceleration`" pulumi-lang-yaml="`enableAcceleration`" pulumi-lang-java="`enableAcceleration`">`enable_acceleration`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<String> tunnelBandwidth;

  /// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are `ipv4 | ipv6`. <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span> Supports only EC2 Transit Gateway.
  late final Output<String> tunnelInsideIpVersion;

  /// The type of VPN connection. The only type AWS supports at this time is "ipsec.1".
  late final Output<String> type;

  /// Telemetry for the VPN tunnels. Detailed below.
  late final Output<List<VpnConnectionVgwTelemetry>> vgwTelemetries;

  /// ID of the VPN concentrator to associate with the VPN connection.
  late final Output<String?> vpnConcentratorId;

  /// The ID of the Virtual Private Gateway.
  late final Output<String?> vpnGatewayId;

  VpnConnection(
    String name, {
    VpnConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConnection:VpnConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkAttachmentArn =
        registerOutput<String>('coreNetworkAttachmentArn');
    this.customerGatewayConfiguration =
        registerOutput<String>('customerGatewayConfiguration');
    this.customerGatewayId = registerOutput<String>('customerGatewayId');
    this.enableAcceleration = registerOutput<bool>('enableAcceleration');
    this.localIpv4NetworkCidr = registerOutput<String>('localIpv4NetworkCidr');
    this.localIpv6NetworkCidr = registerOutput<String>('localIpv6NetworkCidr');
    this.outsideIpAddressType = registerOutput<String>('outsideIpAddressType');
    this.presharedKeyArn = registerOutput<String>('presharedKeyArn');
    this.presharedKeyStorage = registerOutput<String>('presharedKeyStorage');
    this.region = registerOutput<String>('region');
    this.remoteIpv4NetworkCidr =
        registerOutput<String>('remoteIpv4NetworkCidr');
    this.remoteIpv6NetworkCidr =
        registerOutput<String>('remoteIpv6NetworkCidr');
    this.routes = registerOutput<List<VpnConnectionRoute>>('routes');
    this.staticRoutesOnly = registerOutput<bool>('staticRoutesOnly');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayId = registerOutput<String?>('transitGatewayId');
    this.transportTransitGatewayAttachmentId =
        registerOutput<String?>('transportTransitGatewayAttachmentId');
    this.tunnel1Address = registerOutput<String>('tunnel1Address');
    this.tunnel1BgpAsn = registerOutput<String>('tunnel1BgpAsn');
    this.tunnel1BgpHoldtime = registerOutput<int>('tunnel1BgpHoldtime');
    this.tunnel1CgwInsideAddress =
        registerOutput<String>('tunnel1CgwInsideAddress');
    this.tunnel1DpdTimeoutAction =
        registerOutput<String?>('tunnel1DpdTimeoutAction');
    this.tunnel1DpdTimeoutSeconds =
        registerOutput<int?>('tunnel1DpdTimeoutSeconds');
    this.tunnel1EnableTunnelLifecycleControl =
        registerOutput<bool?>('tunnel1EnableTunnelLifecycleControl');
    this.tunnel1IkeVersions =
        registerOutput<List<String>?>('tunnel1IkeVersions');
    this.tunnel1InsideCidr = registerOutput<String>('tunnel1InsideCidr');
    this.tunnel1InsideIpv6Cidr =
        registerOutput<String>('tunnel1InsideIpv6Cidr');
    this.tunnel1LogOptions =
        registerOutput<VpnConnectionTunnel1LogOptions>('tunnel1LogOptions');
    this.tunnel1Phase1DhGroupNumbers =
        registerOutput<List<int>?>('tunnel1Phase1DhGroupNumbers');
    this.tunnel1Phase1EncryptionAlgorithms =
        registerOutput<List<String>?>('tunnel1Phase1EncryptionAlgorithms');
    this.tunnel1Phase1IntegrityAlgorithms =
        registerOutput<List<String>?>('tunnel1Phase1IntegrityAlgorithms');
    this.tunnel1Phase1LifetimeSeconds =
        registerOutput<int?>('tunnel1Phase1LifetimeSeconds');
    this.tunnel1Phase2DhGroupNumbers =
        registerOutput<List<int>?>('tunnel1Phase2DhGroupNumbers');
    this.tunnel1Phase2EncryptionAlgorithms =
        registerOutput<List<String>?>('tunnel1Phase2EncryptionAlgorithms');
    this.tunnel1Phase2IntegrityAlgorithms =
        registerOutput<List<String>?>('tunnel1Phase2IntegrityAlgorithms');
    this.tunnel1Phase2LifetimeSeconds =
        registerOutput<int?>('tunnel1Phase2LifetimeSeconds');
    this.tunnel1PresharedKey = registerOutput<String>('tunnel1PresharedKey');
    this.tunnel1RekeyFuzzPercentage =
        registerOutput<int?>('tunnel1RekeyFuzzPercentage');
    this.tunnel1RekeyMarginTimeSeconds =
        registerOutput<int?>('tunnel1RekeyMarginTimeSeconds');
    this.tunnel1ReplayWindowSize =
        registerOutput<int?>('tunnel1ReplayWindowSize');
    this.tunnel1StartupAction = registerOutput<String?>('tunnel1StartupAction');
    this.tunnel1VgwInsideAddress =
        registerOutput<String>('tunnel1VgwInsideAddress');
    this.tunnel2Address = registerOutput<String>('tunnel2Address');
    this.tunnel2BgpAsn = registerOutput<String>('tunnel2BgpAsn');
    this.tunnel2BgpHoldtime = registerOutput<int>('tunnel2BgpHoldtime');
    this.tunnel2CgwInsideAddress =
        registerOutput<String>('tunnel2CgwInsideAddress');
    this.tunnel2DpdTimeoutAction =
        registerOutput<String?>('tunnel2DpdTimeoutAction');
    this.tunnel2DpdTimeoutSeconds =
        registerOutput<int?>('tunnel2DpdTimeoutSeconds');
    this.tunnel2EnableTunnelLifecycleControl =
        registerOutput<bool?>('tunnel2EnableTunnelLifecycleControl');
    this.tunnel2IkeVersions =
        registerOutput<List<String>?>('tunnel2IkeVersions');
    this.tunnel2InsideCidr = registerOutput<String>('tunnel2InsideCidr');
    this.tunnel2InsideIpv6Cidr =
        registerOutput<String>('tunnel2InsideIpv6Cidr');
    this.tunnel2LogOptions =
        registerOutput<VpnConnectionTunnel2LogOptions>('tunnel2LogOptions');
    this.tunnel2Phase1DhGroupNumbers =
        registerOutput<List<int>?>('tunnel2Phase1DhGroupNumbers');
    this.tunnel2Phase1EncryptionAlgorithms =
        registerOutput<List<String>?>('tunnel2Phase1EncryptionAlgorithms');
    this.tunnel2Phase1IntegrityAlgorithms =
        registerOutput<List<String>?>('tunnel2Phase1IntegrityAlgorithms');
    this.tunnel2Phase1LifetimeSeconds =
        registerOutput<int?>('tunnel2Phase1LifetimeSeconds');
    this.tunnel2Phase2DhGroupNumbers =
        registerOutput<List<int>?>('tunnel2Phase2DhGroupNumbers');
    this.tunnel2Phase2EncryptionAlgorithms =
        registerOutput<List<String>?>('tunnel2Phase2EncryptionAlgorithms');
    this.tunnel2Phase2IntegrityAlgorithms =
        registerOutput<List<String>?>('tunnel2Phase2IntegrityAlgorithms');
    this.tunnel2Phase2LifetimeSeconds =
        registerOutput<int?>('tunnel2Phase2LifetimeSeconds');
    this.tunnel2PresharedKey = registerOutput<String>('tunnel2PresharedKey');
    this.tunnel2RekeyFuzzPercentage =
        registerOutput<int?>('tunnel2RekeyFuzzPercentage');
    this.tunnel2RekeyMarginTimeSeconds =
        registerOutput<int?>('tunnel2RekeyMarginTimeSeconds');
    this.tunnel2ReplayWindowSize =
        registerOutput<int?>('tunnel2ReplayWindowSize');
    this.tunnel2StartupAction = registerOutput<String?>('tunnel2StartupAction');
    this.tunnel2VgwInsideAddress =
        registerOutput<String>('tunnel2VgwInsideAddress');
    this.tunnelBandwidth = registerOutput<String>('tunnelBandwidth');
    this.tunnelInsideIpVersion =
        registerOutput<String>('tunnelInsideIpVersion');
    this.type = registerOutput<String>('type');
    this.vgwTelemetries =
        registerOutput<List<VpnConnectionVgwTelemetry>>('vgwTelemetries');
    this.vpnConcentratorId = registerOutput<String?>('vpnConcentratorId');
    this.vpnGatewayId = registerOutput<String?>('vpnGatewayId');
  }
}
