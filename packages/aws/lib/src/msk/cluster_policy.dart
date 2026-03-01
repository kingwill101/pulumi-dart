import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_policy_args.dart';

/// Resource for managing an AWS Managed Streaming for Kafka Cluster Policy.
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
/// const example = new aws.msk.ClusterPolicy("example", {
///     clusterArn: exampleAwsMskCluster.arn,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "ExampleMskClusterPolicy",
///             Effect: "Allow",
///             Principal: {
///                 AWS: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:root`),
///             },
///             Action: [
///                 "kafka:Describe*",
///                 "kafka:Get*",
///                 "kafka:CreateVpcConnection",
///                 "kafka:GetBootstrapBrokers",
///             ],
///             Resource: exampleAwsMskCluster.arn,
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
/// example = aws.msk.ClusterPolicy("example",
///     cluster_arn=example_aws_msk_cluster["arn"],
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "ExampleMskClusterPolicy",
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": f"arn:{current_get_partition.partition}:iam::{current.account_id}:root",
///             },
///             "Action": [
///                 "kafka:Describe*",
///                 "kafka:Get*",
///                 "kafka:CreateVpcConnection",
///                 "kafka:GetBootstrapBrokers",
///             ],
///             "Resource": example_aws_msk_cluster["arn"],
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
///     var example = new Aws.Msk.ClusterPolicy("example", new()
///     {
///         ClusterArn = exampleAwsMskCluster.Arn,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "ExampleMskClusterPolicy",
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
///                         "kafka:Describe*",
///                         "kafka:Get*",
///                         "kafka:CreateVpcConnection",
///                         "kafka:GetBootstrapBrokers",
///                     },
///                     ["Resource"] = exampleAwsMskCluster.Arn,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
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
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "ExampleMskClusterPolicy",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// 					},
/// 					"Action": []string{
/// 						"kafka:Describe*",
/// 						"kafka:Get*",
/// 						"kafka:CreateVpcConnection",
/// 						"kafka:GetBootstrapBrokers",
/// 					},
/// 					"Resource": exampleAwsMskCluster.Arn,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = msk.NewClusterPolicy(ctx, "example", &msk.ClusterPolicyArgs{
/// 			ClusterArn: pulumi.Any(exampleAwsMskCluster.Arn),
/// 			Policy:     pulumi.String(json0),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.msk.ClusterPolicy;
/// import com.pulumi.aws.msk.ClusterPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new ClusterPolicy("example", ClusterPolicyArgs.builder()
///             .clusterArn(exampleAwsMskCluster.arn())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "ExampleMskClusterPolicy"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", String.format("arn:%s:iam::%s:root", currentGetPartition.partition(),current.accountId()))
///                         )),
///                         jsonProperty("Action", jsonArray(
///                             "kafka:Describe*",
///                             "kafka:Get*",
///                             "kafka:CreateVpcConnection",
///                             "kafka:GetBootstrapBrokers"
///                         )),
///                         jsonProperty("Resource", exampleAwsMskCluster.arn())
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:msk:ClusterPolicy
///     properties:
///       clusterArn: ${exampleAwsMskCluster.arn}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: ExampleMskClusterPolicy
///               Effect: Allow
///               Principal:
///                 AWS: arn:${currentGetPartition.partition}:iam::${current.accountId}:root
///               Action:
///                 - kafka:Describe*
///                 - kafka:Get*
///                 - kafka:CreateVpcConnection
///                 - kafka:GetBootstrapBrokers
///               Resource: ${exampleAwsMskCluster.arn}
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
/// Using `pulumi import`, import Managed Streaming for Kafka Cluster Policy using the `cluster_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/clusterPolicy:ClusterPolicy example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class ClusterPolicy extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) that uniquely identifies the cluster.
  late final pulumi.Output<String> clusterArn;
  late final pulumi.Output<String> currentVersion;

  /// Resource policy for cluster.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ClusterPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterPolicy]. {@macro pulumi_msk_cluster_policy_cluster_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterPolicy(
    String name, {
    ClusterPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:msk/clusterPolicy:ClusterPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.clusterArn = registerOutput<String>('clusterArn');
    this.currentVersion = registerOutput<String>('currentVersion');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
