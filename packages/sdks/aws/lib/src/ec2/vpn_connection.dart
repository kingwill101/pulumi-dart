import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_args.dart';
import 'vpn_connection_state.dart';
import 'vpn_connection_tunnel1_log_options.dart';
import 'vpn_connection_tunnel2_log_options.dart';

/// Manages a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network.
/// Any new Site-to-Site VPN connection that you create is an [AWS VPN connection](https://docs.aws.amazon.com/vpn/latest/s2svpn/vpn-categories.html).
///
/// &gt; **Note:** The CIDR blocks in the arguments `tunnel1InsideCidr` and `tunnel2InsideCidr` must have a prefix of /30 and be a part of a specific range.
/// [Read more about this in the AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnTunnelOptionsSpecification.html).
///
/// ## Example Usage
///
/// ### EC2 Transit Gateway
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.TransitGateway("example", {});
/// const exampleCustomerGateway = new aws.ec2.CustomerGateway("example", {
///     bgpAsn: "65000",
///     ipAddress: "172.0.0.1",
///     type: "ipsec.1",
/// });
/// const exampleVpnConnection = new aws.ec2.VpnConnection("example", {
///     customerGatewayId: exampleCustomerGateway.id,
///     transitGatewayId: example.id,
///     type: exampleCustomerGateway.type,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.TransitGateway("example")
/// example_customer_gateway = aws.ec2.CustomerGateway("example",
///     bgp_asn="65000",
///     ip_address="172.0.0.1",
///     type="ipsec.1")
/// example_vpn_connection = aws.ec2.VpnConnection("example",
///     customer_gateway_id=example_customer_gateway.id,
///     transit_gateway_id=example.id,
///     type=example_customer_gateway.type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.TransitGateway("example");
///
///     var exampleCustomerGateway = new Aws.Ec2.CustomerGateway("example", new()
///     {
///         BgpAsn = "65000",
///         IpAddress = "172.0.0.1",
///         Type = "ipsec.1",
///     });
///
///     var exampleVpnConnection = new Aws.Ec2.VpnConnection("example", new()
///     {
///         CustomerGatewayId = exampleCustomerGateway.Id,
///         TransitGatewayId = example.Id,
///         Type = exampleCustomerGateway.Type,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2transitgateway.NewTransitGateway(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCustomerGateway, err := ec2.NewCustomerGateway(ctx, "example", &ec2.CustomerGatewayArgs{
/// 			BgpAsn:    pulumi.String("65000"),
/// 			IpAddress: pulumi.String("172.0.0.1"),
/// 			Type:      pulumi.String("ipsec.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpnConnection(ctx, "example", &ec2.VpnConnectionArgs{
/// 			CustomerGatewayId: exampleCustomerGateway.ID().ToIDOutput().ToStringOutput(),
/// 			TransitGatewayId:  example.ID().ToIDOutput().ToStringOutput(),
/// 			Type:              exampleCustomerGateway.Type,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2transitgateway_transitgateway" "example" {
/// }
/// resource "aws_ec2_customergateway" "example" {
///   bgp_asn    = 65000
///   ip_address = "172.0.0.1"
///   type       = "ipsec.1"
/// }
/// resource "aws_ec2_vpnconnection" "example" {
///   customer_gateway_id = aws_ec2_customergateway.example.id
///   transit_gateway_id  = aws_ec2transitgateway_transitgateway.example.id
///   type                = aws_ec2_customergateway.example.type
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new TransitGateway("example");
///
///         var exampleCustomerGateway = new CustomerGateway("exampleCustomerGateway", CustomerGatewayArgs.builder()
///             .bgpAsn("65000")
///             .ipAddress("172.0.0.1")
///             .type("ipsec.1")
///             .build());
///
///         var exampleVpnConnection = new VpnConnection("exampleVpnConnection", VpnConnectionArgs.builder()
///             .customerGatewayId(exampleCustomerGateway.id())
///             .transitGatewayId(example.id())
///             .type(exampleCustomerGateway.type())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:TransitGateway
///   exampleCustomerGateway:
///     type: aws:ec2:CustomerGateway
///     name: example
///     properties:
///       bgpAsn: 65000
///       ipAddress: 172.0.0.1
///       type: ipsec.1
///   exampleVpnConnection:
///     type: aws:ec2:VpnConnection
///     name: example
///     properties:
///       customerGatewayId: ${exampleCustomerGateway.id}
///       transitGatewayId: ${example.id}
///       type: ${exampleCustomerGateway.type}
/// ```
///
///
/// ### Virtual Private Gateway
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpc = new aws.ec2.Vpc("vpc", {cidrBlock: "10.0.0.0/16"});
/// const vpnGateway = new aws.ec2.VpnGateway("vpn_gateway", {vpcId: vpc.id});
/// const customerGateway = new aws.ec2.CustomerGateway("customer_gateway", {
///     bgpAsn: "65000",
///     ipAddress: "172.0.0.1",
///     type: "ipsec.1",
/// });
/// const main = new aws.ec2.VpnConnection("main", {
///     vpnGatewayId: vpnGateway.id,
///     customerGatewayId: customerGateway.id,
///     type: "ipsec.1",
///     staticRoutesOnly: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpc = aws.ec2.Vpc("vpc", cidr_block="10.0.0.0/16")
/// vpn_gateway = aws.ec2.VpnGateway("vpn_gateway", vpc_id=vpc.id)
/// customer_gateway = aws.ec2.CustomerGateway("customer_gateway",
///     bgp_asn="65000",
///     ip_address="172.0.0.1",
///     type="ipsec.1")
/// main = aws.ec2.VpnConnection("main",
///     vpn_gateway_id=vpn_gateway.id,
///     customer_gateway_id=customer_gateway.id,
///     type="ipsec.1",
///     static_routes_only=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Aws.Ec2.Vpc("vpc", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var vpnGateway = new Aws.Ec2.VpnGateway("vpn_gateway", new()
///     {
///         VpcId = vpc.Id,
///     });
///
///     var customerGateway = new Aws.Ec2.CustomerGateway("customer_gateway", new()
///     {
///         BgpAsn = "65000",
///         IpAddress = "172.0.0.1",
///         Type = "ipsec.1",
///     });
///
///     var main = new Aws.Ec2.VpnConnection("main", new()
///     {
///         VpnGatewayId = vpnGateway.Id,
///         CustomerGatewayId = customerGateway.Id,
///         Type = "ipsec.1",
///         StaticRoutesOnly = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vpc, err := ec2.NewVpc(ctx, "vpc", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnGateway, err := ec2.NewVpnGateway(ctx, "vpn_gateway", &ec2.VpnGatewayArgs{
/// 			VpcId: vpc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customerGateway, err := ec2.NewCustomerGateway(ctx, "customer_gateway", &ec2.CustomerGatewayArgs{
/// 			BgpAsn:    pulumi.String("65000"),
/// 			IpAddress: pulumi.String("172.0.0.1"),
/// 			Type:      pulumi.String("ipsec.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpnConnection(ctx, "main", &ec2.VpnConnectionArgs{
/// 			VpnGatewayId:      vpnGateway.ID().ToIDOutput().ToStringOutput(),
/// 			CustomerGatewayId: customerGateway.ID().ToIDOutput().ToStringOutput(),
/// 			Type:              pulumi.String("ipsec.1"),
/// 			StaticRoutesOnly:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpc" "vpc" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_vpngateway" "vpn_gateway" {
///   vpc_id = aws_ec2_vpc.vpc.id
/// }
/// resource "aws_ec2_customergateway" "customer_gateway" {
///   bgp_asn    = 65000
///   ip_address = "172.0.0.1"
///   type       = "ipsec.1"
/// }
/// resource "aws_ec2_vpnconnection" "main" {
///   vpn_gateway_id      = aws_ec2_vpngateway.vpn_gateway.id
///   customer_gateway_id = aws_ec2_customergateway.customer_gateway.id
///   type                = "ipsec.1"
///   static_routes_only  = true
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var vpc = new Vpc("vpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var vpnGateway = new VpnGateway("vpnGateway", VpnGatewayArgs.builder()
///             .vpcId(vpc.id())
///             .build());
///
///         var customerGateway = new CustomerGateway("customerGateway", CustomerGatewayArgs.builder()
///             .bgpAsn("65000")
///             .ipAddress("172.0.0.1")
///             .type("ipsec.1")
///             .build());
///
///         var main = new VpnConnection("main", VpnConnectionArgs.builder()
///             .vpnGatewayId(vpnGateway.id())
///             .customerGatewayId(customerGateway.id())
///             .type("ipsec.1")
///             .staticRoutesOnly(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpc:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   vpnGateway:
///     type: aws:ec2:VpnGateway
///     name: vpn_gateway
///     properties:
///       vpcId: ${vpc.id}
///   customerGateway:
///     type: aws:ec2:CustomerGateway
///     name: customer_gateway
///     properties:
///       bgpAsn: 65000
///       ipAddress: 172.0.0.1
///       type: ipsec.1
///   main:
///     type: aws:ec2:VpnConnection
///     properties:
///       vpnGatewayId: ${vpnGateway.id}
///       customerGatewayId: ${customerGateway.id}
///       type: ipsec.1
///       staticRoutesOnly: true
/// ```
///
///
/// ### AWS Site to Site Private VPN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGateway = new aws.directconnect.Gateway("example", {
///     name: "example_ipsec_vpn_example",
///     amazonSideAsn: "64512",
/// });
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {
///     amazonSideAsn: 64513,
///     description: "example_ipsec_vpn_example",
///     transitGatewayCidrBlocks: ["10.0.0.0/24"],
/// });
/// const exampleCustomerGateway = new aws.ec2.CustomerGateway("example", {
///     bgpAsn: "64514",
///     ipAddress: "10.0.0.1",
///     type: "ipsec.1",
///     tags: {
///         Name: "example_ipsec_vpn_example",
///     },
/// });
/// const exampleGatewayAssociation = new aws.directconnect.GatewayAssociation("example", {
///     dxGatewayId: exampleGateway.id,
///     associatedGatewayId: exampleTransitGateway.id,
///     allowedPrefixes: ["10.0.0.0/8"],
/// });
/// const example = aws.ec2transitgateway.getDirectConnectGatewayAttachmentOutput({
///     transitGatewayId: exampleTransitGateway.id,
///     dxGatewayId: exampleGateway.id,
/// });
/// const exampleVpnConnection = new aws.ec2.VpnConnection("example", {
///     customerGatewayId: exampleCustomerGateway.id,
///     outsideIpAddressType: "PrivateIpv4",
///     transitGatewayId: exampleTransitGateway.id,
///     transportTransitGatewayAttachmentId: example.id,
///     type: "ipsec.1",
///     tags: {
///         Name: "example_ipsec_vpn_example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_gateway = aws.directconnect.Gateway("example",
///     name="example_ipsec_vpn_example",
///     amazon_side_asn="64512")
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example",
///     amazon_side_asn=64513,
///     description="example_ipsec_vpn_example",
///     transit_gateway_cidr_blocks=["10.0.0.0/24"])
/// example_customer_gateway = aws.ec2.CustomerGateway("example",
///     bgp_asn="64514",
///     ip_address="10.0.0.1",
///     type="ipsec.1",
///     tags={
///         "Name": "example_ipsec_vpn_example",
///     })
/// example_gateway_association = aws.directconnect.GatewayAssociation("example",
///     dx_gateway_id=example_gateway.id,
///     associated_gateway_id=example_transit_gateway.id,
///     allowed_prefixes=["10.0.0.0/8"])
/// example = aws.ec2transitgateway.get_direct_connect_gateway_attachment_output(transit_gateway_id=example_transit_gateway.id,
///     dx_gateway_id=example_gateway.id)
/// example_vpn_connection = aws.ec2.VpnConnection("example",
///     customer_gateway_id=example_customer_gateway.id,
///     outside_ip_address_type="PrivateIpv4",
///     transit_gateway_id=example_transit_gateway.id,
///     transport_transit_gateway_attachment_id=example.id,
///     type="ipsec.1",
///     tags={
///         "Name": "example_ipsec_vpn_example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleGateway = new Aws.DirectConnect.Gateway("example", new()
///     {
///         Name = "example_ipsec_vpn_example",
///         AmazonSideAsn = "64512",
///     });
///
///     var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example", new()
///     {
///         AmazonSideAsn = 64513,
///         Description = "example_ipsec_vpn_example",
///         TransitGatewayCidrBlocks = new[]
///         {
///             "10.0.0.0/24",
///         },
///     });
///
///     var exampleCustomerGateway = new Aws.Ec2.CustomerGateway("example", new()
///     {
///         BgpAsn = "64514",
///         IpAddress = "10.0.0.1",
///         Type = "ipsec.1",
///         Tags =
///         {
///             { "Name", "example_ipsec_vpn_example" },
///         },
///     });
///
///     var exampleGatewayAssociation = new Aws.DirectConnect.GatewayAssociation("example", new()
///     {
///         DxGatewayId = exampleGateway.Id,
///         AssociatedGatewayId = exampleTransitGateway.Id,
///         AllowedPrefixes = new[]
///         {
///             "10.0.0.0/8",
///         },
///     });
///
///     var example = Aws.Ec2TransitGateway.GetDirectConnectGatewayAttachment.Invoke(new()
///     {
///         TransitGatewayId = exampleTransitGateway.Id,
///         DxGatewayId = exampleGateway.Id,
///     });
///
///     var exampleVpnConnection = new Aws.Ec2.VpnConnection("example", new()
///     {
///         CustomerGatewayId = exampleCustomerGateway.Id,
///         OutsideIpAddressType = "PrivateIpv4",
///         TransitGatewayId = exampleTransitGateway.Id,
///         TransportTransitGatewayAttachmentId = example.Apply(getDirectConnectGatewayAttachmentResult => getDirectConnectGatewayAttachmentResult.Id),
///         Type = "ipsec.1",
///         Tags =
///         {
///             { "Name", "example_ipsec_vpn_example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleGateway, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// 			Name:          pulumi.String("example_ipsec_vpn_example"),
/// 			AmazonSideAsn: pulumi.String("64512"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// 			AmazonSideAsn: pulumi.Int(64513),
/// 			Description:   pulumi.String("example_ipsec_vpn_example"),
/// 			TransitGatewayCidrBlocks: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCustomerGateway, err := ec2.NewCustomerGateway(ctx, "example", &ec2.CustomerGatewayArgs{
/// 			BgpAsn:    pulumi.String("64514"),
/// 			IpAddress: pulumi.String("10.0.0.1"),
/// 			Type:      pulumi.String("ipsec.1"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example_ipsec_vpn_example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewGatewayAssociation(ctx, "example", &directconnect.GatewayAssociationArgs{
/// 			DxGatewayId:         exampleGateway.ID().ToIDOutput().ToStringOutput(),
/// 			AssociatedGatewayId: exampleTransitGateway.ID().ToIDOutput().ToStringOutput(),
/// 			AllowedPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/8"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := ec2transitgateway.GetDirectConnectGatewayAttachmentOutput(ctx, ec2transitgateway.GetDirectConnectGatewayAttachmentOutputArgs{
/// 			TransitGatewayId: exampleTransitGateway.ID().ToIDOutput().ToStringOutput(),
/// 			DxGatewayId:      exampleGateway.ID().ToIDOutput().ToStringOutput(),
/// 		}, nil)
/// 		_, err = ec2.NewVpnConnection(ctx, "example", &ec2.VpnConnectionArgs{
/// 			CustomerGatewayId:                   exampleCustomerGateway.ID().ToIDOutput().ToStringOutput(),
/// 			OutsideIpAddressType:                pulumi.String("PrivateIpv4"),
/// 			TransitGatewayId:                    exampleTransitGateway.ID().ToIDOutput().ToStringOutput(),
/// 			TransportTransitGatewayAttachmentId: example.Id(),
/// 			Type:                                pulumi.String("ipsec.1"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example_ipsec_vpn_example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ec2transitgateway_getdirectconnectgatewayattachment" "example" {
///   transit_gateway_id = aws_ec2transitgateway_transitgateway.example.id
///   dx_gateway_id      = aws_directconnect_gateway.example.id
/// }
///
/// resource "aws_directconnect_gateway" "example" {
///   name            = "example_ipsec_vpn_example"
///   amazon_side_asn = "64512"
/// }
/// resource "aws_ec2transitgateway_transitgateway" "example" {
///   amazon_side_asn             = "64513"
///   description                 = "example_ipsec_vpn_example"
///   transit_gateway_cidr_blocks = ["10.0.0.0/24"]
/// }
/// resource "aws_ec2_customergateway" "example" {
///   bgp_asn    = 64514
///   ip_address = "10.0.0.1"
///   type       = "ipsec.1"
///   tags = {
///     "Name" = "example_ipsec_vpn_example"
///   }
/// }
/// resource "aws_directconnect_gatewayassociation" "example" {
///   dx_gateway_id         = aws_directconnect_gateway.example.id
///   associated_gateway_id = aws_ec2transitgateway_transitgateway.example.id
///   allowed_prefixes      = ["10.0.0.0/8"]
/// }
/// resource "aws_ec2_vpnconnection" "example" {
///   customer_gateway_id                     = aws_ec2_customergateway.example.id
///   outside_ip_address_type                 = "PrivateIpv4"
///   transit_gateway_id                      = aws_ec2transitgateway_transitgateway.example.id
///   transport_transit_gateway_attachment_id = data.aws_ec2transitgateway_getdirectconnectgatewayattachment.example.id
///   type                                    = "ipsec.1"
///   tags = {
///     "Name" = "example_ipsec_vpn_example"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleGateway = new Gateway("exampleGateway", GatewayArgs.builder()
///             .name("example_ipsec_vpn_example")
///             .amazonSideAsn("64512")
///             .build());
///
///         var exampleTransitGateway = new TransitGateway("exampleTransitGateway", TransitGatewayArgs.builder()
///             .amazonSideAsn(64513)
///             .description("example_ipsec_vpn_example")
///             .transitGatewayCidrBlocks("10.0.0.0/24")
///             .build());
///
///         var exampleCustomerGateway = new CustomerGateway("exampleCustomerGateway", CustomerGatewayArgs.builder()
///             .bgpAsn("64514")
///             .ipAddress("10.0.0.1")
///             .type("ipsec.1")
///             .tags(Map.of("Name", "example_ipsec_vpn_example"))
///             .build());
///
///         var exampleGatewayAssociation = new GatewayAssociation("exampleGatewayAssociation", GatewayAssociationArgs.builder()
///             .dxGatewayId(exampleGateway.id())
///             .associatedGatewayId(exampleTransitGateway.id())
///             .allowedPrefixes("10.0.0.0/8")
///             .build());
///
///         final var example = Ec2transitgatewayFunctions.getDirectConnectGatewayAttachment(GetDirectConnectGatewayAttachmentArgs.builder()
///             .transitGatewayId(exampleTransitGateway.id())
///             .dxGatewayId(exampleGateway.id())
///             .build());
///
///         var exampleVpnConnection = new VpnConnection("exampleVpnConnection", VpnConnectionArgs.builder()
///             .customerGatewayId(exampleCustomerGateway.id())
///             .outsideIpAddressType("PrivateIpv4")
///             .transitGatewayId(exampleTransitGateway.id())
///             .transportTransitGatewayAttachmentId(example.applyValue(_example -> _example.id()))
///             .type("ipsec.1")
///             .tags(Map.of("Name", "example_ipsec_vpn_example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGateway:
///     type: aws:directconnect:Gateway
///     name: example
///     properties:
///       name: example_ipsec_vpn_example
///       amazonSideAsn: '64512'
///   exampleTransitGateway:
///     type: aws:ec2transitgateway:TransitGateway
///     name: example
///     properties:
///       amazonSideAsn: '64513'
///       description: example_ipsec_vpn_example
///       transitGatewayCidrBlocks:
///         - 10.0.0.0/24
///   exampleCustomerGateway:
///     type: aws:ec2:CustomerGateway
///     name: example
///     properties:
///       bgpAsn: 64514
///       ipAddress: 10.0.0.1
///       type: ipsec.1
///       tags:
///         Name: example_ipsec_vpn_example
///   exampleGatewayAssociation:
///     type: aws:directconnect:GatewayAssociation
///     name: example
///     properties:
///       dxGatewayId: ${exampleGateway.id}
///       associatedGatewayId: ${exampleTransitGateway.id}
///       allowedPrefixes:
///         - 10.0.0.0/8
///   exampleVpnConnection:
///     type: aws:ec2:VpnConnection
///     name: example
///     properties:
///       customerGatewayId: ${exampleCustomerGateway.id}
///       outsideIpAddressType: PrivateIpv4
///       transitGatewayId: ${exampleTransitGateway.id}
///       transportTransitGatewayAttachmentId: ${example.id}
///       type: ipsec.1
///       tags:
///         Name: example_ipsec_vpn_example
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2transitgateway:getDirectConnectGatewayAttachment
///       arguments:
///         transitGatewayId: ${exampleTransitGateway.id}
///         dxGatewayId: ${exampleGateway.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPN Connections using the VPN connection `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpnConnection:VpnConnection testvpnconnection vpn-40f41529
/// ```
class VpnConnection extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the VPN Connection.
  late final pulumi.Output<String> arn;
  /// The ARN of the core network.
  late final pulumi.Output<String> coreNetworkArn;
  /// The ARN of the core network attachment.
  late final pulumi.Output<String> coreNetworkAttachmentArn;
  /// The configuration information for the VPN connection's customer gateway (in the native XML format).
  late final pulumi.Output<String> customerGatewayConfiguration;
  /// The ID of the customer gateway.
  late final pulumi.Output<String> customerGatewayId;
  /// Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.
  late final pulumi.Output<bool> enableAcceleration;
  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  late final pulumi.Output<String> localIpv4NetworkCidr;
  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  late final pulumi.Output<String> localIpv6NetworkCidr;
  /// Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are `PublicIpv4 | PrivateIpv4`
  late final pulumi.Output<String> outsideIpAddressType;
  /// ARN of the Secrets Manager secret storing the pre-shared key(s) for the VPN connection. Note that even if it returns a valid Secrets Manager ARN, the pre-shared key(s) will not be stored in Secrets Manager unless the `presharedKeyStorage` argument is set to `SecretsManager`.
  late final pulumi.Output<String> presharedKeyArn;
  /// Storage mode for the pre-shared key (PSK). Valid values are `Standard` (stored in the Site-to-Site VPN service) or `SecretsManager` (stored in AWS Secrets Manager).
  late final pulumi.Output<String> presharedKeyStorage;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The IPv4 CIDR on the AWS side of the VPN connection.
  late final pulumi.Output<String> remoteIpv4NetworkCidr;
  /// The IPv6 CIDR on the AWS side of the VPN connection.
  late final pulumi.Output<String> remoteIpv6NetworkCidr;
  /// The static routes associated with the VPN connection. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>> routes;
  /// Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP.
  late final pulumi.Output<bool> staticRoutesOnly;
  /// Tags to apply to the connection. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// When associated with an EC2 Transit Gateway (`transitGatewayId` argument), the attachment ID. See also the `aws.ec2.Tag` resource for tagging the EC2 Transit Gateway VPN Attachment.
  late final pulumi.Output<String> transitGatewayAttachmentId;
  /// The ID of the EC2 Transit Gateway.
  late final pulumi.Output<String?> transitGatewayId;
  /// . The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only.
  late final pulumi.Output<String?> transportTransitGatewayAttachmentId;
  /// The public IP address of the first VPN tunnel.
  late final pulumi.Output<String> tunnel1Address;
  /// The bgp asn number of the first VPN tunnel.
  late final pulumi.Output<String> tunnel1BgpAsn;
  /// The bgp holdtime of the first VPN tunnel.
  late final pulumi.Output<int> tunnel1BgpHoldtime;
  /// The RFC 6890 link-local address of the first VPN tunnel (Customer Gateway Side).
  late final pulumi.Output<String> tunnel1CgwInsideAddress;
  /// The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  late final pulumi.Output<String?> tunnel1DpdTimeoutAction;
  /// The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than `30`.
  late final pulumi.Output<int?> tunnel1DpdTimeoutSeconds;
  /// Turn on or off tunnel endpoint lifecycle control feature for the first VPN tunnel. Valid values are `true | false`.
  late final pulumi.Output<bool?> tunnel1EnableTunnelLifecycleControl;
  /// The IKE versions that are permitted for the first VPN tunnel. Valid values are `ikev1 | ikev2`.
  late final pulumi.Output<List<String>?> tunnel1IkeVersions;
  /// The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  late final pulumi.Output<String> tunnel1InsideCidr;
  /// The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  late final pulumi.Output<String> tunnel1InsideIpv6Cidr;
  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  late final pulumi.Output<VpnConnectionTunnel1LogOptions> tunnel1LogOptions;
  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final pulumi.Output<List<int>?> tunnel1Phase1DhGroupNumbers;
  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final pulumi.Output<List<String>?> tunnel1Phase1EncryptionAlgorithms;
  /// One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final pulumi.Output<List<String>?> tunnel1Phase1IntegrityAlgorithms;
  /// The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  late final pulumi.Output<int?> tunnel1Phase1LifetimeSeconds;
  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final pulumi.Output<List<int>?> tunnel1Phase2DhGroupNumbers;
  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final pulumi.Output<List<String>?> tunnel1Phase2EncryptionAlgorithms;
  /// List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final pulumi.Output<List<String>?> tunnel1Phase2IntegrityAlgorithms;
  /// The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  late final pulumi.Output<int?> tunnel1Phase2LifetimeSeconds;
  /// The preshared key of the first VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  late final pulumi.Output<String> tunnel1PresharedKey;
  /// The percentage of the rekey window for the first VPN tunnel (determined by `tunnel1RekeyMarginTimeSeconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  late final pulumi.Output<int?> tunnel1RekeyFuzzPercentage;
  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel1RekeyFuzzPercentage`. Valid value is between `60` and half of `tunnel1Phase2LifetimeSeconds`.
  late final pulumi.Output<int?> tunnel1RekeyMarginTimeSeconds;
  /// The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between `64` and `2048`.
  late final pulumi.Output<int?> tunnel1ReplayWindowSize;
  /// The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  late final pulumi.Output<String?> tunnel1StartupAction;
  /// The RFC 6890 link-local address of the first VPN tunnel (VPN Gateway Side).
  late final pulumi.Output<String> tunnel1VgwInsideAddress;
  /// The public IP address of the second VPN tunnel.
  late final pulumi.Output<String> tunnel2Address;
  /// The bgp asn number of the second VPN tunnel.
  late final pulumi.Output<String> tunnel2BgpAsn;
  /// The bgp holdtime of the second VPN tunnel.
  late final pulumi.Output<int> tunnel2BgpHoldtime;
  /// The RFC 6890 link-local address of the second VPN tunnel (Customer Gateway Side).
  late final pulumi.Output<String> tunnel2CgwInsideAddress;
  /// The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  late final pulumi.Output<String?> tunnel2DpdTimeoutAction;
  /// The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than `30`.
  late final pulumi.Output<int?> tunnel2DpdTimeoutSeconds;
  /// Turn on or off tunnel endpoint lifecycle control feature for the second VPN tunnel. Valid values are `true | false`.
  late final pulumi.Output<bool?> tunnel2EnableTunnelLifecycleControl;
  /// The IKE versions that are permitted for the second VPN tunnel. Valid values are `ikev1 | ikev2`.
  late final pulumi.Output<List<String>?> tunnel2IkeVersions;
  /// The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  late final pulumi.Output<String> tunnel2InsideCidr;
  /// The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  late final pulumi.Output<String> tunnel2InsideIpv6Cidr;
  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  late final pulumi.Output<VpnConnectionTunnel2LogOptions> tunnel2LogOptions;
  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final pulumi.Output<List<int>?> tunnel2Phase1DhGroupNumbers;
  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final pulumi.Output<List<String>?> tunnel2Phase1EncryptionAlgorithms;
  /// One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final pulumi.Output<List<String>?> tunnel2Phase1IntegrityAlgorithms;
  /// The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  late final pulumi.Output<int?> tunnel2Phase1LifetimeSeconds;
  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final pulumi.Output<List<int>?> tunnel2Phase2DhGroupNumbers;
  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final pulumi.Output<List<String>?> tunnel2Phase2EncryptionAlgorithms;
  /// List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final pulumi.Output<List<String>?> tunnel2Phase2IntegrityAlgorithms;
  /// The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  late final pulumi.Output<int?> tunnel2Phase2LifetimeSeconds;
  /// The preshared key of the second VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  late final pulumi.Output<String> tunnel2PresharedKey;
  /// The percentage of the rekey window for the second VPN tunnel (determined by `tunnel2RekeyMarginTimeSeconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  late final pulumi.Output<int?> tunnel2RekeyFuzzPercentage;
  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel2RekeyFuzzPercentage`. Valid value is between `60` and half of `tunnel2Phase2LifetimeSeconds`.
  late final pulumi.Output<int?> tunnel2RekeyMarginTimeSeconds;
  /// The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between `64` and `2048`.
  late final pulumi.Output<int?> tunnel2ReplayWindowSize;
  /// The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  late final pulumi.Output<String?> tunnel2StartupAction;
  /// The RFC 6890 link-local address of the second VPN tunnel (VPN Gateway Side).
  late final pulumi.Output<String> tunnel2VgwInsideAddress;
  /// Desired bandwidth specification for the VPN tunnel. Valid values are `standard | large`. `standard` supports up to 1.25 Gbps per tunnel, while `large` supports up to 5 Gbps per tunnel. Not supported when `vpnGatewayId` is specified, or `enableAcceleration` is `true`.
  late final pulumi.Output<String> tunnelBandwidth;
  /// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are `ipv4 | ipv6`. `ipv6` Supports only EC2 Transit Gateway.
  late final pulumi.Output<String> tunnelInsideIpVersion;
  /// The type of VPN connection. The only type AWS supports at this time is "ipsec.1".
  late final pulumi.Output<String> type;
  /// Telemetry for the VPN tunnels. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>> vgwTelemetries;
  /// ID of the VPN concentrator to associate with the VPN connection.
  late final pulumi.Output<String?> vpnConcentratorId;
  /// The ID of the Virtual Private Gateway.
  late final pulumi.Output<String?> vpnGatewayId;

  /// Creates a new [VpnConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnConnection]. {@macro pulumi_ec2_vpn_connection_vpn_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnConnection(
    String name, {
    VpnConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConnection:VpnConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    coreNetworkArn = registerOutput<String>('coreNetworkArn');
    coreNetworkAttachmentArn = registerOutput<String>('coreNetworkAttachmentArn');
    customerGatewayConfiguration = registerOutput<String>('customerGatewayConfiguration');
    customerGatewayId = registerOutput<String>('customerGatewayId');
    enableAcceleration = registerOutput<bool>('enableAcceleration');
    localIpv4NetworkCidr = registerOutput<String>('localIpv4NetworkCidr');
    localIpv6NetworkCidr = registerOutput<String>('localIpv6NetworkCidr');
    outsideIpAddressType = registerOutput<String>('outsideIpAddressType');
    presharedKeyArn = registerOutput<String>('presharedKeyArn');
    presharedKeyStorage = registerOutput<String>('presharedKeyStorage');
    region = registerOutput<String>('region');
    remoteIpv4NetworkCidr = registerOutput<String>('remoteIpv4NetworkCidr');
    remoteIpv6NetworkCidr = registerOutput<String>('remoteIpv6NetworkCidr');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
    staticRoutesOnly = registerOutput<bool>('staticRoutesOnly');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayAttachmentId = registerOutput<String>('transitGatewayAttachmentId');
    transitGatewayId = registerOutput<String?>('transitGatewayId');
    transportTransitGatewayAttachmentId = registerOutput<String?>('transportTransitGatewayAttachmentId');
    tunnel1Address = registerOutput<String>('tunnel1Address');
    tunnel1BgpAsn = registerOutput<String>('tunnel1BgpAsn');
    tunnel1BgpHoldtime = registerOutput<int>('tunnel1BgpHoldtime');
    tunnel1CgwInsideAddress = registerOutput<String>('tunnel1CgwInsideAddress');
    tunnel1DpdTimeoutAction = registerOutput<String?>('tunnel1DpdTimeoutAction');
    tunnel1DpdTimeoutSeconds = registerOutput<int?>('tunnel1DpdTimeoutSeconds');
    tunnel1EnableTunnelLifecycleControl = registerOutput<bool?>('tunnel1EnableTunnelLifecycleControl');
    tunnel1IkeVersions = registerOutput<List<String>?>('tunnel1IkeVersions');
    tunnel1InsideCidr = registerOutput<String>('tunnel1InsideCidr');
    tunnel1InsideIpv6Cidr = registerOutput<String>('tunnel1InsideIpv6Cidr');
    tunnel1LogOptions = registerOutput<VpnConnectionTunnel1LogOptions>('tunnel1LogOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnConnectionTunnel1LogOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tunnel1Phase1DhGroupNumbers = registerOutput<List<int>?>('tunnel1Phase1DhGroupNumbers');
    tunnel1Phase1EncryptionAlgorithms = registerOutput<List<String>?>('tunnel1Phase1EncryptionAlgorithms');
    tunnel1Phase1IntegrityAlgorithms = registerOutput<List<String>?>('tunnel1Phase1IntegrityAlgorithms');
    tunnel1Phase1LifetimeSeconds = registerOutput<int?>('tunnel1Phase1LifetimeSeconds');
    tunnel1Phase2DhGroupNumbers = registerOutput<List<int>?>('tunnel1Phase2DhGroupNumbers');
    tunnel1Phase2EncryptionAlgorithms = registerOutput<List<String>?>('tunnel1Phase2EncryptionAlgorithms');
    tunnel1Phase2IntegrityAlgorithms = registerOutput<List<String>?>('tunnel1Phase2IntegrityAlgorithms');
    tunnel1Phase2LifetimeSeconds = registerOutput<int?>('tunnel1Phase2LifetimeSeconds');
    tunnel1PresharedKey = registerOutput<String>('tunnel1PresharedKey');
    tunnel1RekeyFuzzPercentage = registerOutput<int?>('tunnel1RekeyFuzzPercentage');
    tunnel1RekeyMarginTimeSeconds = registerOutput<int?>('tunnel1RekeyMarginTimeSeconds');
    tunnel1ReplayWindowSize = registerOutput<int?>('tunnel1ReplayWindowSize');
    tunnel1StartupAction = registerOutput<String?>('tunnel1StartupAction');
    tunnel1VgwInsideAddress = registerOutput<String>('tunnel1VgwInsideAddress');
    tunnel2Address = registerOutput<String>('tunnel2Address');
    tunnel2BgpAsn = registerOutput<String>('tunnel2BgpAsn');
    tunnel2BgpHoldtime = registerOutput<int>('tunnel2BgpHoldtime');
    tunnel2CgwInsideAddress = registerOutput<String>('tunnel2CgwInsideAddress');
    tunnel2DpdTimeoutAction = registerOutput<String?>('tunnel2DpdTimeoutAction');
    tunnel2DpdTimeoutSeconds = registerOutput<int?>('tunnel2DpdTimeoutSeconds');
    tunnel2EnableTunnelLifecycleControl = registerOutput<bool?>('tunnel2EnableTunnelLifecycleControl');
    tunnel2IkeVersions = registerOutput<List<String>?>('tunnel2IkeVersions');
    tunnel2InsideCidr = registerOutput<String>('tunnel2InsideCidr');
    tunnel2InsideIpv6Cidr = registerOutput<String>('tunnel2InsideIpv6Cidr');
    tunnel2LogOptions = registerOutput<VpnConnectionTunnel2LogOptions>('tunnel2LogOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnConnectionTunnel2LogOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tunnel2Phase1DhGroupNumbers = registerOutput<List<int>?>('tunnel2Phase1DhGroupNumbers');
    tunnel2Phase1EncryptionAlgorithms = registerOutput<List<String>?>('tunnel2Phase1EncryptionAlgorithms');
    tunnel2Phase1IntegrityAlgorithms = registerOutput<List<String>?>('tunnel2Phase1IntegrityAlgorithms');
    tunnel2Phase1LifetimeSeconds = registerOutput<int?>('tunnel2Phase1LifetimeSeconds');
    tunnel2Phase2DhGroupNumbers = registerOutput<List<int>?>('tunnel2Phase2DhGroupNumbers');
    tunnel2Phase2EncryptionAlgorithms = registerOutput<List<String>?>('tunnel2Phase2EncryptionAlgorithms');
    tunnel2Phase2IntegrityAlgorithms = registerOutput<List<String>?>('tunnel2Phase2IntegrityAlgorithms');
    tunnel2Phase2LifetimeSeconds = registerOutput<int?>('tunnel2Phase2LifetimeSeconds');
    tunnel2PresharedKey = registerOutput<String>('tunnel2PresharedKey');
    tunnel2RekeyFuzzPercentage = registerOutput<int?>('tunnel2RekeyFuzzPercentage');
    tunnel2RekeyMarginTimeSeconds = registerOutput<int?>('tunnel2RekeyMarginTimeSeconds');
    tunnel2ReplayWindowSize = registerOutput<int?>('tunnel2ReplayWindowSize');
    tunnel2StartupAction = registerOutput<String?>('tunnel2StartupAction');
    tunnel2VgwInsideAddress = registerOutput<String>('tunnel2VgwInsideAddress');
    tunnelBandwidth = registerOutput<String>('tunnelBandwidth');
    tunnelInsideIpVersion = registerOutput<String>('tunnelInsideIpVersion');
    type = registerOutput<String>('type');
    vgwTelemetries = registerOutput<List<Map<String, dynamic>>>('vgwTelemetries');
    vpnConcentratorId = registerOutput<String?>('vpnConcentratorId');
    vpnGatewayId = registerOutput<String?>('vpnGatewayId');
  }

  /// Gets an existing [VpnConnection] resource's state with the given [name] and [id].
  static VpnConnection get(
    String name,
    pulumi.Input<String> id, {
    VpnConnectionState? state,
  }) {
    return VpnConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpnConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConnection:VpnConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    coreNetworkArn = registerOutput<String>('coreNetworkArn');
    coreNetworkAttachmentArn = registerOutput<String>('coreNetworkAttachmentArn');
    customerGatewayConfiguration = registerOutput<String>('customerGatewayConfiguration');
    customerGatewayId = registerOutput<String>('customerGatewayId');
    enableAcceleration = registerOutput<bool>('enableAcceleration');
    localIpv4NetworkCidr = registerOutput<String>('localIpv4NetworkCidr');
    localIpv6NetworkCidr = registerOutput<String>('localIpv6NetworkCidr');
    outsideIpAddressType = registerOutput<String>('outsideIpAddressType');
    presharedKeyArn = registerOutput<String>('presharedKeyArn');
    presharedKeyStorage = registerOutput<String>('presharedKeyStorage');
    region = registerOutput<String>('region');
    remoteIpv4NetworkCidr = registerOutput<String>('remoteIpv4NetworkCidr');
    remoteIpv6NetworkCidr = registerOutput<String>('remoteIpv6NetworkCidr');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
    staticRoutesOnly = registerOutput<bool>('staticRoutesOnly');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayAttachmentId = registerOutput<String>('transitGatewayAttachmentId');
    transitGatewayId = registerOutput<String?>('transitGatewayId');
    transportTransitGatewayAttachmentId = registerOutput<String?>('transportTransitGatewayAttachmentId');
    tunnel1Address = registerOutput<String>('tunnel1Address');
    tunnel1BgpAsn = registerOutput<String>('tunnel1BgpAsn');
    tunnel1BgpHoldtime = registerOutput<int>('tunnel1BgpHoldtime');
    tunnel1CgwInsideAddress = registerOutput<String>('tunnel1CgwInsideAddress');
    tunnel1DpdTimeoutAction = registerOutput<String?>('tunnel1DpdTimeoutAction');
    tunnel1DpdTimeoutSeconds = registerOutput<int?>('tunnel1DpdTimeoutSeconds');
    tunnel1EnableTunnelLifecycleControl = registerOutput<bool?>('tunnel1EnableTunnelLifecycleControl');
    tunnel1IkeVersions = registerOutput<List<String>?>('tunnel1IkeVersions');
    tunnel1InsideCidr = registerOutput<String>('tunnel1InsideCidr');
    tunnel1InsideIpv6Cidr = registerOutput<String>('tunnel1InsideIpv6Cidr');
    tunnel1LogOptions = registerOutput<VpnConnectionTunnel1LogOptions>('tunnel1LogOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnConnectionTunnel1LogOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tunnel1Phase1DhGroupNumbers = registerOutput<List<int>?>('tunnel1Phase1DhGroupNumbers');
    tunnel1Phase1EncryptionAlgorithms = registerOutput<List<String>?>('tunnel1Phase1EncryptionAlgorithms');
    tunnel1Phase1IntegrityAlgorithms = registerOutput<List<String>?>('tunnel1Phase1IntegrityAlgorithms');
    tunnel1Phase1LifetimeSeconds = registerOutput<int?>('tunnel1Phase1LifetimeSeconds');
    tunnel1Phase2DhGroupNumbers = registerOutput<List<int>?>('tunnel1Phase2DhGroupNumbers');
    tunnel1Phase2EncryptionAlgorithms = registerOutput<List<String>?>('tunnel1Phase2EncryptionAlgorithms');
    tunnel1Phase2IntegrityAlgorithms = registerOutput<List<String>?>('tunnel1Phase2IntegrityAlgorithms');
    tunnel1Phase2LifetimeSeconds = registerOutput<int?>('tunnel1Phase2LifetimeSeconds');
    tunnel1PresharedKey = registerOutput<String>('tunnel1PresharedKey');
    tunnel1RekeyFuzzPercentage = registerOutput<int?>('tunnel1RekeyFuzzPercentage');
    tunnel1RekeyMarginTimeSeconds = registerOutput<int?>('tunnel1RekeyMarginTimeSeconds');
    tunnel1ReplayWindowSize = registerOutput<int?>('tunnel1ReplayWindowSize');
    tunnel1StartupAction = registerOutput<String?>('tunnel1StartupAction');
    tunnel1VgwInsideAddress = registerOutput<String>('tunnel1VgwInsideAddress');
    tunnel2Address = registerOutput<String>('tunnel2Address');
    tunnel2BgpAsn = registerOutput<String>('tunnel2BgpAsn');
    tunnel2BgpHoldtime = registerOutput<int>('tunnel2BgpHoldtime');
    tunnel2CgwInsideAddress = registerOutput<String>('tunnel2CgwInsideAddress');
    tunnel2DpdTimeoutAction = registerOutput<String?>('tunnel2DpdTimeoutAction');
    tunnel2DpdTimeoutSeconds = registerOutput<int?>('tunnel2DpdTimeoutSeconds');
    tunnel2EnableTunnelLifecycleControl = registerOutput<bool?>('tunnel2EnableTunnelLifecycleControl');
    tunnel2IkeVersions = registerOutput<List<String>?>('tunnel2IkeVersions');
    tunnel2InsideCidr = registerOutput<String>('tunnel2InsideCidr');
    tunnel2InsideIpv6Cidr = registerOutput<String>('tunnel2InsideIpv6Cidr');
    tunnel2LogOptions = registerOutput<VpnConnectionTunnel2LogOptions>('tunnel2LogOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnConnectionTunnel2LogOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tunnel2Phase1DhGroupNumbers = registerOutput<List<int>?>('tunnel2Phase1DhGroupNumbers');
    tunnel2Phase1EncryptionAlgorithms = registerOutput<List<String>?>('tunnel2Phase1EncryptionAlgorithms');
    tunnel2Phase1IntegrityAlgorithms = registerOutput<List<String>?>('tunnel2Phase1IntegrityAlgorithms');
    tunnel2Phase1LifetimeSeconds = registerOutput<int?>('tunnel2Phase1LifetimeSeconds');
    tunnel2Phase2DhGroupNumbers = registerOutput<List<int>?>('tunnel2Phase2DhGroupNumbers');
    tunnel2Phase2EncryptionAlgorithms = registerOutput<List<String>?>('tunnel2Phase2EncryptionAlgorithms');
    tunnel2Phase2IntegrityAlgorithms = registerOutput<List<String>?>('tunnel2Phase2IntegrityAlgorithms');
    tunnel2Phase2LifetimeSeconds = registerOutput<int?>('tunnel2Phase2LifetimeSeconds');
    tunnel2PresharedKey = registerOutput<String>('tunnel2PresharedKey');
    tunnel2RekeyFuzzPercentage = registerOutput<int?>('tunnel2RekeyFuzzPercentage');
    tunnel2RekeyMarginTimeSeconds = registerOutput<int?>('tunnel2RekeyMarginTimeSeconds');
    tunnel2ReplayWindowSize = registerOutput<int?>('tunnel2ReplayWindowSize');
    tunnel2StartupAction = registerOutput<String?>('tunnel2StartupAction');
    tunnel2VgwInsideAddress = registerOutput<String>('tunnel2VgwInsideAddress');
    tunnelBandwidth = registerOutput<String>('tunnelBandwidth');
    tunnelInsideIpVersion = registerOutput<String>('tunnelInsideIpVersion');
    type = registerOutput<String>('type');
    vgwTelemetries = registerOutput<List<Map<String, dynamic>>>('vgwTelemetries');
    vpnConcentratorId = registerOutput<String?>('vpnConcentratorId');
    vpnGatewayId = registerOutput<String?>('vpnGatewayId');
  }
}
