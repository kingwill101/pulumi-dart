import 'package:pulumi/pulumi.dart';
import '../default_route_table_propagation_timeouts/default_route_table_propagation_timeouts.dart';
import 'default_route_table_propagation_args.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Transit Gateway Default Route Table Propagation.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.DefaultRouteTablePropagation("example", {
/// transitGatewayId: exampleAwsEc2TransitGateway.id,
/// transitGatewayRouteTableId: exampleAwsEc2TransitGatewayRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.DefaultRouteTablePropagation("example",
/// transit_gateway_id=example_aws_ec2_transit_gateway["id"],
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
/// var example = new Aws.Ec2TransitGateway.DefaultRouteTablePropagation("example", new()
/// {
/// TransitGatewayId = exampleAwsEc2TransitGateway.Id,
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
/// _, err := ec2transitgateway.NewDefaultRouteTablePropagation(ctx, "example", &ec2transitgateway.DefaultRouteTablePropagationArgs{
/// TransitGatewayId:           pulumi.Any(exampleAwsEc2TransitGateway.Id),
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
/// import com.pulumi.aws.ec2transitgateway.DefaultRouteTablePropagation;
/// import com.pulumi.aws.ec2transitgateway.DefaultRouteTablePropagationArgs;
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
/// var example = new DefaultRouteTablePropagation("example", DefaultRouteTablePropagationArgs.builder()
/// .transitGatewayId(exampleAwsEc2TransitGateway.id())
/// .transitGatewayRouteTableId(exampleAwsEc2TransitGatewayRouteTable.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:DefaultRouteTablePropagation
/// properties:
/// transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// transitGatewayRouteTableId: ${exampleAwsEc2TransitGatewayRouteTable.id}
/// ```
/// <!--End PulumiCodeChooser -->
class DefaultRouteTablePropagation extends CustomResource {
  late final Output<String> originalDefaultRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<DefaultRouteTablePropagationTimeouts?> timeouts;

  /// ID of the Transit Gateway to change the default association route table on.
  late final Output<String> transitGatewayId;

  /// ID of the Transit Gateway Route Table to be made the default association route table.
  late final Output<String> transitGatewayRouteTableId;

  DefaultRouteTablePropagation(
    String name, {
    DefaultRouteTablePropagationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/defaultRouteTablePropagation:DefaultRouteTablePropagation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.originalDefaultRouteTableId =
        registerOutput<String>('originalDefaultRouteTableId');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<DefaultRouteTablePropagationTimeouts?>('timeouts');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
