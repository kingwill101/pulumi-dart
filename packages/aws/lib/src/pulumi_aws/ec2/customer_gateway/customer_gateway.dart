import 'package:pulumi/pulumi.dart';
import 'customer_gateway_args.dart';

/// Provides a customer gateway inside a VPC. These objects can be connected to VPN gateways via VPN connections, and allow you to establish tunnels between your network and the VPC.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.CustomerGateway("main", {
/// bgpAsn: "65000",
/// ipAddress: "172.83.124.10",
/// type: "ipsec.1",
/// tags: {
/// Name: "main-customer-gateway",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.CustomerGateway("main",
/// bgp_asn="65000",
/// ip_address="172.83.124.10",
/// type="ipsec.1",
/// tags={
/// "Name": "main-customer-gateway",
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
/// var main = new Aws.Ec2.CustomerGateway("main", new()
/// {
/// BgpAsn = "65000",
/// IpAddress = "172.83.124.10",
/// Type = "ipsec.1",
/// Tags =
/// {
/// { "Name", "main-customer-gateway" },
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewCustomerGateway(ctx, "main", &ec2.CustomerGatewayArgs{
/// BgpAsn:    pulumi.String("65000"),
/// IpAddress: pulumi.String("172.83.124.10"),
/// Type:      pulumi.String("ipsec.1"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("main-customer-gateway"),
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
/// import com.pulumi.aws.ec2.CustomerGateway;
/// import com.pulumi.aws.ec2.CustomerGatewayArgs;
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
/// var main = new CustomerGateway("main", CustomerGatewayArgs.builder()
/// .bgpAsn("65000")
/// .ipAddress("172.83.124.10")
/// .type("ipsec.1")
/// .tags(Map.of("Name", "main-customer-gateway"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: aws:ec2:CustomerGateway
/// properties:
/// bgpAsn: 65000
/// ipAddress: 172.83.124.10
/// type: ipsec.1
/// tags:
/// Name: main-customer-gateway
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Customer Gateways using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/customerGateway:CustomerGateway main cgw-b4dc3961
/// ```
class CustomerGateway extends CustomResource {
  /// The ARN of the customer gateway.
  late final Output<String> arn;

  /// The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`2147483647`" pulumi-lang-dotnet="`2147483647`" pulumi-lang-go="`2147483647`" pulumi-lang-python="`2147483647`" pulumi-lang-yaml="`2147483647`" pulumi-lang-java="`2147483647`">`2147483647`</span>. Conflicts with <span pulumi-lang-nodejs="`bgpAsnExtended`" pulumi-lang-dotnet="`BgpAsnExtended`" pulumi-lang-go="`bgpAsnExtended`" pulumi-lang-python="`bgp_asn_extended`" pulumi-lang-yaml="`bgpAsnExtended`" pulumi-lang-java="`bgpAsnExtended`">`bgp_asn_extended`</span>.
  late final Output<String?> bgpAsn;

  /// The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  <span pulumi-lang-nodejs="`2147483648`" pulumi-lang-dotnet="`2147483648`" pulumi-lang-go="`2147483648`" pulumi-lang-python="`2147483648`" pulumi-lang-yaml="`2147483648`" pulumi-lang-java="`2147483648`">`2147483648`</span> to <span pulumi-lang-nodejs="`4294967295`" pulumi-lang-dotnet="`4294967295`" pulumi-lang-go="`4294967295`" pulumi-lang-python="`4294967295`" pulumi-lang-yaml="`4294967295`" pulumi-lang-java="`4294967295`">`4294967295`</span> Conflicts with <span pulumi-lang-nodejs="`bgpAsn`" pulumi-lang-dotnet="`BgpAsn`" pulumi-lang-go="`bgpAsn`" pulumi-lang-python="`bgp_asn`" pulumi-lang-yaml="`bgpAsn`" pulumi-lang-java="`bgpAsn`">`bgp_asn`</span>.
  late final Output<String?> bgpAsnExtended;

  /// The Amazon Resource Name (ARN) for the customer gateway certificate.
  late final Output<String?> certificateArn;

  /// A name for the customer gateway device.
  late final Output<String?> deviceName;

  /// The IPv4 address for the customer gateway device's outside interface.
  late final Output<String?> ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the gateway. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of customer gateway. The only type AWS
  /// supports at this time is "ipsec.1".
  late final Output<String> type;

  CustomerGateway(
    String name, {
    CustomerGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/customerGateway:CustomerGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.bgpAsn = Output.createUnknown<String?>();
    this.bgpAsnExtended = Output.createUnknown<String?>();
    this.certificateArn = Output.createUnknown<String?>();
    this.deviceName = Output.createUnknown<String?>();
    this.ipAddress = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String>();
  }
}
