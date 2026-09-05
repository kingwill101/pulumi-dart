import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_route_table_propagation_args.dart';
import 'default_route_table_propagation_state.dart';
import 'default_route_table_propagation_timeouts.dart';

/// Resource for managing an AWS EC2 Transit Gateway Default Route Table Propagation.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.DefaultRouteTablePropagation("example", {
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
///     transitGatewayRouteTableId: exampleAwsEc2TransitGatewayRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.DefaultRouteTablePropagation("example",
///     transit_gateway_id=example_aws_ec2_transit_gateway["id"],
///     transit_gateway_route_table_id=example_aws_ec2_transit_gateway_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.DefaultRouteTablePropagation("example", new()
///     {
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
///         TransitGatewayRouteTableId = exampleAwsEc2TransitGatewayRouteTable.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewDefaultRouteTablePropagation(ctx, "example", &ec2transitgateway.DefaultRouteTablePropagationArgs{
/// 			TransitGatewayId:           pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// 			TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGatewayRouteTable.Id),
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
/// resource "aws_ec2transitgateway_defaultroutetablepropagation" "example" {
///   transit_gateway_id             = exampleAwsEc2TransitGateway.id
///   transit_gateway_route_table_id = exampleAwsEc2TransitGatewayRouteTable.id
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
///         var example = new DefaultRouteTablePropagation("example", DefaultRouteTablePropagationArgs.builder()
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .transitGatewayRouteTableId(exampleAwsEc2TransitGatewayRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:DefaultRouteTablePropagation
///     properties:
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
///       transitGatewayRouteTableId: ${exampleAwsEc2TransitGatewayRouteTable.id}
/// ```
class DefaultRouteTablePropagation extends pulumi.CustomResource {
  late final pulumi.Output<String> originalDefaultRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<DefaultRouteTablePropagationTimeouts?> timeouts;
  /// ID of the Transit Gateway to change the default association route table on.
  late final pulumi.Output<String> transitGatewayId;
  /// ID of the Transit Gateway Route Table to be made the default association route table.
  late final pulumi.Output<String> transitGatewayRouteTableId;

  /// Creates a new [DefaultRouteTablePropagation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultRouteTablePropagation]. {@macro pulumi_ec2transitgateway_default_route_table_propagation_default_route_table_propagation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultRouteTablePropagation(
    String name, {
    DefaultRouteTablePropagationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/defaultRouteTablePropagation:DefaultRouteTablePropagation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    originalDefaultRouteTableId = registerOutput<String>('originalDefaultRouteTableId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<DefaultRouteTablePropagationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DefaultRouteTablePropagationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayId = registerOutput<String>('transitGatewayId');
    transitGatewayRouteTableId = registerOutput<String>('transitGatewayRouteTableId');
  }

  /// Gets an existing [DefaultRouteTablePropagation] resource's state with the given [name] and [id].
  static DefaultRouteTablePropagation get(
    String name,
    pulumi.Input<String> id, {
    DefaultRouteTablePropagationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DefaultRouteTablePropagation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DefaultRouteTablePropagation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/defaultRouteTablePropagation:DefaultRouteTablePropagation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    originalDefaultRouteTableId = registerOutput<String>('originalDefaultRouteTableId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<DefaultRouteTablePropagationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DefaultRouteTablePropagationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayId = registerOutput<String>('transitGatewayId');
    transitGatewayRouteTableId = registerOutput<String>('transitGatewayRouteTableId');
  }

  /// Creates a typed reference to an existing [DefaultRouteTablePropagation] resource.
  DefaultRouteTablePropagation.reference(String urn)
    : super(
        'aws:ec2transitgateway/defaultRouteTablePropagation:DefaultRouteTablePropagation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    originalDefaultRouteTableId = registerOutput<String>('originalDefaultRouteTableId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<DefaultRouteTablePropagationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DefaultRouteTablePropagationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayId = registerOutput<String>('transitGatewayId');
    transitGatewayRouteTableId = registerOutput<String>('transitGatewayRouteTableId');
  }
}
