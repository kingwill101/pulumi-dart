import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_policy_args.dart';
import 'vpc_endpoint_policy_state.dart';

/// Provides a VPC Endpoint Policy resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcEndpointService({
///     service: "dynamodb",
/// });
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleVpcEndpoint = new aws.ec2.VpcEndpoint("example", {
///     serviceName: example.then(example => example.serviceName),
///     vpcId: exampleVpc.id,
/// });
/// const exampleVpcEndpointPolicy = new aws.ec2.VpcEndpointPolicy("example", {
///     vpcEndpointId: exampleVpcEndpoint.id,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "AllowAll",
///             Effect: "Allow",
///             Principal: {
///                 AWS: "*",
///             },
///             Action: ["dynamodb:*"],
///             Resource: "*",
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_endpoint_service(service="dynamodb")
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_vpc_endpoint = aws.ec2.VpcEndpoint("example",
///     service_name=example.service_name,
///     vpc_id=example_vpc.id)
/// example_vpc_endpoint_policy = aws.ec2.VpcEndpointPolicy("example",
///     vpc_endpoint_id=example_vpc_endpoint.id,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "AllowAll",
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": "*",
///             },
///             "Action": ["dynamodb:*"],
///             "Resource": "*",
///         }],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetVpcEndpointService.Invoke(new()
///     {
///         Service = "dynamodb",
///     });
///
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleVpcEndpoint = new Aws.Ec2.VpcEndpoint("example", new()
///     {
///         ServiceName = example.Apply(getVpcEndpointServiceResult => getVpcEndpointServiceResult.ServiceName),
///         VpcId = exampleVpc.Id,
///     });
///
///     var exampleVpcEndpointPolicy = new Aws.Ec2.VpcEndpointPolicy("example", new()
///     {
///         VpcEndpointId = exampleVpcEndpoint.Id,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "AllowAll",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "*",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "dynamodb:*",
///                     },
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.LookupVpcEndpointService(ctx, &ec2.LookupVpcEndpointServiceArgs{
/// 			Service: pulumi.StringRef("dynamodb"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpcEndpoint, err := ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// 			ServiceName: pulumi.String(example.ServiceName),
/// 			VpcId:       exampleVpc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "AllowAll",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"AWS": "*",
/// 					},
/// 					"Action": []string{
/// 						"dynamodb:*",
/// 					},
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = ec2.NewVpcEndpointPolicy(ctx, "example", &ec2.VpcEndpointPolicyArgs{
/// 			VpcEndpointId: exampleVpcEndpoint.ID().ToIDOutput().ToStringOutput(),
/// 			Policy:        pulumi.String(json0),
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
/// data "aws_ec2_getvpcendpointservice" "example" {
///   service = "dynamodb"
/// }
///
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_vpcendpoint" "example" {
///   service_name = data.aws_ec2_getvpcendpointservice.example.service_name
///   vpc_id       = aws_ec2_vpc.example.id
/// }
/// resource "aws_ec2_vpcendpointpolicy" "example" {
///   vpc_endpoint_id = aws_ec2_vpcendpoint.example.id
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"    = "AllowAll"
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" = "*"
///       }
///       "Action"   = ["dynamodb:*"]
///       "Resource" = "*"
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.ec2.VpcEndpointPolicy;
/// import com.pulumi.aws.ec2.VpcEndpointPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var example = Ec2Functions.getVpcEndpointService(GetVpcEndpointServiceArgs.builder()
///             .service("dynamodb")
///             .build());
///
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleVpcEndpoint = new VpcEndpoint("exampleVpcEndpoint", VpcEndpointArgs.builder()
///             .serviceName(example.serviceName())
///             .vpcId(exampleVpc.id())
///             .build());
///
///         var exampleVpcEndpointPolicy = new VpcEndpointPolicy("exampleVpcEndpointPolicy", VpcEndpointPolicyArgs.builder()
///             .vpcEndpointId(exampleVpcEndpoint.id())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "AllowAll"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "*")
///                         )),
///                         jsonProperty("Action", jsonArray("dynamodb:*")),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleVpcEndpoint:
///     type: aws:ec2:VpcEndpoint
///     name: example
///     properties:
///       serviceName: ${example.serviceName}
///       vpcId: ${exampleVpc.id}
///   exampleVpcEndpointPolicy:
///     type: aws:ec2:VpcEndpointPolicy
///     name: example
///     properties:
///       vpcEndpointId: ${exampleVpcEndpoint.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: AllowAll
///               Effect: Allow
///               Principal:
///                 AWS: '*'
///               Action:
///                 - dynamodb:*
///               Resource: '*'
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpcEndpointService
///       arguments:
///         service: dynamodb
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointPolicy:VpcEndpointPolicy example vpce-3ecf2a57
/// ```
class VpcEndpointPolicy extends pulumi.CustomResource {
  /// A policy to attach to the endpoint that controls access to the service. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The VPC Endpoint ID.
  late final pulumi.Output<String> vpcEndpointId;

  /// Creates a new [VpcEndpointPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointPolicy]. {@macro pulumi_ec2_vpc_endpoint_policy_vpc_endpoint_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointPolicy(
    String name, {
    VpcEndpointPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointPolicy:VpcEndpointPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }

  /// Gets an existing [VpcEndpointPolicy] resource's state with the given [name] and [id].
  static VpcEndpointPolicy get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcEndpointPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcEndpointPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointPolicy:VpcEndpointPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }

  /// Creates a typed reference to an existing [VpcEndpointPolicy] resource.
  VpcEndpointPolicy.reference(String urn)
    : super(
        'aws:ec2/vpcEndpointPolicy:VpcEndpointPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
