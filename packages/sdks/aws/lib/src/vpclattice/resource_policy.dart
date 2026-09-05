import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';
import 'resource_policy_state.dart';

/// Resource for managing an AWS VPC Lattice Resource Policy.
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
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.vpclattice.ServiceNetwork("example", {name: "example-vpclattice-service-network"});
/// const exampleResourcePolicy = new aws.vpclattice.ResourcePolicy("example", {
///     resourceArn: example.arn,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "test-pol-principals-6",
///             Effect: "Allow",
///             Principal: {
///                 AWS: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:root`),
///             },
///             Action: [
///                 "vpc-lattice:CreateServiceNetworkVpcAssociation",
///                 "vpc-lattice:CreateServiceNetworkServiceAssociation",
///                 "vpc-lattice:GetServiceNetwork",
///             ],
///             Resource: example.arn,
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// example = aws.vpclattice.ServiceNetwork("example", name="example-vpclattice-service-network")
/// example_resource_policy = aws.vpclattice.ResourcePolicy("example",
///     resource_arn=example.arn,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "test-pol-principals-6",
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": f"arn:{current_get_partition.partition}:iam::{current.account_id}:root",
///             },
///             "Action": [
///                 "vpc-lattice:CreateServiceNetworkVpcAssociation",
///                 "vpc-lattice:CreateServiceNetworkServiceAssociation",
///                 "vpc-lattice:GetServiceNetwork",
///             ],
///             "Resource": example.arn,
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = new Aws.VpcLattice.ServiceNetwork("example", new()
///     {
///         Name = "example-vpclattice-service-network",
///     });
///
///     var exampleResourcePolicy = new Aws.VpcLattice.ResourcePolicy("example", new()
///     {
///         ResourceArn = example.Arn,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "test-pol-principals-6",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = Output.Tuple(currentGetPartition, current).Apply(values =>
///                         {
///                             var currentGetPartition = values.Item1;
///                             var current = values.Item2;
///                             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root";
///                         }),
///                     },
///                     ["Action"] = new[]
///                     {
///                         "vpc-lattice:CreateServiceNetworkVpcAssociation",
///                         "vpc-lattice:CreateServiceNetworkServiceAssociation",
///                         "vpc-lattice:GetServiceNetwork",
///                     },
///                     ["Resource"] = example.Arn,
///                 },
///             },
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := vpclattice.NewServiceNetwork(ctx, "example", &vpclattice.ServiceNetworkArgs{
/// 			Name: pulumi.String("example-vpclattice-service-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpclattice.NewResourcePolicy(ctx, "example", &vpclattice.ResourcePolicyArgs{
/// 			ResourceArn: example.Arn,
/// 			Policy: example.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Sid":    "test-pol-principals-6",
/// 							"Effect": "Allow",
/// 							"Principal": map[string]string{
/// 								"AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// 							},
/// 							"Action": []string{
/// 								"vpc-lattice:CreateServiceNetworkVpcAssociation",
/// 								"vpc-lattice:CreateServiceNetworkServiceAssociation",
/// 								"vpc-lattice:GetServiceNetwork",
/// 							},
/// 							"Resource": arn,
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_getpartition" "currentGetPartition" {
/// }
///
/// resource "aws_vpclattice_servicenetwork" "example" {
///   name = "example-vpclattice-service-network"
/// }
/// resource "aws_vpclattice_resourcepolicy" "example" {
///   resource_arn = aws_vpclattice_servicenetwork.example.arn
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"    = "test-pol-principals-6"
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:${data.aws_getpartition.currentGetPartition.partition}:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Action"   = ["vpc-lattice:CreateServiceNetworkVpcAssociation", "vpc-lattice:CreateServiceNetworkServiceAssociation", "vpc-lattice:GetServiceNetwork"]
///       "Resource" = aws_vpclattice_servicenetwork.example.arn
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.vpclattice.ServiceNetwork;
/// import com.pulumi.aws.vpclattice.ServiceNetworkArgs;
/// import com.pulumi.aws.vpclattice.ResourcePolicy;
/// import com.pulumi.aws.vpclattice.ResourcePolicyArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new ServiceNetwork("example", ServiceNetworkArgs.builder()
///             .name("example-vpclattice-service-network")
///             .build());
///
///         var exampleResourcePolicy = new ResourcePolicy("exampleResourcePolicy", ResourcePolicyArgs.builder()
///             .resourceArn(example.arn())
///             .policy(example.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "test-pol-principals-6"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", String.format("arn:%s:iam::%s:root", currentGetPartition.partition(),current.accountId()))
///                         )),
///                         jsonProperty("Action", jsonArray(
///                             "vpc-lattice:CreateServiceNetworkVpcAssociation",
///                             "vpc-lattice:CreateServiceNetworkServiceAssociation",
///                             "vpc-lattice:GetServiceNetwork"
///                         )),
///                         jsonProperty("Resource", _arn)
///                     )))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ServiceNetwork
///     properties:
///       name: example-vpclattice-service-network
///   exampleResourcePolicy:
///     type: aws:vpclattice:ResourcePolicy
///     name: example
///     properties:
///       resourceArn: ${example.arn}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: test-pol-principals-6
///               Effect: Allow
///               Principal:
///                 AWS: arn:${currentGetPartition.partition}:iam::${current.accountId}:root
///               Action:
///                 - vpc-lattice:CreateServiceNetworkVpcAssociation
///                 - vpc-lattice:CreateServiceNetworkServiceAssociation
///                 - vpc-lattice:GetServiceNetwork
///               Resource: ${example.arn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Resource Policy using the `resourceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/resourcePolicy:ResourcePolicy example rft-8012925589
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// IAM policy. The policy string in JSON must not contain newlines or blank lines.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID or ARN of the service network or service for which the policy is created.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_vpclattice_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [ResourcePolicy] resource's state with the given [name] and [id].
  static ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Creates a typed reference to an existing [ResourcePolicy] resource.
  ResourcePolicy.reference(String urn)
    : super(
        'aws:vpclattice/resourcePolicy:ResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
