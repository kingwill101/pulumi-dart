import 'package:pulumi/pulumi.dart';
import 'customer_gateway_association_args.dart';

/// Manages a Network Manager Customer Gateway Association.
///
/// Use this resource to associate a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.GlobalNetwork("example", {description: "example"});
/// const exampleSite = new aws.networkmanager.Site("example", {globalNetworkId: example.id});
/// const exampleDevice = new aws.networkmanager.Device("example", {
/// globalNetworkId: example.id,
/// siteId: exampleSite.id,
/// });
/// const exampleCustomerGateway = new aws.ec2.CustomerGateway("example", {
/// bgpAsn: "65000",
/// ipAddress: "172.83.124.10",
/// type: "ipsec.1",
/// });
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {});
/// const exampleVpnConnection = new aws.ec2.VpnConnection("example", {
/// customerGatewayId: exampleCustomerGateway.id,
/// transitGatewayId: exampleTransitGateway.id,
/// type: exampleCustomerGateway.type,
/// staticRoutesOnly: true,
/// });
/// const exampleTransitGatewayRegistration = new aws.networkmanager.TransitGatewayRegistration("example", {
/// globalNetworkId: example.id,
/// transitGatewayArn: exampleTransitGateway.arn,
/// }, {
/// dependsOn: [exampleVpnConnection],
/// });
/// const exampleCustomerGatewayAssociation = new aws.networkmanager.CustomerGatewayAssociation("example", {
/// globalNetworkId: example.id,
/// customerGatewayArn: exampleCustomerGateway.arn,
/// deviceId: exampleDevice.id,
/// }, {
/// dependsOn: [exampleTransitGatewayRegistration],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.GlobalNetwork("example", description="example")
/// example_site = aws.networkmanager.Site("example", global_network_id=example.id)
/// example_device = aws.networkmanager.Device("example",
/// global_network_id=example.id,
/// site_id=example_site.id)
/// example_customer_gateway = aws.ec2.CustomerGateway("example",
/// bgp_asn="65000",
/// ip_address="172.83.124.10",
/// type="ipsec.1")
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example")
/// example_vpn_connection = aws.ec2.VpnConnection("example",
/// customer_gateway_id=example_customer_gateway.id,
/// transit_gateway_id=example_transit_gateway.id,
/// type=example_customer_gateway.type,
/// static_routes_only=True)
/// example_transit_gateway_registration = aws.networkmanager.TransitGatewayRegistration("example",
/// global_network_id=example.id,
/// transit_gateway_arn=example_transit_gateway.arn,
/// opts = pulumi.ResourceOptions(depends_on=[example_vpn_connection]))
/// example_customer_gateway_association = aws.networkmanager.CustomerGatewayAssociation("example",
/// global_network_id=example.id,
/// customer_gateway_arn=example_customer_gateway.arn,
/// device_id=example_device.id,
/// opts = pulumi.ResourceOptions(depends_on=[example_transit_gateway_registration]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.GlobalNetwork("example", new()
/// {
/// Description = "example",
/// });
///
/// var exampleSite = new Aws.NetworkManager.Site("example", new()
/// {
/// GlobalNetworkId = example.Id,
/// });
///
/// var exampleDevice = new Aws.NetworkManager.Device("example", new()
/// {
/// GlobalNetworkId = example.Id,
/// SiteId = exampleSite.Id,
/// });
///
/// var exampleCustomerGateway = new Aws.Ec2.CustomerGateway("example", new()
/// {
/// BgpAsn = "65000",
/// IpAddress = "172.83.124.10",
/// Type = "ipsec.1",
/// });
///
/// var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example");
///
/// var exampleVpnConnection = new Aws.Ec2.VpnConnection("example", new()
/// {
/// CustomerGatewayId = exampleCustomerGateway.Id,
/// TransitGatewayId = exampleTransitGateway.Id,
/// Type = exampleCustomerGateway.Type,
/// StaticRoutesOnly = true,
/// });
///
/// var exampleTransitGatewayRegistration = new Aws.NetworkManager.TransitGatewayRegistration("example", new()
/// {
/// GlobalNetworkId = example.Id,
/// TransitGatewayArn = exampleTransitGateway.Arn,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleVpnConnection,
/// },
/// });
///
/// var exampleCustomerGatewayAssociation = new Aws.NetworkManager.CustomerGatewayAssociation("example", new()
/// {
/// GlobalNetworkId = example.Id,
/// CustomerGatewayArn = exampleCustomerGateway.Arn,
/// DeviceId = exampleDevice.Id,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleTransitGatewayRegistration,
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := networkmanager.NewGlobalNetwork(ctx, "example", &networkmanager.GlobalNetworkArgs{
/// Description: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSite, err := networkmanager.NewSite(ctx, "example", &networkmanager.SiteArgs{
/// GlobalNetworkId: example.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// exampleDevice, err := networkmanager.NewDevice(ctx, "example", &networkmanager.DeviceArgs{
/// GlobalNetworkId: example.ID(),
/// SiteId:          exampleSite.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// exampleCustomerGateway, err := ec2.NewCustomerGateway(ctx, "example", &ec2.CustomerGatewayArgs{
/// BgpAsn:    pulumi.String("65000"),
/// IpAddress: pulumi.String("172.83.124.10"),
/// Type:      pulumi.String("ipsec.1"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleVpnConnection, err := ec2.NewVpnConnection(ctx, "example", &ec2.VpnConnectionArgs{
/// CustomerGatewayId: exampleCustomerGateway.ID(),
/// TransitGatewayId:  exampleTransitGateway.ID(),
/// Type:              exampleCustomerGateway.Type,
/// StaticRoutesOnly:  pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTransitGatewayRegistration, err := networkmanager.NewTransitGatewayRegistration(ctx, "example", &networkmanager.TransitGatewayRegistrationArgs{
/// GlobalNetworkId:   example.ID(),
/// TransitGatewayArn: exampleTransitGateway.Arn,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleVpnConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewCustomerGatewayAssociation(ctx, "example", &networkmanager.CustomerGatewayAssociationArgs{
/// GlobalNetworkId:    example.ID(),
/// CustomerGatewayArn: exampleCustomerGateway.Arn,
/// DeviceId:           exampleDevice.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleTransitGatewayRegistration,
/// }))
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
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.GlobalNetworkArgs;
/// import com.pulumi.aws.networkmanager.Site;
/// import com.pulumi.aws.networkmanager.SiteArgs;
/// import com.pulumi.aws.networkmanager.Device;
/// import com.pulumi.aws.networkmanager.DeviceArgs;
/// import com.pulumi.aws.ec2.CustomerGateway;
/// import com.pulumi.aws.ec2.CustomerGatewayArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2.VpnConnection;
/// import com.pulumi.aws.ec2.VpnConnectionArgs;
/// import com.pulumi.aws.networkmanager.TransitGatewayRegistration;
/// import com.pulumi.aws.networkmanager.TransitGatewayRegistrationArgs;
/// import com.pulumi.aws.networkmanager.CustomerGatewayAssociation;
/// import com.pulumi.aws.networkmanager.CustomerGatewayAssociationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new GlobalNetwork("example", GlobalNetworkArgs.builder()
/// .description("example")
/// .build());
///
/// var exampleSite = new Site("exampleSite", SiteArgs.builder()
/// .globalNetworkId(example.id())
/// .build());
///
/// var exampleDevice = new Device("exampleDevice", DeviceArgs.builder()
/// .globalNetworkId(example.id())
/// .siteId(exampleSite.id())
/// .build());
///
/// var exampleCustomerGateway = new CustomerGateway("exampleCustomerGateway", CustomerGatewayArgs.builder()
/// .bgpAsn("65000")
/// .ipAddress("172.83.124.10")
/// .type("ipsec.1")
/// .build());
///
/// var exampleTransitGateway = new TransitGateway("exampleTransitGateway");
///
/// var exampleVpnConnection = new VpnConnection("exampleVpnConnection", VpnConnectionArgs.builder()
/// .customerGatewayId(exampleCustomerGateway.id())
/// .transitGatewayId(exampleTransitGateway.id())
/// .type(exampleCustomerGateway.type())
/// .staticRoutesOnly(true)
/// .build());
///
/// var exampleTransitGatewayRegistration = new TransitGatewayRegistration("exampleTransitGatewayRegistration", TransitGatewayRegistrationArgs.builder()
/// .globalNetworkId(example.id())
/// .transitGatewayArn(exampleTransitGateway.arn())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleVpnConnection)
/// .build());
///
/// var exampleCustomerGatewayAssociation = new CustomerGatewayAssociation("exampleCustomerGatewayAssociation", CustomerGatewayAssociationArgs.builder()
/// .globalNetworkId(example.id())
/// .customerGatewayArn(exampleCustomerGateway.arn())
/// .deviceId(exampleDevice.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleTransitGatewayRegistration)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:GlobalNetwork
/// properties:
/// description: example
/// exampleSite:
/// type: aws:networkmanager:Site
/// name: example
/// properties:
/// globalNetworkId: ${example.id}
/// exampleDevice:
/// type: aws:networkmanager:Device
/// name: example
/// properties:
/// globalNetworkId: ${example.id}
/// siteId: ${exampleSite.id}
/// exampleCustomerGateway:
/// type: aws:ec2:CustomerGateway
/// name: example
/// properties:
/// bgpAsn: 65000
/// ipAddress: 172.83.124.10
/// type: ipsec.1
/// exampleTransitGateway:
/// type: aws:ec2transitgateway:TransitGateway
/// name: example
/// exampleVpnConnection:
/// type: aws:ec2:VpnConnection
/// name: example
/// properties:
/// customerGatewayId: ${exampleCustomerGateway.id}
/// transitGatewayId: ${exampleTransitGateway.id}
/// type: ${exampleCustomerGateway.type}
/// staticRoutesOnly: true
/// exampleTransitGatewayRegistration:
/// type: aws:networkmanager:TransitGatewayRegistration
/// name: example
/// properties:
/// globalNetworkId: ${example.id}
/// transitGatewayArn: ${exampleTransitGateway.arn}
/// options:
/// dependsOn:
/// - ${exampleVpnConnection}
/// exampleCustomerGatewayAssociation:
/// type: aws:networkmanager:CustomerGatewayAssociation
/// name: example
/// properties:
/// globalNetworkId: ${example.id}
/// customerGatewayArn: ${exampleCustomerGateway.arn}
/// deviceId: ${exampleDevice.id}
/// options:
/// dependsOn:
/// - ${exampleTransitGatewayRegistration}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.CustomerGatewayAssociation`" pulumi-lang-dotnet="`aws.networkmanager.CustomerGatewayAssociation`" pulumi-lang-go="`networkmanager.CustomerGatewayAssociation`" pulumi-lang-python="`networkmanager.CustomerGatewayAssociation`" pulumi-lang-yaml="`aws.networkmanager.CustomerGatewayAssociation`" pulumi-lang-java="`aws.networkmanager.CustomerGatewayAssociation`">`aws.networkmanager.CustomerGatewayAssociation`</span> using the global network ID and customer gateway ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/customerGatewayAssociation:CustomerGatewayAssociation example global-network-0d47f6t230mz46dy4,arn:aws:ec2:us-west-2:123456789012:customer-gateway/cgw-123abc05e04123abc
/// ```
class CustomerGatewayAssociation extends CustomResource {
  /// ARN of the customer gateway.
  late final Output<String> customerGatewayArn;

  /// ID of the device.
  late final Output<String> deviceId;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  late final Output<String> globalNetworkId;

  /// ID of the link.
  late final Output<String?> linkId;

  CustomerGatewayAssociation(
    String name, {
    CustomerGatewayAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/customerGatewayAssociation:CustomerGatewayAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customerGatewayArn = Output.createUnknown<String>();
    this.deviceId = Output.createUnknown<String>();
    this.globalNetworkId = Output.createUnknown<String>();
    this.linkId = Output.createUnknown<String?>();
  }
}
