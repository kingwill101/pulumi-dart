import 'package:pulumi/pulumi.dart' as pulumi;
import 'carrier_gateway_args.dart';
import 'carrier_gateway_state.dart';

/// Manages an EC2 Carrier Gateway. See the AWS [documentation](https://docs.aws.amazon.com/vpc/latest/userguide/Carrier_Gateway.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.CarrierGateway("example", {
///     vpcId: exampleAwsVpc.id,
///     tags: {
///         Name: "example-carrier-gateway",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.CarrierGateway("example",
///     vpc_id=example_aws_vpc["id"],
///     tags={
///         "Name": "example-carrier-gateway",
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
///     var example = new Aws.Ec2.CarrierGateway("example", new()
///     {
///         VpcId = exampleAwsVpc.Id,
///         Tags =
///         {
///             { "Name", "example-carrier-gateway" },
///         },
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
/// 		_, err := ec2.NewCarrierGateway(ctx, "example", &ec2.CarrierGatewayArgs{
/// 			VpcId: pulumi.Any(exampleAwsVpc.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-carrier-gateway"),
/// 			},
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
/// import com.pulumi.aws.ec2.CarrierGateway;
/// import com.pulumi.aws.ec2.CarrierGatewayArgs;
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
///         var example = new CarrierGateway("example", CarrierGatewayArgs.builder()
///             .vpcId(exampleAwsVpc.id())
///             .tags(Map.of("Name", "example-carrier-gateway"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:CarrierGateway
///     properties:
///       vpcId: ${exampleAwsVpc.id}
///       tags:
///         Name: example-carrier-gateway
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.CarrierGateway` using the carrier gateway's ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/carrierGateway:CarrierGateway example cgw-12345
/// ```
class CarrierGateway extends pulumi.CustomResource {
  /// The ARN of the carrier gateway.
  late final pulumi.Output<String> arn;

  /// The AWS account ID of the owner of the carrier gateway.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the VPC to associate with the carrier gateway.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [CarrierGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CarrierGateway]. {@macro pulumi_ec2_carrier_gateway_carrier_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CarrierGateway(
    String name, {
    CarrierGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/carrierGateway:CarrierGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [CarrierGateway] resource's state with the given [name] and [id].
  static CarrierGateway get(
    String name,
    pulumi.Input<String> id, {
    CarrierGatewayState? state,
  }) {
    return CarrierGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CarrierGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/carrierGateway:CarrierGateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }
}
