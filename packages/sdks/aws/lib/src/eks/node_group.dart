import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_args.dart';
import 'node_group_launch_template.dart';
import 'node_group_node_repair_config.dart';
import 'node_group_remote_access.dart';
import 'node_group_resource.dart';
import 'node_group_scaling_config.dart';
import 'node_group_state.dart';
import 'node_group_taint.dart';
import 'node_group_update_config.dart';
import 'node_group_warm_pool_config.dart';

/// Manages an EKS Node Group, which can provision and optionally update an Auto Scaling Group of Kubernetes worker nodes compatible with EKS. Additional documentation about this functionality can be found in the [EKS User Guide](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.NodeGroup("example", {
///     scalingConfig: {
///         desiredSize: 1,
///         maxSize: 2,
///         minSize: 1,
///     },
///     updateConfig: {
///         maxUnavailable: 1,
///     },
///     clusterName: exampleAwsEksCluster.name,
///     nodeGroupName: "example",
///     nodeRoleArn: exampleAwsIamRole.arn,
///     subnetIds: exampleAwsSubnet.map(__item => __item.id),
/// }, {
///     dependsOn: [
///         example_AmazonEKSWorkerNodePolicy,
///         example_AmazonEKSCNIPolicy,
///         example_AmazonEC2ContainerRegistryReadOnly,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.NodeGroup("example",
///     scaling_config={
///         "desired_size": 1,
///         "max_size": 2,
///         "min_size": 1,
///     },
///     update_config={
///         "max_unavailable": 1,
///     },
///     cluster_name=example_aws_eks_cluster["name"],
///     node_group_name="example",
///     node_role_arn=example_aws_iam_role["arn"],
///     subnet_ids=[__item["id"] for __item in example_aws_subnet],
///     opts = pulumi.ResourceOptions(depends_on=[
///             example__amazon_eks_worker_node_policy,
///             example__amazon_ekscni_policy,
///             example__amazon_ec2_container_registry_read_only,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Eks.NodeGroup("example", new()
///     {
///         ScalingConfig = new Aws.Eks.Inputs.NodeGroupScalingConfigArgs
///         {
///             DesiredSize = 1,
///             MaxSize = 2,
///             MinSize = 1,
///         },
///         UpdateConfig = new Aws.Eks.Inputs.NodeGroupUpdateConfigArgs
///         {
///             MaxUnavailable = 1,
///         },
///         ClusterName = exampleAwsEksCluster.Name,
///         NodeGroupName = "example",
///         NodeRoleArn = exampleAwsIamRole.Arn,
///         SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example_AmazonEKSWorkerNodePolicy,
///             example_AmazonEKSCNIPolicy,
///             example_AmazonEC2ContainerRegistryReadOnly,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.(map[string]interface{})["id"])
/// }
/// _, err := eks.NewNodeGroup(ctx, "example", &eks.NodeGroupArgs{
/// ScalingConfig: &eks.NodeGroupScalingConfigArgs{
/// DesiredSize: pulumi.Int(1),
/// MaxSize: pulumi.Int(2),
/// MinSize: pulumi.Int(1),
/// },
/// UpdateConfig: &eks.NodeGroupUpdateConfigArgs{
/// MaxUnavailable: pulumi.Int(1),
/// },
/// ClusterName: pulumi.Any(exampleAwsEksCluster.Name),
/// NodeGroupName: pulumi.String("example"),
/// NodeRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// SubnetIds: toPulumiArray(splat0),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example_AmazonEKSWorkerNodePolicy,
/// example_AmazonEKSCNIPolicy,
/// example_AmazonEC2ContainerRegistryReadOnly,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
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
/// resource "aws_eks_nodegroup" "example" {
///   depends_on = [example-AmazonEKSWorkerNodePolicy, example-AmazonEKSCNIPolicy, example-AmazonEC2ContainerRegistryReadOnly]
///   scaling_config = {
///     desired_size = 1
///     max_size     = 2
///     min_size     = 1
///   }
///   update_config = {
///     max_unavailable = 1
///   }
///   cluster_name    = exampleAwsEksCluster.name
///   node_group_name = "example"
///   node_role_arn   = exampleAwsIamRole.arn
///   subnet_ids      = exampleAwsSubnet[*].id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.NodeGroup;
/// import com.pulumi.aws.eks.NodeGroupArgs;
/// import com.pulumi.aws.eks.inputs.NodeGroupScalingConfigArgs;
/// import com.pulumi.aws.eks.inputs.NodeGroupUpdateConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new NodeGroup("example", NodeGroupArgs.builder()
///             .scalingConfig(NodeGroupScalingConfigArgs.builder()
///                 .desiredSize(1)
///                 .maxSize(2)
///                 .minSize(1)
///                 .build())
///             .updateConfig(NodeGroupUpdateConfigArgs.builder()
///                 .maxUnavailable(1)
///                 .build())
///             .clusterName(exampleAwsEksCluster.name())
///             .nodeGroupName("example")
///             .nodeRoleArn(exampleAwsIamRole.arn())
///             .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     example_AmazonEKSWorkerNodePolicy,
///                     example_AmazonEKSCNIPolicy,
///                     example_AmazonEC2ContainerRegistryReadOnly)
///                 .build());
///
///     }
/// }
/// ```
///
///
/// ### Ignoring Changes to Desired Size
///
/// You can utilize [ignoreChanges](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) create an EKS Node Group with an initial size of running instances, then ignore any changes to that count caused externally (e.g. Application Autoscaling).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.NodeGroup("example", {scalingConfig: {
///     desiredSize: 2,
/// }}, {
///     ignoreChanges: ["scalingConfig.desiredSize"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.NodeGroup("example", scaling_config={
///     "desired_size": 2,
/// },
/// opts = pulumi.ResourceOptions(ignore_changes=["scalingConfig.desiredSize"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Eks.NodeGroup("example", new()
///     {
///         ScalingConfig = new Aws.Eks.Inputs.NodeGroupScalingConfigArgs
///         {
///             DesiredSize = 2,
///         },
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "scalingConfig.desiredSize",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eks.NewNodeGroup(ctx, "example", &eks.NodeGroupArgs{
/// 			ScalingConfig: &eks.NodeGroupScalingConfigArgs{
/// 				DesiredSize: pulumi.Int(2),
/// 			},
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"scalingConfig.desiredSize",
/// 		}))
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
/// resource "aws_eks_nodegroup" "example" {
///   lifecycle {
///     ignore_changes = [scalingConfig.desiredSize]
///   }
///   scaling_config = {
///     desired_size = 2
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.NodeGroup;
/// import com.pulumi.aws.eks.NodeGroupArgs;
/// import com.pulumi.aws.eks.inputs.NodeGroupScalingConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new NodeGroup("example", NodeGroupArgs.builder()
///             .scalingConfig(NodeGroupScalingConfigArgs.builder()
///                 .desiredSize(2)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("scalingConfig.desiredSize")
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:NodeGroup
///     properties:
///       scalingConfig:
///         desiredSize: 2
///     options:
///       ignoreChanges:
///         - scalingConfig.desiredSize
/// ```
///
///
/// ### Tracking the latest EKS Node Group AMI releases
///
/// You can have the node group track the latest version of the Amazon EKS optimized Amazon Linux AMI for a given EKS version by querying an Amazon provided SSM parameter. Replace `standard` in the parameter name below with `nvidia` to retrieve the accelerated AMI version. Replace `x8664` in the parameter name below with `arm64` to retrieve the ARM version.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const eksAmiReleaseVersion = aws.ssm.getParameter({
///     name: `/aws/service/eks/optimized-ami/${exampleAwsEksCluster.version}/amazon-linux-2023/x86_64/standard/recommended/release_version`,
/// });
/// const example = new aws.eks.NodeGroup("example", {
///     clusterName: exampleAwsEksCluster.name,
///     nodeGroupName: "example",
///     version: exampleAwsEksCluster.version,
///     releaseVersion: pulumi.unsecret(eksAmiReleaseVersion.then(eksAmiReleaseVersion => eksAmiReleaseVersion.value)),
///     nodeRoleArn: exampleAwsIamRole.arn,
///     subnetIds: exampleAwsSubnet.map(__item => __item.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// eks_ami_release_version = aws.ssm.get_parameter(name=f"/aws/service/eks/optimized-ami/{example_aws_eks_cluster['version']}/amazon-linux-2023/x86_64/standard/recommended/release_version")
/// example = aws.eks.NodeGroup("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     node_group_name="example",
///     version=example_aws_eks_cluster["version"],
///     release_version=pulumi.Output.unsecret(eks_ami_release_version.value),
///     node_role_arn=example_aws_iam_role["arn"],
///     subnet_ids=[__item["id"] for __item in example_aws_subnet])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eksAmiReleaseVersion = Aws.Ssm.GetParameter.Invoke(new()
///     {
///         Name = $"/aws/service/eks/optimized-ami/{exampleAwsEksCluster.Version}/amazon-linux-2023/x86_64/standard/recommended/release_version",
///     });
///
///     var example = new Aws.Eks.NodeGroup("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         NodeGroupName = "example",
///         Version = exampleAwsEksCluster.Version,
///         ReleaseVersion = Output.Unsecret(eksAmiReleaseVersion.Apply(getParameterResult => getParameterResult.Value)),
///         NodeRoleArn = exampleAwsIamRole.Arn,
///         SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// eksAmiReleaseVersion, err := ssm.LookupParameter(ctx, &ssm.LookupParameterArgs{
/// Name: fmt.Sprintf("/aws/service/eks/optimized-ami/%v/amazon-linux-2023/x86_64/standard/recommended/release_version", exampleAwsEksCluster.Version),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.(map[string]interface{})["id"])
/// }
/// _, err = eks.NewNodeGroup(ctx, "example", &eks.NodeGroupArgs{
/// ClusterName: pulumi.Any(exampleAwsEksCluster.Name),
/// NodeGroupName: pulumi.String("example"),
/// Version: pulumi.Any(exampleAwsEksCluster.Version),
/// ReleaseVersion: pulumi.Unsecret(eksAmiReleaseVersion.Value).(pulumi.StringPtrOutput),
/// NodeRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// SubnetIds: toPulumiArray(splat0),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
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
/// data "aws_ssm_getparameter" "eksAmiReleaseVersion" {
///   name ="/aws/service/eks/optimized-ami/${exampleAwsEksCluster.version}/amazon-linux-2023/x86_64/standard/recommended/release_version"
/// }
///
/// resource "aws_eks_nodegroup" "example" {
///   cluster_name    = exampleAwsEksCluster.name
///   node_group_name = "example"
///   version         = exampleAwsEksCluster.version
///   release_version = nonsensitive(data.aws_ssm_getparameter.eksAmiReleaseVersion.value)
///   node_role_arn   = exampleAwsIamRole.arn
///   subnet_ids      = exampleAwsSubnet[*].id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetParameterArgs;
/// import com.pulumi.aws.eks.NodeGroup;
/// import com.pulumi.aws.eks.NodeGroupArgs;
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
///         final var eksAmiReleaseVersion = SsmFunctions.getParameter(GetParameterArgs.builder()
///             .name(String.format("/aws/service/eks/optimized-ami/%s/amazon-linux-2023/x86_64/standard/recommended/release_version", exampleAwsEksCluster.version()))
///             .build());
///
///         var example = new NodeGroup("example", NodeGroupArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .nodeGroupName("example")
///             .version(exampleAwsEksCluster.version())
///             .releaseVersion(eksAmiReleaseVersion.value().asPlaintext())
///             .nodeRoleArn(exampleAwsIamRole.arn())
///             .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Example IAM Role for EKS Node Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.Role("example", {
///     name: "eks-node-group-example",
///     assumeRolePolicy: JSON.stringify({
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "ec2.amazonaws.com",
///             },
///         }],
///         Version: "2012-10-17",
///     }),
/// });
/// const example_AmazonEKSWorkerNodePolicy = new aws.iam.RolePolicyAttachment("example-AmazonEKSWorkerNodePolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
///     role: example.name,
/// });
/// const example_AmazonEKSCNIPolicy = new aws.iam.RolePolicyAttachment("example-AmazonEKS_CNI_Policy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
///     role: example.name,
/// });
/// const example_AmazonEC2ContainerRegistryReadOnly = new aws.iam.RolePolicyAttachment("example-AmazonEC2ContainerRegistryReadOnly", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
///     role: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     name="eks-node-group-example",
///     assume_role_policy=json.dumps({
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "ec2.amazonaws.com",
///             },
///         }],
///         "Version": "2012-10-17",
///     }))
/// example__amazon_eks_worker_node_policy = aws.iam.RolePolicyAttachment("example-AmazonEKSWorkerNodePolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
///     role=example.name)
/// example__amazon_ekscni_policy = aws.iam.RolePolicyAttachment("example-AmazonEKS_CNI_Policy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
///     role=example.name)
/// example__amazon_ec2_container_registry_read_only = aws.iam.RolePolicyAttachment("example-AmazonEC2ContainerRegistryReadOnly",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
///     role=example.name)
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
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "eks-node-group-example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "ec2.amazonaws.com",
///                     },
///                 },
///             },
///             ["Version"] = "2012-10-17",
///         }),
///     });
///
///     var example_AmazonEKSWorkerNodePolicy = new Aws.Iam.RolePolicyAttachment("example-AmazonEKSWorkerNodePolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
///         Role = example.Name,
///     });
///
///     var example_AmazonEKSCNIPolicy = new Aws.Iam.RolePolicyAttachment("example-AmazonEKS_CNI_Policy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
///         Role = example.Name,
///     });
///
///     var example_AmazonEC2ContainerRegistryReadOnly = new Aws.Iam.RolePolicyAttachment("example-AmazonEC2ContainerRegistryReadOnly", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
///         Role = example.Name,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "ec2.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 			"Version": "2012-10-17",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("eks-node-group-example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example-AmazonEKSWorkerNodePolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"),
/// 			Role:      example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example-AmazonEKS_CNI_Policy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"),
/// 			Role:      example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example-AmazonEC2ContainerRegistryReadOnly", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"),
/// 			Role:      example.Name,
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
/// resource "aws_iam_role" "example" {
///   name = "eks-node-group-example"
///   assume_role_policy = jsonencode({
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "ec2.amazonaws.com"
///       }
///     }]
///     "Version" = "2012-10-17"
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "example-AmazonEKSWorkerNodePolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
///   role       = aws_iam_role.example.name
/// }
/// resource "aws_iam_rolepolicyattachment" "example-AmazonEKS_CNI_Policy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
///   role       = aws_iam_role.example.name
/// }
/// resource "aws_iam_rolepolicyattachment" "example-AmazonEC2ContainerRegistryReadOnly" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
///   role       = aws_iam_role.example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
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
///         var example = new Role("example", RoleArgs.builder()
///             .name("eks-node-group-example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "ec2.amazonaws.com")
///                         ))
///                     ))),
///                     jsonProperty("Version", "2012-10-17")
///                 )))
///             .build());
///
///         var example_AmazonEKSWorkerNodePolicy = new RolePolicyAttachment("example-AmazonEKSWorkerNodePolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy")
///             .role(example.name())
///             .build());
///
///         var example_AmazonEKSCNIPolicy = new RolePolicyAttachment("example-AmazonEKSCNIPolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy")
///             .role(example.name())
///             .build());
///
///         var example_AmazonEC2ContainerRegistryReadOnly = new RolePolicyAttachment("example-AmazonEC2ContainerRegistryReadOnly", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly")
///             .role(example.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: eks-node-group-example
///       assumeRolePolicy:
///         fn::toJSON:
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: ec2.amazonaws.com
///           Version: 2012-10-17
///   example-AmazonEKSWorkerNodePolicy:
///     type: aws:iam:RolePolicyAttachment
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy
///       role: ${example.name}
///   example-AmazonEKSCNIPolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: example-AmazonEKS_CNI_Policy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy
///       role: ${example.name}
///   example-AmazonEC2ContainerRegistryReadOnly:
///     type: aws:iam:RolePolicyAttachment
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly
///       role: ${example.name}
/// ```
///
///
/// ### Example Subnets for EKS Node Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const available = aws.getAvailabilityZones({
///     state: "available",
/// });
/// const example: aws.ec2.Subnet[] = [];
/// for (let range = 0; range < 2; range++) {
///     example.push(new aws.ec2.Subnet(`example-${range}`, {
///         availabilityZone: available.then(available => available.names[range]),
///         cidrBlock: std.cidrsubnet({
///             input: exampleAwsVpc.cidrBlock,
///             newbits: 8,
///             netnum: range,
///         }).then(invoke => invoke.result),
///         vpcId: exampleAwsVpc.id,
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// available = aws.get_availability_zones(state="available")
/// example: list[aws.ec2.Subnet] = []
/// for example_range in [{"value": i} for i in range(0, 2)]:
///     example.append(aws.ec2.Subnet(f"example-{example_range['value']}",
///         availability_zone=available.names[example_range["value"]],
///         cidr_block=std.cidrsubnet(input=example_aws_vpc["cidrBlock"],
///             newbits=8,
///             netnum=example_range["value"]).result,
///         vpc_id=example_aws_vpc["id"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///     });
///
///     var example = new List<Aws.Ec2.Subnet>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         example.Add(new Aws.Ec2.Subnet($"example-{range.Value}", new()
///         {
///             AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names)[range.Value],
///             CidrBlock = Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = exampleAwsVpc.CidrBlock,
///                 Newbits = 8,
///                 Netnum = range.Value,
///             }).Apply(invoke => invoke.Result),
///             VpcId = exampleAwsVpc.Id,
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   exampleAwsVpc.CidrBlock,
/// 			Newbits: 8,
/// 			Netnum:  val0,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var example []*ec2.Subnet
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := ec2.NewSubnet(ctx, fmt.Sprintf("example-%v", key0), &ec2.SubnetArgs{
/// 				AvailabilityZone: pulumi.String(available.Names[val0]),
/// 				CidrBlock:        pulumi.String(invokeCidrsubnet.Result),
/// 				VpcId:            pulumi.Any(exampleAwsVpc.Id),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			example = append(example, __res)
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_getavailabilityzones" "available" {
///   state = "available"
/// }
///
/// resource "aws_ec2_subnet" "example" {
///   count             = 2
///   availability_zone = data.aws_getavailabilityzones.available.names[count.index]
///   cidr_block        = cidrsubnet(exampleAwsVpc.cidrBlock, 8, count.index)
///   vpc_id            = exampleAwsVpc.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Subnet("example-" + i, SubnetArgs.builder()
///                 .availabilityZone(available.names()[range.value()])
///                 .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(exampleAwsVpc.cidrBlock())
///                     .newbits(8)
///                     .netnum(range.value())
///                     .build()).result())
///                 .vpcId(exampleAwsVpc.id())
///                 .build());
///
///
/// }
///     }
/// }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `clusterName` (String) Name of the EKS Cluster.
/// * `nodeGroupName` (String) Name of the node group.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Node Groups using the `clusterName` and `nodeGroupName` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/nodeGroup:NodeGroup example example-cluster:example-group
/// ```
class NodeGroup extends pulumi.CustomResource {
  /// Type of AMI associated with the EKS Node Group. See the [AWS documentation](https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType) for valid values. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> amiType;
  /// ARN of the EKS Node Group.
  late final pulumi.Output<String> arn;
  /// Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`. This provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> capacityType;
  /// Name of the EKS Cluster.
  late final pulumi.Output<String> clusterName;
  /// Disk size in GiB for worker nodes. Defaults to `50` for Windows, `20` all other node groups. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<int> diskSize;
  /// Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
  late final pulumi.Output<bool?> forceUpdateVersion;
  /// List of instance types associated with the EKS Node Group. Defaults to `["t3.medium"]`. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<List<String>> instanceTypes;
  /// Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Configuration block with Launch Template settings. See `launchTemplate` below for details. Conflicts with `remoteAccess`.
  late final pulumi.Output<NodeGroupLaunchTemplate?> launchTemplate;
  /// Name of the EKS Node Group. If omitted, the provider will assign a random, unique name. Conflicts with `nodeGroupNamePrefix`. The node group name can't be longer than 63 characters. It must start with a letter or digit, but can also include hyphens and underscores for the remaining characters.
  late final pulumi.Output<String> nodeGroupName;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `nodeGroupName`.
  late final pulumi.Output<String> nodeGroupNamePrefix;
  /// The node auto repair configuration for the node group. See `nodeRepairConfig` below for details.
  late final pulumi.Output<NodeGroupNodeRepairConfig> nodeRepairConfig;
  /// ARN of the IAM Role that provides permissions for the EKS Node Group.
  late final pulumi.Output<String> nodeRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
  late final pulumi.Output<String> releaseVersion;
  /// Configuration block with remote access settings. See `remoteAccess` below for details. Conflicts with `launchTemplate`.
  late final pulumi.Output<NodeGroupRemoteAccess?> remoteAccess;
  /// List of objects containing information about underlying resources.
  late final pulumi.Output<List<NodeGroupResource>> resources;
  /// Configuration block with scaling settings. See `scalingConfig` below for details.
  late final pulumi.Output<NodeGroupScalingConfig> scalingConfig;
  /// Status of the EKS Node Group.
  late final pulumi.Output<String> status;
  /// Identifiers of EC2 Subnets to associate with the EKS Node Group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> subnetIds;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
  late final pulumi.Output<List<NodeGroupTaint>?> taints;
  /// Configuration block with update settings. See `updateConfig` below for details.
  late final pulumi.Output<NodeGroupUpdateConfig> updateConfig;
  /// Kubernetes version. Defaults to EKS Cluster Kubernetes version. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> version;
  /// Configuration block with EC2 Auto Scaling warm pool settings. Including this block enables the warm pool; removing it disables and removes the warm pool. See `warmPoolConfig` below for details.
  late final pulumi.Output<NodeGroupWarmPoolConfig?> warmPoolConfig;

  /// Creates a new [NodeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroup]. {@macro pulumi_eks_node_group_node_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    amiType = registerOutput<String>('amiType');
    arn = registerOutput<String>('arn');
    capacityType = registerOutput<String>('capacityType');
    clusterName = registerOutput<String>('clusterName');
    diskSize = registerOutput<int>('diskSize');
    forceUpdateVersion = registerOutput<bool?>('forceUpdateVersion');
    instanceTypes = registerOutput<List<String>>('instanceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    launchTemplate = registerOutput<NodeGroupLaunchTemplate?>('launchTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeGroupName = registerOutput<String>('nodeGroupName');
    nodeGroupNamePrefix = registerOutput<String>('nodeGroupNamePrefix');
    nodeRepairConfig = registerOutput<NodeGroupNodeRepairConfig>('nodeRepairConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupNodeRepairConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeRoleArn = registerOutput<String>('nodeRoleArn');
    region = registerOutput<String>('region');
    releaseVersion = registerOutput<String>('releaseVersion');
    remoteAccess = registerOutput<NodeGroupRemoteAccess?>('remoteAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupRemoteAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resources = registerOutput<List<NodeGroupResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeGroupResource>(guardedValue, (value) => NodeGroupResource.fromMap((value as Map).cast<String, dynamic>())); });
    scalingConfig = registerOutput<NodeGroupScalingConfig>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taints = registerOutput<List<NodeGroupTaint>?>('taints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeGroupTaint>(guardedValue, (value) => NodeGroupTaint.fromMap((value as Map).cast<String, dynamic>())); });
    updateConfig = registerOutput<NodeGroupUpdateConfig>('updateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupUpdateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
    warmPoolConfig = registerOutput<NodeGroupWarmPoolConfig?>('warmPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupWarmPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [NodeGroup] resource's state with the given [name] and [id].
  static NodeGroup get(
    String name,
    pulumi.Input<String> id, {
    NodeGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NodeGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NodeGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amiType = registerOutput<String>('amiType');
    arn = registerOutput<String>('arn');
    capacityType = registerOutput<String>('capacityType');
    clusterName = registerOutput<String>('clusterName');
    diskSize = registerOutput<int>('diskSize');
    forceUpdateVersion = registerOutput<bool?>('forceUpdateVersion');
    instanceTypes = registerOutput<List<String>>('instanceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    launchTemplate = registerOutput<NodeGroupLaunchTemplate?>('launchTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeGroupName = registerOutput<String>('nodeGroupName');
    nodeGroupNamePrefix = registerOutput<String>('nodeGroupNamePrefix');
    nodeRepairConfig = registerOutput<NodeGroupNodeRepairConfig>('nodeRepairConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupNodeRepairConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeRoleArn = registerOutput<String>('nodeRoleArn');
    region = registerOutput<String>('region');
    releaseVersion = registerOutput<String>('releaseVersion');
    remoteAccess = registerOutput<NodeGroupRemoteAccess?>('remoteAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupRemoteAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resources = registerOutput<List<NodeGroupResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeGroupResource>(guardedValue, (value) => NodeGroupResource.fromMap((value as Map).cast<String, dynamic>())); });
    scalingConfig = registerOutput<NodeGroupScalingConfig>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taints = registerOutput<List<NodeGroupTaint>?>('taints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeGroupTaint>(guardedValue, (value) => NodeGroupTaint.fromMap((value as Map).cast<String, dynamic>())); });
    updateConfig = registerOutput<NodeGroupUpdateConfig>('updateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupUpdateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
    warmPoolConfig = registerOutput<NodeGroupWarmPoolConfig?>('warmPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupWarmPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [NodeGroup] resource.
  NodeGroup.reference(String urn)
    : super(
        'aws:eks/nodeGroup:NodeGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    amiType = registerOutput<String>('amiType');
    arn = registerOutput<String>('arn');
    capacityType = registerOutput<String>('capacityType');
    clusterName = registerOutput<String>('clusterName');
    diskSize = registerOutput<int>('diskSize');
    forceUpdateVersion = registerOutput<bool?>('forceUpdateVersion');
    instanceTypes = registerOutput<List<String>>('instanceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    launchTemplate = registerOutput<NodeGroupLaunchTemplate?>('launchTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeGroupName = registerOutput<String>('nodeGroupName');
    nodeGroupNamePrefix = registerOutput<String>('nodeGroupNamePrefix');
    nodeRepairConfig = registerOutput<NodeGroupNodeRepairConfig>('nodeRepairConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupNodeRepairConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeRoleArn = registerOutput<String>('nodeRoleArn');
    region = registerOutput<String>('region');
    releaseVersion = registerOutput<String>('releaseVersion');
    remoteAccess = registerOutput<NodeGroupRemoteAccess?>('remoteAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupRemoteAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resources = registerOutput<List<NodeGroupResource>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeGroupResource>(guardedValue, (value) => NodeGroupResource.fromMap((value as Map).cast<String, dynamic>())); });
    scalingConfig = registerOutput<NodeGroupScalingConfig>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taints = registerOutput<List<NodeGroupTaint>?>('taints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeGroupTaint>(guardedValue, (value) => NodeGroupTaint.fromMap((value as Map).cast<String, dynamic>())); });
    updateConfig = registerOutput<NodeGroupUpdateConfig>('updateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupUpdateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
    warmPoolConfig = registerOutput<NodeGroupWarmPoolConfig?>('warmPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeGroupWarmPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
