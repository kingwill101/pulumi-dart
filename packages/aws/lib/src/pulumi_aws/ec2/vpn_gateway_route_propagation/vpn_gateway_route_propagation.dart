import 'package:pulumi/pulumi.dart';
import 'vpn_gateway_route_propagation_args.dart';

/// Requests automatic route propagation between a VPN gateway and a route table.
///
/// > **Note:** This resource should not be used with a route table that has
/// the <span pulumi-lang-nodejs="`propagatingVgws`" pulumi-lang-dotnet="`PropagatingVgws`" pulumi-lang-go="`propagatingVgws`" pulumi-lang-python="`propagating_vgws`" pulumi-lang-yaml="`propagatingVgws`" pulumi-lang-java="`propagatingVgws`">`propagating_vgws`</span> argument set. If that argument is set, any route
/// propagation not explicitly listed in its value will be removed.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpnGatewayRoutePropagation("example", {
/// vpnGatewayId: exampleAwsVpnGateway.id,
/// routeTableId: exampleAwsRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpnGatewayRoutePropagation("example",
/// vpn_gateway_id=example_aws_vpn_gateway["id"],
/// route_table_id=example_aws_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.VpnGatewayRoutePropagation("example", new()
/// {
/// VpnGatewayId = exampleAwsVpnGateway.Id,
/// RouteTableId = exampleAwsRouteTable.Id,
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
/// _, err := ec2.NewVpnGatewayRoutePropagation(ctx, "example", &ec2.VpnGatewayRoutePropagationArgs{
/// VpnGatewayId: pulumi.Any(exampleAwsVpnGateway.Id),
/// RouteTableId: pulumi.Any(exampleAwsRouteTable.Id),
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
/// import com.pulumi.aws.ec2.VpnGatewayRoutePropagation;
/// import com.pulumi.aws.ec2.VpnGatewayRoutePropagationArgs;
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
/// var example = new VpnGatewayRoutePropagation("example", VpnGatewayRoutePropagationArgs.builder()
/// .vpnGatewayId(exampleAwsVpnGateway.id())
/// .routeTableId(exampleAwsRouteTable.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpnGatewayRoutePropagation
/// properties:
/// vpnGatewayId: ${exampleAwsVpnGateway.id}
/// routeTableId: ${exampleAwsRouteTable.id}
/// ```
/// <!--End PulumiCodeChooser -->
class VpnGatewayRoutePropagation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The id of the <span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span> to propagate routes into.
  late final Output<String> routeTableId;

  /// The id of the <span pulumi-lang-nodejs="`aws.ec2.VpnGateway`" pulumi-lang-dotnet="`aws.ec2.VpnGateway`" pulumi-lang-go="`ec2.VpnGateway`" pulumi-lang-python="`ec2.VpnGateway`" pulumi-lang-yaml="`aws.ec2.VpnGateway`" pulumi-lang-java="`aws.ec2.VpnGateway`">`aws.ec2.VpnGateway`</span> to propagate routes from.
  late final Output<String> vpnGatewayId;

  VpnGatewayRoutePropagation(
    String name, {
    VpnGatewayRoutePropagationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnGatewayRoutePropagation:VpnGatewayRoutePropagation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }
}
