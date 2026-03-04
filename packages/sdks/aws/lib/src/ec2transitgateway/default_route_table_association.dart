import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_route_table_association_args.dart';
import 'default_route_table_association_state.dart';
import 'default_route_table_association_timeouts.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Transit Gateway Default Route Table Association.
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
/// const example = new aws.ec2transitgateway.DefaultRouteTableAssociation("example", {
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
///     transitGatewayRouteTableId: exampleAwsEc2TransitGatewayRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.DefaultRouteTableAssociation("example",
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
///     var example = new Aws.Ec2TransitGateway.DefaultRouteTableAssociation("example", new()
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
/// 		_, err := ec2transitgateway.NewDefaultRouteTableAssociation(ctx, "example", &ec2transitgateway.DefaultRouteTableAssociationArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.DefaultRouteTableAssociation;
/// import com.pulumi.aws.ec2transitgateway.DefaultRouteTableAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new DefaultRouteTableAssociation("example", DefaultRouteTableAssociationArgs.builder()
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
///     type: aws:ec2transitgateway:DefaultRouteTableAssociation
///     properties:
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
///       transitGatewayRouteTableId: ${exampleAwsEc2TransitGatewayRouteTable.id}
/// ```
class DefaultRouteTableAssociation extends pulumi.CustomResource {
  late final pulumi.Output<String> originalDefaultRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<DefaultRouteTableAssociationTimeouts?> timeouts;

  /// ID of the Transit Gateway to change the default association route table on.
  late final pulumi.Output<String> transitGatewayId;

  /// ID of the Transit Gateway Route Table to be made the default association route table.
  late final pulumi.Output<String> transitGatewayRouteTableId;

  /// Creates a new [DefaultRouteTableAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultRouteTableAssociation]. {@macro pulumi_ec2transitgateway_default_route_table_association_default_route_table_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultRouteTableAssociation(
    String name, {
    DefaultRouteTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2transitgateway/defaultRouteTableAssociation:DefaultRouteTableAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    originalDefaultRouteTableId = registerOutput<String>(
      'originalDefaultRouteTableId',
    );
    region = registerOutput<String>('region');
    timeouts = registerOutput<DefaultRouteTableAssociationTimeouts?>(
      'timeouts',
    );
    transitGatewayId = registerOutput<String>('transitGatewayId');
    transitGatewayRouteTableId = registerOutput<String>(
      'transitGatewayRouteTableId',
    );
  }

  /// Gets an existing [DefaultRouteTableAssociation] resource's state with the given [name] and [id].
  static DefaultRouteTableAssociation get(
    String name,
    pulumi.Input<String> id, {
    DefaultRouteTableAssociationState? state,
  }) {
    return DefaultRouteTableAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefaultRouteTableAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2transitgateway/defaultRouteTableAssociation:DefaultRouteTableAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    originalDefaultRouteTableId = registerOutput<String>(
      'originalDefaultRouteTableId',
    );
    region = registerOutput<String>('region');
    timeouts = registerOutput<DefaultRouteTableAssociationTimeouts?>(
      'timeouts',
    );
    transitGatewayId = registerOutput<String>('transitGatewayId');
    transitGatewayRouteTableId = registerOutput<String>(
      'transitGatewayRouteTableId',
    );
  }
}
