import 'package:pulumi/pulumi.dart';
import 'transit_gateway_registration_args.dart';

/// Manages a Network Manager transit gateway registration. Registers a transit gateway to a global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.GlobalNetwork("example", {description: "example"});
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {});
/// const exampleTransitGatewayRegistration = new aws.networkmanager.TransitGatewayRegistration("example", {
/// globalNetworkId: example.id,
/// transitGatewayArn: exampleTransitGateway.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.GlobalNetwork("example", description="example")
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example")
/// example_transit_gateway_registration = aws.networkmanager.TransitGatewayRegistration("example",
/// global_network_id=example.id,
/// transit_gateway_arn=example_transit_gateway.arn)
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
/// var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example");
///
/// var exampleTransitGatewayRegistration = new Aws.NetworkManager.TransitGatewayRegistration("example", new()
/// {
/// GlobalNetworkId = example.Id,
/// TransitGatewayArn = exampleTransitGateway.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewTransitGatewayRegistration(ctx, "example", &networkmanager.TransitGatewayRegistrationArgs{
/// GlobalNetworkId:   example.ID(),
/// TransitGatewayArn: exampleTransitGateway.Arn,
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
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.GlobalNetworkArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.networkmanager.TransitGatewayRegistration;
/// import com.pulumi.aws.networkmanager.TransitGatewayRegistrationArgs;
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
/// var exampleTransitGateway = new TransitGateway("exampleTransitGateway");
///
/// var exampleTransitGatewayRegistration = new TransitGatewayRegistration("exampleTransitGatewayRegistration", TransitGatewayRegistrationArgs.builder()
/// .globalNetworkId(example.id())
/// .transitGatewayArn(exampleTransitGateway.arn())
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
/// exampleTransitGateway:
/// type: aws:ec2transitgateway:TransitGateway
/// name: example
/// exampleTransitGatewayRegistration:
/// type: aws:networkmanager:TransitGatewayRegistration
/// name: example
/// properties:
/// globalNetworkId: ${example.id}
/// transitGatewayArn: ${exampleTransitGateway.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.TransitGatewayRegistration`" pulumi-lang-dotnet="`aws.networkmanager.TransitGatewayRegistration`" pulumi-lang-go="`networkmanager.TransitGatewayRegistration`" pulumi-lang-python="`networkmanager.TransitGatewayRegistration`" pulumi-lang-yaml="`aws.networkmanager.TransitGatewayRegistration`" pulumi-lang-java="`aws.networkmanager.TransitGatewayRegistration`">`aws.networkmanager.TransitGatewayRegistration`</span> using the global network ID and transit gateway ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayRegistration:TransitGatewayRegistration example global-network-0d47f6t230mz46dy4,arn:aws:ec2:us-west-2:123456789012:transit-gateway/tgw-123abc05e04123abc
/// ```
class TransitGatewayRegistration extends CustomResource {
  /// ID of the Global Network to register to.
  late final Output<String> globalNetworkId;

  /// ARN of the Transit Gateway to register.
  late final Output<String> transitGatewayArn;

  TransitGatewayRegistration(
    String name, {
    TransitGatewayRegistrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayRegistration:TransitGatewayRegistration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.globalNetworkId = Output.createUnknown<String>();
    this.transitGatewayArn = Output.createUnknown<String>();
  }
}
