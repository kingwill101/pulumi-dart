import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_access_config.dart';
import 'cluster_args.dart';
import 'cluster_certificate_authority.dart';
import 'cluster_compute_config.dart';
import 'cluster_control_plane_scaling_config.dart';
import 'cluster_encryption_config.dart';
import 'cluster_identity.dart';
import 'cluster_kube_api_server_config.dart';
import 'cluster_kube_controller_manager_config.dart';
import 'cluster_kube_scheduler_config.dart';
import 'cluster_kubernetes_network_config.dart';
import 'cluster_outpost_config.dart';
import 'cluster_remote_network_config.dart';
import 'cluster_state.dart';
import 'cluster_storage_config.dart';
import 'cluster_upgrade_policy.dart';
import 'cluster_vpc_config.dart';
import 'cluster_zonal_shift_config.dart';

/// Manages an EKS Cluster.
///
/// ## Example Usage
///
/// ### EKS Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cluster = new aws.iam.Role("cluster", {
///     name: "eks-cluster-example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             Effect: "Allow",
///             Principal: {
///                 Service: "eks.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const clusterAmazonEKSClusterPolicy = new aws.iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///     role: cluster.name,
/// });
/// const example = new aws.eks.Cluster("example", {
///     accessConfig: {
///         authenticationMode: "API",
///     },
///     vpcConfig: {
///         subnetIds: [
///             az1.id,
///             az2.id,
///             az3.id,
///         ],
///     },
///     name: "example",
///     roleArn: cluster.arn,
///     version: "1.35",
/// }, {
///     dependsOn: [clusterAmazonEKSClusterPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// cluster = aws.iam.Role("cluster",
///     name="eks-cluster-example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "eks.amazonaws.com",
///             },
///         }],
///     }))
/// cluster_amazon_eks_cluster_policy = aws.iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///     role=cluster.name)
/// example = aws.eks.Cluster("example",
///     access_config={
///         "authentication_mode": "API",
///     },
///     vpc_config={
///         "subnet_ids": [
///             az1["id"],
///             az2["id"],
///             az3["id"],
///         ],
///     },
///     name="example",
///     role_arn=cluster.arn,
///     version="1.35",
///     opts = pulumi.ResourceOptions(depends_on=[cluster_amazon_eks_cluster_policy]))
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
///     var cluster = new Aws.Iam.Role("cluster", new()
///     {
///         Name = "eks-cluster-example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:TagSession",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "eks.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var clusterAmazonEKSClusterPolicy = new Aws.Iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///         Role = cluster.Name,
///     });
///
///     var example = new Aws.Eks.Cluster("example", new()
///     {
///         AccessConfig = new Aws.Eks.Inputs.ClusterAccessConfigArgs
///         {
///             AuthenticationMode = "API",
///         },
///         VpcConfig = new Aws.Eks.Inputs.ClusterVpcConfigArgs
///         {
///             SubnetIds = new[]
///             {
///                 az1.Id,
///                 az2.Id,
///                 az3.Id,
///             },
///         },
///         Name = "example",
///         RoleArn = cluster.Arn,
///         Version = "1.35",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             clusterAmazonEKSClusterPolicy,
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 					},
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "eks.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		cluster, err := iam.NewRole(ctx, "cluster", &iam.RoleArgs{
/// 			Name:             pulumi.String("eks-cluster-example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterAmazonEKSClusterPolicy, err := iam.NewRolePolicyAttachment(ctx, "cluster_AmazonEKSClusterPolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"),
/// 			Role:      cluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eks.NewCluster(ctx, "example", &eks.ClusterArgs{
/// 			AccessConfig: &eks.ClusterAccessConfigArgs{
/// 				AuthenticationMode: pulumi.String("API"),
/// 			},
/// 			VpcConfig: &eks.ClusterVpcConfigArgs{
/// 				SubnetIds: pulumi.StringArray{
/// 					az1.Id,
/// 					az2.Id,
/// 					az3.Id,
/// 				},
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: cluster.Arn,
/// 			Version: pulumi.String("1.35"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			clusterAmazonEKSClusterPolicy,
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
/// resource "aws_eks_cluster" "example" {
///   depends_on = [aws_iam_rolepolicyattachment.cluster_AmazonEKSClusterPolicy]
///   access_config = {
///     authentication_mode = "API"
///   }
///   vpc_config = {
///     subnet_ids = [az1.id, az2.id, az3.id]
///   }
///   name     = "example"
///   role_arn = aws_iam_role.cluster.arn
///   version  = "1.35"
/// }
/// resource "aws_iam_role" "cluster" {
///   name = "eks-cluster-example"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = ["sts:AssumeRole", "sts:TagSession"]
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "eks.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "cluster_AmazonEKSClusterPolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
///   role       = aws_iam_role.cluster.name
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
/// import com.pulumi.aws.eks.Cluster;
/// import com.pulumi.aws.eks.ClusterArgs;
/// import com.pulumi.aws.eks.inputs.ClusterAccessConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterVpcConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var cluster = new Role("cluster", RoleArgs.builder()
///             .name("eks-cluster-example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "sts:AssumeRole",
///                             "sts:TagSession"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "eks.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var clusterAmazonEKSClusterPolicy = new RolePolicyAttachment("clusterAmazonEKSClusterPolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSClusterPolicy")
///             .role(cluster.name())
///             .build());
///
///         var example = new Cluster("example", ClusterArgs.builder()
///             .accessConfig(ClusterAccessConfigArgs.builder()
///                 .authenticationMode("API")
///                 .build())
///             .vpcConfig(ClusterVpcConfigArgs.builder()
///                 .subnetIds(
///                     az1.id(),
///                     az2.id(),
///                     az3.id())
///                 .build())
///             .name("example")
///             .roleArn(cluster.arn())
///             .version("1.35")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(clusterAmazonEKSClusterPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:Cluster
///     properties:
///       accessConfig:
///         authenticationMode: API
///       vpcConfig:
///         subnetIds:
///           - ${az1.id}
///           - ${az2.id}
///           - ${az3.id}
///       name: example
///       roleArn: ${cluster.arn}
///       version: '1.35'
///     options:
///       dependsOn:
///         - ${clusterAmazonEKSClusterPolicy}
///   cluster:
///     type: aws:iam:Role
///     properties:
///       name: eks-cluster-example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - sts:AssumeRole
///                 - sts:TagSession
///               Effect: Allow
///               Principal:
///                 Service: eks.amazonaws.com
///   clusterAmazonEKSClusterPolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: cluster_AmazonEKSClusterPolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSClusterPolicy
///       role: ${cluster.name}
/// ```
///
///
/// ### EKS Cluster with EKS Auto Mode
///
/// &gt; **NOTE:** When using EKS Auto Mode `compute_config.enabled`, `kubernetes_network_config.elastic_load_balancing.enabled`, and `storage_config.block_storage.enabled` must *ALL be set to `true`. Likewise for disabling EKS Auto Mode, all three arguments must be set to `false`. Enabling EKS Auto Mode also requires that `bootstrapSelfManagedAddons` is set to `false`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const node = new aws.iam.Role("node", {
///     name: "eks-auto-node-example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: ["sts:AssumeRole"],
///             Effect: "Allow",
///             Principal: {
///                 Service: "ec2.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const cluster = new aws.iam.Role("cluster", {
///     name: "eks-cluster-example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             Effect: "Allow",
///             Principal: {
///                 Service: "eks.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const clusterAmazonEKSClusterPolicy = new aws.iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///     role: cluster.name,
/// });
/// const clusterAmazonEKSComputePolicy = new aws.iam.RolePolicyAttachment("cluster_AmazonEKSComputePolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSComputePolicy",
///     role: cluster.name,
/// });
/// const clusterAmazonEKSBlockStoragePolicy = new aws.iam.RolePolicyAttachment("cluster_AmazonEKSBlockStoragePolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy",
///     role: cluster.name,
/// });
/// const clusterAmazonEKSLoadBalancingPolicy = new aws.iam.RolePolicyAttachment("cluster_AmazonEKSLoadBalancingPolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy",
///     role: cluster.name,
/// });
/// const clusterAmazonEKSNetworkingPolicy = new aws.iam.RolePolicyAttachment("cluster_AmazonEKSNetworkingPolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy",
///     role: cluster.name,
/// });
/// const example = new aws.eks.Cluster("example", {
///     accessConfig: {
///         authenticationMode: "API",
///     },
///     computeConfig: {
///         enabled: true,
///         nodePools: ["general-purpose"],
///         nodeRoleArn: node.arn,
///     },
///     kubernetesNetworkConfig: {
///         elasticLoadBalancing: {
///             enabled: true,
///         },
///     },
///     storageConfig: {
///         blockStorage: {
///             enabled: true,
///         },
///     },
///     vpcConfig: {
///         endpointPrivateAccess: true,
///         endpointPublicAccess: true,
///         subnetIds: [
///             az1.id,
///             az2.id,
///             az3.id,
///         ],
///     },
///     name: "example",
///     roleArn: cluster.arn,
///     version: "1.35",
///     bootstrapSelfManagedAddons: false,
/// }, {
///     dependsOn: [
///         clusterAmazonEKSClusterPolicy,
///         clusterAmazonEKSComputePolicy,
///         clusterAmazonEKSBlockStoragePolicy,
///         clusterAmazonEKSLoadBalancingPolicy,
///         clusterAmazonEKSNetworkingPolicy,
///     ],
/// });
/// const nodeAmazonEKSWorkerNodeMinimalPolicy = new aws.iam.RolePolicyAttachment("node_AmazonEKSWorkerNodeMinimalPolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy",
///     role: node.name,
/// });
/// const nodeAmazonEC2ContainerRegistryPullOnly = new aws.iam.RolePolicyAttachment("node_AmazonEC2ContainerRegistryPullOnly", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly",
///     role: node.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// node = aws.iam.Role("node",
///     name="eks-auto-node-example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": ["sts:AssumeRole"],
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "ec2.amazonaws.com",
///             },
///         }],
///     }))
/// cluster = aws.iam.Role("cluster",
///     name="eks-cluster-example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "eks.amazonaws.com",
///             },
///         }],
///     }))
/// cluster_amazon_eks_cluster_policy = aws.iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///     role=cluster.name)
/// cluster_amazon_eks_compute_policy = aws.iam.RolePolicyAttachment("cluster_AmazonEKSComputePolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSComputePolicy",
///     role=cluster.name)
/// cluster_amazon_eks_block_storage_policy = aws.iam.RolePolicyAttachment("cluster_AmazonEKSBlockStoragePolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy",
///     role=cluster.name)
/// cluster_amazon_eks_load_balancing_policy = aws.iam.RolePolicyAttachment("cluster_AmazonEKSLoadBalancingPolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy",
///     role=cluster.name)
/// cluster_amazon_eks_networking_policy = aws.iam.RolePolicyAttachment("cluster_AmazonEKSNetworkingPolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy",
///     role=cluster.name)
/// example = aws.eks.Cluster("example",
///     access_config={
///         "authentication_mode": "API",
///     },
///     compute_config={
///         "enabled": True,
///         "node_pools": ["general-purpose"],
///         "node_role_arn": node.arn,
///     },
///     kubernetes_network_config={
///         "elastic_load_balancing": {
///             "enabled": True,
///         },
///     },
///     storage_config={
///         "block_storage": {
///             "enabled": True,
///         },
///     },
///     vpc_config={
///         "endpoint_private_access": True,
///         "endpoint_public_access": True,
///         "subnet_ids": [
///             az1["id"],
///             az2["id"],
///             az3["id"],
///         ],
///     },
///     name="example",
///     role_arn=cluster.arn,
///     version="1.35",
///     bootstrap_self_managed_addons=False,
///     opts = pulumi.ResourceOptions(depends_on=[
///             cluster_amazon_eks_cluster_policy,
///             cluster_amazon_eks_compute_policy,
///             cluster_amazon_eks_block_storage_policy,
///             cluster_amazon_eks_load_balancing_policy,
///             cluster_amazon_eks_networking_policy,
///         ]))
/// node_amazon_eks_worker_node_minimal_policy = aws.iam.RolePolicyAttachment("node_AmazonEKSWorkerNodeMinimalPolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy",
///     role=node.name)
/// node_amazon_ec2_container_registry_pull_only = aws.iam.RolePolicyAttachment("node_AmazonEC2ContainerRegistryPullOnly",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly",
///     role=node.name)
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
///     var node = new Aws.Iam.Role("node", new()
///     {
///         Name = "eks-auto-node-example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "ec2.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var cluster = new Aws.Iam.Role("cluster", new()
///     {
///         Name = "eks-cluster-example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:TagSession",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "eks.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var clusterAmazonEKSClusterPolicy = new Aws.Iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///         Role = cluster.Name,
///     });
///
///     var clusterAmazonEKSComputePolicy = new Aws.Iam.RolePolicyAttachment("cluster_AmazonEKSComputePolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSComputePolicy",
///         Role = cluster.Name,
///     });
///
///     var clusterAmazonEKSBlockStoragePolicy = new Aws.Iam.RolePolicyAttachment("cluster_AmazonEKSBlockStoragePolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy",
///         Role = cluster.Name,
///     });
///
///     var clusterAmazonEKSLoadBalancingPolicy = new Aws.Iam.RolePolicyAttachment("cluster_AmazonEKSLoadBalancingPolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy",
///         Role = cluster.Name,
///     });
///
///     var clusterAmazonEKSNetworkingPolicy = new Aws.Iam.RolePolicyAttachment("cluster_AmazonEKSNetworkingPolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy",
///         Role = cluster.Name,
///     });
///
///     var example = new Aws.Eks.Cluster("example", new()
///     {
///         AccessConfig = new Aws.Eks.Inputs.ClusterAccessConfigArgs
///         {
///             AuthenticationMode = "API",
///         },
///         ComputeConfig = new Aws.Eks.Inputs.ClusterComputeConfigArgs
///         {
///             Enabled = true,
///             NodePools = new[]
///             {
///                 "general-purpose",
///             },
///             NodeRoleArn = node.Arn,
///         },
///         KubernetesNetworkConfig = new Aws.Eks.Inputs.ClusterKubernetesNetworkConfigArgs
///         {
///             ElasticLoadBalancing = new Aws.Eks.Inputs.ClusterKubernetesNetworkConfigElasticLoadBalancingArgs
///             {
///                 Enabled = true,
///             },
///         },
///         StorageConfig = new Aws.Eks.Inputs.ClusterStorageConfigArgs
///         {
///             BlockStorage = new Aws.Eks.Inputs.ClusterStorageConfigBlockStorageArgs
///             {
///                 Enabled = true,
///             },
///         },
///         VpcConfig = new Aws.Eks.Inputs.ClusterVpcConfigArgs
///         {
///             EndpointPrivateAccess = true,
///             EndpointPublicAccess = true,
///             SubnetIds = new[]
///             {
///                 az1.Id,
///                 az2.Id,
///                 az3.Id,
///             },
///         },
///         Name = "example",
///         RoleArn = cluster.Arn,
///         Version = "1.35",
///         BootstrapSelfManagedAddons = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             clusterAmazonEKSClusterPolicy,
///             clusterAmazonEKSComputePolicy,
///             clusterAmazonEKSBlockStoragePolicy,
///             clusterAmazonEKSLoadBalancingPolicy,
///             clusterAmazonEKSNetworkingPolicy,
///         },
///     });
///
///     var nodeAmazonEKSWorkerNodeMinimalPolicy = new Aws.Iam.RolePolicyAttachment("node_AmazonEKSWorkerNodeMinimalPolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy",
///         Role = node.Name,
///     });
///
///     var nodeAmazonEC2ContainerRegistryPullOnly = new Aws.Iam.RolePolicyAttachment("node_AmazonEC2ContainerRegistryPullOnly", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly",
///         Role = node.Name,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "ec2.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		node, err := iam.NewRole(ctx, "node", &iam.RoleArgs{
/// 			Name:             pulumi.String("eks-auto-node-example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 					},
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "eks.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		cluster, err := iam.NewRole(ctx, "cluster", &iam.RoleArgs{
/// 			Name:             pulumi.String("eks-cluster-example"),
/// 			AssumeRolePolicy: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterAmazonEKSClusterPolicy, err := iam.NewRolePolicyAttachment(ctx, "cluster_AmazonEKSClusterPolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"),
/// 			Role:      cluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterAmazonEKSComputePolicy, err := iam.NewRolePolicyAttachment(ctx, "cluster_AmazonEKSComputePolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSComputePolicy"),
/// 			Role:      cluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterAmazonEKSBlockStoragePolicy, err := iam.NewRolePolicyAttachment(ctx, "cluster_AmazonEKSBlockStoragePolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy"),
/// 			Role:      cluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterAmazonEKSLoadBalancingPolicy, err := iam.NewRolePolicyAttachment(ctx, "cluster_AmazonEKSLoadBalancingPolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy"),
/// 			Role:      cluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterAmazonEKSNetworkingPolicy, err := iam.NewRolePolicyAttachment(ctx, "cluster_AmazonEKSNetworkingPolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy"),
/// 			Role:      cluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eks.NewCluster(ctx, "example", &eks.ClusterArgs{
/// 			AccessConfig: &eks.ClusterAccessConfigArgs{
/// 				AuthenticationMode: pulumi.String("API"),
/// 			},
/// 			ComputeConfig: &eks.ClusterComputeConfigArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				NodePools: pulumi.StringArray{
/// 					pulumi.String("general-purpose"),
/// 				},
/// 				NodeRoleArn: node.Arn,
/// 			},
/// 			KubernetesNetworkConfig: &eks.ClusterKubernetesNetworkConfigArgs{
/// 				ElasticLoadBalancing: &eks.ClusterKubernetesNetworkConfigElasticLoadBalancingArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			StorageConfig: &eks.ClusterStorageConfigArgs{
/// 				BlockStorage: &eks.ClusterStorageConfigBlockStorageArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			VpcConfig: &eks.ClusterVpcConfigArgs{
/// 				EndpointPrivateAccess: pulumi.Bool(true),
/// 				EndpointPublicAccess:  pulumi.Bool(true),
/// 				SubnetIds: pulumi.StringArray{
/// 					az1.Id,
/// 					az2.Id,
/// 					az3.Id,
/// 				},
/// 			},
/// 			Name:                       pulumi.String("example"),
/// 			RoleArn:                    cluster.Arn,
/// 			Version:                    pulumi.String("1.35"),
/// 			BootstrapSelfManagedAddons: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			clusterAmazonEKSClusterPolicy,
/// 			clusterAmazonEKSComputePolicy,
/// 			clusterAmazonEKSBlockStoragePolicy,
/// 			clusterAmazonEKSLoadBalancingPolicy,
/// 			clusterAmazonEKSNetworkingPolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "node_AmazonEKSWorkerNodeMinimalPolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy"),
/// 			Role:      node.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "node_AmazonEC2ContainerRegistryPullOnly", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly"),
/// 			Role:      node.Name,
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
/// resource "aws_eks_cluster" "example" {
///   depends_on = [aws_iam_rolepolicyattachment.cluster_AmazonEKSClusterPolicy, aws_iam_rolepolicyattachment.cluster_AmazonEKSComputePolicy, aws_iam_rolepolicyattachment.cluster_AmazonEKSBlockStoragePolicy, aws_iam_rolepolicyattachment.cluster_AmazonEKSLoadBalancingPolicy, aws_iam_rolepolicyattachment.cluster_AmazonEKSNetworkingPolicy]
///   access_config = {
///     authentication_mode = "API"
///   }
///   compute_config = {
///     enabled       = true
///     node_pools    = ["general-purpose"]
///     node_role_arn = aws_iam_role.node.arn
///   }
///   kubernetes_network_config = {
///     elastic_load_balancing = {
///       enabled = true
///     }
///   }
///   storage_config = {
///     block_storage = {
///       enabled = true
///     }
///   }
///   vpc_config = {
///     endpoint_private_access = true
///     endpoint_public_access  = true
///     subnet_ids              = [az1.id, az2.id, az3.id]
///   }
///   name                          = "example"
///   role_arn                      = aws_iam_role.cluster.arn
///   version                       = "1.35"
///   bootstrap_self_managed_addons = false
/// }
/// resource "aws_iam_role" "node" {
///   name = "eks-auto-node-example"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = ["sts:AssumeRole"]
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "ec2.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "node_AmazonEKSWorkerNodeMinimalPolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy"
///   role       = aws_iam_role.node.name
/// }
/// resource "aws_iam_rolepolicyattachment" "node_AmazonEC2ContainerRegistryPullOnly" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly"
///   role       = aws_iam_role.node.name
/// }
/// resource "aws_iam_role" "cluster" {
///   name = "eks-cluster-example"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = ["sts:AssumeRole", "sts:TagSession"]
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "eks.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "cluster_AmazonEKSClusterPolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
///   role       = aws_iam_role.cluster.name
/// }
/// resource "aws_iam_rolepolicyattachment" "cluster_AmazonEKSComputePolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSComputePolicy"
///   role       = aws_iam_role.cluster.name
/// }
/// resource "aws_iam_rolepolicyattachment" "cluster_AmazonEKSBlockStoragePolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy"
///   role       = aws_iam_role.cluster.name
/// }
/// resource "aws_iam_rolepolicyattachment" "cluster_AmazonEKSLoadBalancingPolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy"
///   role       = aws_iam_role.cluster.name
/// }
/// resource "aws_iam_rolepolicyattachment" "cluster_AmazonEKSNetworkingPolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy"
///   role       = aws_iam_role.cluster.name
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
/// import com.pulumi.aws.eks.Cluster;
/// import com.pulumi.aws.eks.ClusterArgs;
/// import com.pulumi.aws.eks.inputs.ClusterAccessConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterComputeConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterKubernetesNetworkConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterKubernetesNetworkConfigElasticLoadBalancingArgs;
/// import com.pulumi.aws.eks.inputs.ClusterStorageConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterStorageConfigBlockStorageArgs;
/// import com.pulumi.aws.eks.inputs.ClusterVpcConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var node = new Role("node", RoleArgs.builder()
///             .name("eks-auto-node-example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray("sts:AssumeRole")),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "ec2.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var cluster = new Role("cluster", RoleArgs.builder()
///             .name("eks-cluster-example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "sts:AssumeRole",
///                             "sts:TagSession"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "eks.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var clusterAmazonEKSClusterPolicy = new RolePolicyAttachment("clusterAmazonEKSClusterPolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSClusterPolicy")
///             .role(cluster.name())
///             .build());
///
///         var clusterAmazonEKSComputePolicy = new RolePolicyAttachment("clusterAmazonEKSComputePolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSComputePolicy")
///             .role(cluster.name())
///             .build());
///
///         var clusterAmazonEKSBlockStoragePolicy = new RolePolicyAttachment("clusterAmazonEKSBlockStoragePolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy")
///             .role(cluster.name())
///             .build());
///
///         var clusterAmazonEKSLoadBalancingPolicy = new RolePolicyAttachment("clusterAmazonEKSLoadBalancingPolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy")
///             .role(cluster.name())
///             .build());
///
///         var clusterAmazonEKSNetworkingPolicy = new RolePolicyAttachment("clusterAmazonEKSNetworkingPolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy")
///             .role(cluster.name())
///             .build());
///
///         var example = new Cluster("example", ClusterArgs.builder()
///             .accessConfig(ClusterAccessConfigArgs.builder()
///                 .authenticationMode("API")
///                 .build())
///             .computeConfig(ClusterComputeConfigArgs.builder()
///                 .enabled(true)
///                 .nodePools("general-purpose")
///                 .nodeRoleArn(node.arn())
///                 .build())
///             .kubernetesNetworkConfig(ClusterKubernetesNetworkConfigArgs.builder()
///                 .elasticLoadBalancing(ClusterKubernetesNetworkConfigElasticLoadBalancingArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .storageConfig(ClusterStorageConfigArgs.builder()
///                 .blockStorage(ClusterStorageConfigBlockStorageArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .vpcConfig(ClusterVpcConfigArgs.builder()
///                 .endpointPrivateAccess(true)
///                 .endpointPublicAccess(true)
///                 .subnetIds(
///                     az1.id(),
///                     az2.id(),
///                     az3.id())
///                 .build())
///             .name("example")
///             .roleArn(cluster.arn())
///             .version("1.35")
///             .bootstrapSelfManagedAddons(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     clusterAmazonEKSClusterPolicy,
///                     clusterAmazonEKSComputePolicy,
///                     clusterAmazonEKSBlockStoragePolicy,
///                     clusterAmazonEKSLoadBalancingPolicy,
///                     clusterAmazonEKSNetworkingPolicy)
///                 .build());
///
///         var nodeAmazonEKSWorkerNodeMinimalPolicy = new RolePolicyAttachment("nodeAmazonEKSWorkerNodeMinimalPolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy")
///             .role(node.name())
///             .build());
///
///         var nodeAmazonEC2ContainerRegistryPullOnly = new RolePolicyAttachment("nodeAmazonEC2ContainerRegistryPullOnly", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly")
///             .role(node.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:Cluster
///     properties:
///       accessConfig:
///         authenticationMode: API
///       computeConfig:
///         enabled: true
///         nodePools:
///           - general-purpose
///         nodeRoleArn: ${node.arn}
///       kubernetesNetworkConfig:
///         elasticLoadBalancing:
///           enabled: true
///       storageConfig:
///         blockStorage:
///           enabled: true
///       vpcConfig:
///         endpointPrivateAccess: true
///         endpointPublicAccess: true
///         subnetIds:
///           - ${az1.id}
///           - ${az2.id}
///           - ${az3.id}
///       name: example
///       roleArn: ${cluster.arn}
///       version: '1.35'
///       bootstrapSelfManagedAddons: false
///     options:
///       dependsOn:
///         - ${clusterAmazonEKSClusterPolicy}
///         - ${clusterAmazonEKSComputePolicy}
///         - ${clusterAmazonEKSBlockStoragePolicy}
///         - ${clusterAmazonEKSLoadBalancingPolicy}
///         - ${clusterAmazonEKSNetworkingPolicy}
///   node:
///     type: aws:iam:Role
///     properties:
///       name: eks-auto-node-example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: ec2.amazonaws.com
///   nodeAmazonEKSWorkerNodeMinimalPolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: node_AmazonEKSWorkerNodeMinimalPolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy
///       role: ${node.name}
///   nodeAmazonEC2ContainerRegistryPullOnly:
///     type: aws:iam:RolePolicyAttachment
///     name: node_AmazonEC2ContainerRegistryPullOnly
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly
///       role: ${node.name}
///   cluster:
///     type: aws:iam:Role
///     properties:
///       name: eks-cluster-example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - sts:AssumeRole
///                 - sts:TagSession
///               Effect: Allow
///               Principal:
///                 Service: eks.amazonaws.com
///   clusterAmazonEKSClusterPolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: cluster_AmazonEKSClusterPolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSClusterPolicy
///       role: ${cluster.name}
///   clusterAmazonEKSComputePolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: cluster_AmazonEKSComputePolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSComputePolicy
///       role: ${cluster.name}
///   clusterAmazonEKSBlockStoragePolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: cluster_AmazonEKSBlockStoragePolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy
///       role: ${cluster.name}
///   clusterAmazonEKSLoadBalancingPolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: cluster_AmazonEKSLoadBalancingPolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy
///       role: ${cluster.name}
///   clusterAmazonEKSNetworkingPolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: cluster_AmazonEKSNetworkingPolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy
///       role: ${cluster.name}
/// ```
///
///
/// ### EKS Cluster with EKS Hybrid Nodes
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cluster = new aws.iam.Role("cluster", {
///     name: "eks-cluster-example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             Effect: "Allow",
///             Principal: {
///                 Service: "eks.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const clusterAmazonEKSClusterPolicy = new aws.iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///     role: cluster.name,
/// });
/// const example = new aws.eks.Cluster("example", {
///     accessConfig: {
///         authenticationMode: "API",
///     },
///     remoteNetworkConfig: {
///         remoteNodeNetworks: {
///             cidrs: ["172.16.0.0/18"],
///         },
///         remotePodNetworks: {
///             cidrs: ["172.16.64.0/18"],
///         },
///     },
///     vpcConfig: {
///         endpointPrivateAccess: true,
///         endpointPublicAccess: true,
///         subnetIds: [
///             az1.id,
///             az2.id,
///             az3.id,
///         ],
///     },
///     name: "example",
///     roleArn: cluster.arn,
///     version: "1.35",
/// }, {
///     dependsOn: [clusterAmazonEKSClusterPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// cluster = aws.iam.Role("cluster",
///     name="eks-cluster-example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "eks.amazonaws.com",
///             },
///         }],
///     }))
/// cluster_amazon_eks_cluster_policy = aws.iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///     role=cluster.name)
/// example = aws.eks.Cluster("example",
///     access_config={
///         "authentication_mode": "API",
///     },
///     remote_network_config={
///         "remote_node_networks": {
///             "cidrs": ["172.16.0.0/18"],
///         },
///         "remote_pod_networks": {
///             "cidrs": ["172.16.64.0/18"],
///         },
///     },
///     vpc_config={
///         "endpoint_private_access": True,
///         "endpoint_public_access": True,
///         "subnet_ids": [
///             az1["id"],
///             az2["id"],
///             az3["id"],
///         ],
///     },
///     name="example",
///     role_arn=cluster.arn,
///     version="1.35",
///     opts = pulumi.ResourceOptions(depends_on=[cluster_amazon_eks_cluster_policy]))
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
///     var cluster = new Aws.Iam.Role("cluster", new()
///     {
///         Name = "eks-cluster-example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:TagSession",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "eks.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var clusterAmazonEKSClusterPolicy = new Aws.Iam.RolePolicyAttachment("cluster_AmazonEKSClusterPolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
///         Role = cluster.Name,
///     });
///
///     var example = new Aws.Eks.Cluster("example", new()
///     {
///         AccessConfig = new Aws.Eks.Inputs.ClusterAccessConfigArgs
///         {
///             AuthenticationMode = "API",
///         },
///         RemoteNetworkConfig = new Aws.Eks.Inputs.ClusterRemoteNetworkConfigArgs
///         {
///             RemoteNodeNetworks = new Aws.Eks.Inputs.ClusterRemoteNetworkConfigRemoteNodeNetworksArgs
///             {
///                 Cidrs = new[]
///                 {
///                     "172.16.0.0/18",
///                 },
///             },
///             RemotePodNetworks = new Aws.Eks.Inputs.ClusterRemoteNetworkConfigRemotePodNetworksArgs
///             {
///                 Cidrs = new[]
///                 {
///                     "172.16.64.0/18",
///                 },
///             },
///         },
///         VpcConfig = new Aws.Eks.Inputs.ClusterVpcConfigArgs
///         {
///             EndpointPrivateAccess = true,
///             EndpointPublicAccess = true,
///             SubnetIds = new[]
///             {
///                 az1.Id,
///                 az2.Id,
///                 az3.Id,
///             },
///         },
///         Name = "example",
///         RoleArn = cluster.Arn,
///         Version = "1.35",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             clusterAmazonEKSClusterPolicy,
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 					},
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "eks.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		cluster, err := iam.NewRole(ctx, "cluster", &iam.RoleArgs{
/// 			Name:             pulumi.String("eks-cluster-example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterAmazonEKSClusterPolicy, err := iam.NewRolePolicyAttachment(ctx, "cluster_AmazonEKSClusterPolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"),
/// 			Role:      cluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eks.NewCluster(ctx, "example", &eks.ClusterArgs{
/// 			AccessConfig: &eks.ClusterAccessConfigArgs{
/// 				AuthenticationMode: pulumi.String("API"),
/// 			},
/// 			RemoteNetworkConfig: &eks.ClusterRemoteNetworkConfigArgs{
/// 				RemoteNodeNetworks: &eks.ClusterRemoteNetworkConfigRemoteNodeNetworksArgs{
/// 					Cidrs: pulumi.StringArray{
/// 						pulumi.String("172.16.0.0/18"),
/// 					},
/// 				},
/// 				RemotePodNetworks: &eks.ClusterRemoteNetworkConfigRemotePodNetworksArgs{
/// 					Cidrs: pulumi.StringArray{
/// 						pulumi.String("172.16.64.0/18"),
/// 					},
/// 				},
/// 			},
/// 			VpcConfig: &eks.ClusterVpcConfigArgs{
/// 				EndpointPrivateAccess: pulumi.Bool(true),
/// 				EndpointPublicAccess:  pulumi.Bool(true),
/// 				SubnetIds: pulumi.StringArray{
/// 					az1.Id,
/// 					az2.Id,
/// 					az3.Id,
/// 				},
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: cluster.Arn,
/// 			Version: pulumi.String("1.35"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			clusterAmazonEKSClusterPolicy,
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
/// resource "aws_eks_cluster" "example" {
///   depends_on = [aws_iam_rolepolicyattachment.cluster_AmazonEKSClusterPolicy]
///   access_config = {
///     authentication_mode = "API"
///   }
///   remote_network_config = {
///     remote_node_networks = {
///       cidrs = ["172.16.0.0/18"]
///     }
///     remote_pod_networks = {
///       cidrs = ["172.16.64.0/18"]
///     }
///   }
///   vpc_config = {
///     endpoint_private_access = true
///     endpoint_public_access  = true
///     subnet_ids              = [az1.id, az2.id, az3.id]
///   }
///   name     = "example"
///   role_arn = aws_iam_role.cluster.arn
///   version  = "1.35"
/// }
/// resource "aws_iam_role" "cluster" {
///   name = "eks-cluster-example"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = ["sts:AssumeRole", "sts:TagSession"]
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "eks.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "cluster_AmazonEKSClusterPolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
///   role       = aws_iam_role.cluster.name
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
/// import com.pulumi.aws.eks.Cluster;
/// import com.pulumi.aws.eks.ClusterArgs;
/// import com.pulumi.aws.eks.inputs.ClusterAccessConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterRemoteNetworkConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterRemoteNetworkConfigRemoteNodeNetworksArgs;
/// import com.pulumi.aws.eks.inputs.ClusterRemoteNetworkConfigRemotePodNetworksArgs;
/// import com.pulumi.aws.eks.inputs.ClusterVpcConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var cluster = new Role("cluster", RoleArgs.builder()
///             .name("eks-cluster-example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "sts:AssumeRole",
///                             "sts:TagSession"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "eks.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var clusterAmazonEKSClusterPolicy = new RolePolicyAttachment("clusterAmazonEKSClusterPolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSClusterPolicy")
///             .role(cluster.name())
///             .build());
///
///         var example = new Cluster("example", ClusterArgs.builder()
///             .accessConfig(ClusterAccessConfigArgs.builder()
///                 .authenticationMode("API")
///                 .build())
///             .remoteNetworkConfig(ClusterRemoteNetworkConfigArgs.builder()
///                 .remoteNodeNetworks(ClusterRemoteNetworkConfigRemoteNodeNetworksArgs.builder()
///                     .cidrs("172.16.0.0/18")
///                     .build())
///                 .remotePodNetworks(ClusterRemoteNetworkConfigRemotePodNetworksArgs.builder()
///                     .cidrs("172.16.64.0/18")
///                     .build())
///                 .build())
///             .vpcConfig(ClusterVpcConfigArgs.builder()
///                 .endpointPrivateAccess(true)
///                 .endpointPublicAccess(true)
///                 .subnetIds(
///                     az1.id(),
///                     az2.id(),
///                     az3.id())
///                 .build())
///             .name("example")
///             .roleArn(cluster.arn())
///             .version("1.35")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(clusterAmazonEKSClusterPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:Cluster
///     properties:
///       accessConfig:
///         authenticationMode: API
///       remoteNetworkConfig:
///         remoteNodeNetworks:
///           cidrs:
///             - 172.16.0.0/18
///         remotePodNetworks:
///           cidrs:
///             - 172.16.64.0/18
///       vpcConfig:
///         endpointPrivateAccess: true
///         endpointPublicAccess: true
///         subnetIds:
///           - ${az1.id}
///           - ${az2.id}
///           - ${az3.id}
///       name: example
///       roleArn: ${cluster.arn}
///       version: '1.35'
///     options:
///       dependsOn:
///         - ${clusterAmazonEKSClusterPolicy}
///   cluster:
///     type: aws:iam:Role
///     properties:
///       name: eks-cluster-example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - sts:AssumeRole
///                 - sts:TagSession
///               Effect: Allow
///               Principal:
///                 Service: eks.amazonaws.com
///   clusterAmazonEKSClusterPolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: cluster_AmazonEKSClusterPolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSClusterPolicy
///       role: ${cluster.name}
/// ```
///
///
/// ### Local EKS Cluster on AWS Outpost
///
/// [Creating a local Amazon EKS cluster on an AWS Outpost](https://docs.aws.amazon.com/eks/latest/userguide/create-cluster-outpost.html)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getOutpost({
///     name: "example",
/// });
/// const cluster = new aws.iam.Role("cluster", {
///     name: "eks-cluster-example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             Effect: "Allow",
///             Principal: {
///                 Service: [
///                     "eks.amazonaws.com",
///                     "ec2.amazonaws.com",
///                 ],
///             },
///         }],
///     }),
/// });
/// const clusterAmazonEKSLocalOutpostClusterPolicy = new aws.iam.RolePolicyAttachment("cluster_AmazonEKSLocalOutpostClusterPolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSLocalOutpostClusterPolicy",
///     role: cluster.name,
/// });
/// const exampleCluster = new aws.eks.Cluster("example", {
///     accessConfig: {
///         authenticationMode: "CONFIG_MAP",
///     },
///     vpcConfig: {
///         endpointPrivateAccess: true,
///         endpointPublicAccess: false,
///         subnetIds: [
///             az1.id,
///             az2.id,
///             az3.id,
///         ],
///     },
///     outpostConfig: {
///         controlPlaneInstanceType: "m5.large",
///         outpostArns: [example.then(example => example.arn)],
///     },
///     name: "example",
///     roleArn: cluster.arn,
///     version: "1.35",
/// }, {
///     dependsOn: [clusterAmazonEKSLocalOutpostClusterPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_outpost(name="example")
/// cluster = aws.iam.Role("cluster",
///     name="eks-cluster-example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": [
///                 "sts:AssumeRole",
///                 "sts:TagSession",
///             ],
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": [
///                     "eks.amazonaws.com",
///                     "ec2.amazonaws.com",
///                 ],
///             },
///         }],
///     }))
/// cluster_amazon_eks_local_outpost_cluster_policy = aws.iam.RolePolicyAttachment("cluster_AmazonEKSLocalOutpostClusterPolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSLocalOutpostClusterPolicy",
///     role=cluster.name)
/// example_cluster = aws.eks.Cluster("example",
///     access_config={
///         "authentication_mode": "CONFIG_MAP",
///     },
///     vpc_config={
///         "endpoint_private_access": True,
///         "endpoint_public_access": False,
///         "subnet_ids": [
///             az1["id"],
///             az2["id"],
///             az3["id"],
///         ],
///     },
///     outpost_config={
///         "control_plane_instance_type": "m5.large",
///         "outpost_arns": [example.arn],
///     },
///     name="example",
///     role_arn=cluster.arn,
///     version="1.35",
///     opts = pulumi.ResourceOptions(depends_on=[cluster_amazon_eks_local_outpost_cluster_policy]))
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
///     var example = Aws.Outposts.GetOutpost.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     var cluster = new Aws.Iam.Role("cluster", new()
///     {
///         Name = "eks-cluster-example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:TagSession",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = new[]
///                         {
///                             "eks.amazonaws.com",
///                             "ec2.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
///     var clusterAmazonEKSLocalOutpostClusterPolicy = new Aws.Iam.RolePolicyAttachment("cluster_AmazonEKSLocalOutpostClusterPolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSLocalOutpostClusterPolicy",
///         Role = cluster.Name,
///     });
///
///     var exampleCluster = new Aws.Eks.Cluster("example", new()
///     {
///         AccessConfig = new Aws.Eks.Inputs.ClusterAccessConfigArgs
///         {
///             AuthenticationMode = "CONFIG_MAP",
///         },
///         VpcConfig = new Aws.Eks.Inputs.ClusterVpcConfigArgs
///         {
///             EndpointPrivateAccess = true,
///             EndpointPublicAccess = false,
///             SubnetIds = new[]
///             {
///                 az1.Id,
///                 az2.Id,
///                 az3.Id,
///             },
///         },
///         OutpostConfig = new Aws.Eks.Inputs.ClusterOutpostConfigArgs
///         {
///             ControlPlaneInstanceType = "m5.large",
///             OutpostArns = new[]
///             {
///                 example.Apply(getOutpostResult => getOutpostResult.Arn),
///             },
///         },
///         Name = "example",
///         RoleArn = cluster.Arn,
///         Version = "1.35",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             clusterAmazonEKSLocalOutpostClusterPolicy,
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := outposts.GetOutpost(ctx, &outposts.GetOutpostArgs{
/// 			Name: pulumi.StringRef("example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 					},
/// 					"Effect": "Allow",
/// 					"Principal": map[string][]string{
/// 						"Service": []string{
/// 							"eks.amazonaws.com",
/// 							"ec2.amazonaws.com",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		cluster, err := iam.NewRole(ctx, "cluster", &iam.RoleArgs{
/// 			Name:             pulumi.String("eks-cluster-example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterAmazonEKSLocalOutpostClusterPolicy, err := iam.NewRolePolicyAttachment(ctx, "cluster_AmazonEKSLocalOutpostClusterPolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSLocalOutpostClusterPolicy"),
/// 			Role:      cluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eks.NewCluster(ctx, "example", &eks.ClusterArgs{
/// 			AccessConfig: &eks.ClusterAccessConfigArgs{
/// 				AuthenticationMode: pulumi.String("CONFIG_MAP"),
/// 			},
/// 			VpcConfig: &eks.ClusterVpcConfigArgs{
/// 				EndpointPrivateAccess: pulumi.Bool(true),
/// 				EndpointPublicAccess:  pulumi.Bool(false),
/// 				SubnetIds: pulumi.StringArray{
/// 					az1.Id,
/// 					az2.Id,
/// 					az3.Id,
/// 				},
/// 			},
/// 			OutpostConfig: &eks.ClusterOutpostConfigArgs{
/// 				ControlPlaneInstanceType: pulumi.String("m5.large"),
/// 				OutpostArns: pulumi.StringArray{
/// 					pulumi.String(example.Arn),
/// 				},
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: cluster.Arn,
/// 			Version: pulumi.String("1.35"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			clusterAmazonEKSLocalOutpostClusterPolicy,
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
/// data "aws_outposts_getoutpost" "example" {
///   name = "example"
/// }
///
/// resource "aws_eks_cluster" "example" {
///   depends_on = [aws_iam_rolepolicyattachment.cluster_AmazonEKSLocalOutpostClusterPolicy]
///   access_config = {
///     authentication_mode = "CONFIG_MAP"
///   }
///   vpc_config = {
///     endpoint_private_access = true
///     endpoint_public_access  = false
///     subnet_ids              = [az1.id, az2.id, az3.id]
///   }
///   outpost_config = {
///     control_plane_instance_type = "m5.large"
///     outpost_arns                = [data.aws_outposts_getoutpost.example.arn]
///   }
///   name     = "example"
///   role_arn = aws_iam_role.cluster.arn
///   version  = "1.35"
/// }
/// resource "aws_iam_role" "cluster" {
///   name = "eks-cluster-example"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = ["sts:AssumeRole", "sts:TagSession"]
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = ["eks.amazonaws.com", "ec2.amazonaws.com"]
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "cluster_AmazonEKSLocalOutpostClusterPolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSLocalOutpostClusterPolicy"
///   role       = aws_iam_role.cluster.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetOutpostArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.eks.Cluster;
/// import com.pulumi.aws.eks.ClusterArgs;
/// import com.pulumi.aws.eks.inputs.ClusterAccessConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterVpcConfigArgs;
/// import com.pulumi.aws.eks.inputs.ClusterOutpostConfigArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var example = OutpostsFunctions.getOutpost(GetOutpostArgs.builder()
///             .name("example")
///             .build());
///
///         var cluster = new Role("cluster", RoleArgs.builder()
///             .name("eks-cluster-example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "sts:AssumeRole",
///                             "sts:TagSession"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", jsonArray(
///                                 "eks.amazonaws.com",
///                                 "ec2.amazonaws.com"
///                             ))
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var clusterAmazonEKSLocalOutpostClusterPolicy = new RolePolicyAttachment("clusterAmazonEKSLocalOutpostClusterPolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSLocalOutpostClusterPolicy")
///             .role(cluster.name())
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .accessConfig(ClusterAccessConfigArgs.builder()
///                 .authenticationMode("CONFIG_MAP")
///                 .build())
///             .vpcConfig(ClusterVpcConfigArgs.builder()
///                 .endpointPrivateAccess(true)
///                 .endpointPublicAccess(false)
///                 .subnetIds(
///                     az1.id(),
///                     az2.id(),
///                     az3.id())
///                 .build())
///             .outpostConfig(ClusterOutpostConfigArgs.builder()
///                 .controlPlaneInstanceType("m5.large")
///                 .outpostArns(example.arn())
///                 .build())
///             .name("example")
///             .roleArn(cluster.arn())
///             .version("1.35")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(clusterAmazonEKSLocalOutpostClusterPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCluster:
///     type: aws:eks:Cluster
///     name: example
///     properties:
///       accessConfig:
///         authenticationMode: CONFIG_MAP
///       vpcConfig:
///         endpointPrivateAccess: true
///         endpointPublicAccess: false
///         subnetIds:
///           - ${az1.id}
///           - ${az2.id}
///           - ${az3.id}
///       outpostConfig:
///         controlPlaneInstanceType: m5.large
///         outpostArns:
///           - ${example.arn}
///       name: example
///       roleArn: ${cluster.arn}
///       version: '1.35'
///     options:
///       dependsOn:
///         - ${clusterAmazonEKSLocalOutpostClusterPolicy}
///   cluster:
///     type: aws:iam:Role
///     properties:
///       name: eks-cluster-example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - sts:AssumeRole
///                 - sts:TagSession
///               Effect: Allow
///               Principal:
///                 Service:
///                   - eks.amazonaws.com
///                   - ec2.amazonaws.com
///   clusterAmazonEKSLocalOutpostClusterPolicy:
///     type: aws:iam:RolePolicyAttachment
///     name: cluster_AmazonEKSLocalOutpostClusterPolicy
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSLocalOutpostClusterPolicy
///       role: ${cluster.name}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getOutpost
///       arguments:
///         name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the cluster.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EKS Clusters using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:eks/cluster:Cluster example example
/// ```
class Cluster extends pulumi.CustomResource {
  /// Configuration block for the access config associated with your cluster, see [Amazon EKS Access Entries](https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html). Detailed below.
  late final pulumi.Output<ClusterAccessConfig> accessConfig;
  /// ARN of the cluster.
  late final pulumi.Output<String> arn;
  /// Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`.
  late final pulumi.Output<bool?> bootstrapSelfManagedAddons;
  /// Attribute block containing `certificate-authority-data` for your cluster. Detailed below.
  late final pulumi.Output<ClusterCertificateAuthority> certificateAuthority;
  /// The ID of your local Amazon EKS cluster on the AWS Outpost. This attribute isn't available for an AWS EKS cluster on AWS cloud.
  late final pulumi.Output<String> clusterId;
  /// Configuration block with compute configuration for EKS Auto Mode. Detailed below.
  late final pulumi.Output<ClusterComputeConfig> computeConfig;
  /// Configuration block for the control plane scaling tier. See [EKS Provisioned Control Plane](https://docs.aws.amazon.com/eks/latest/userguide/eks-provisioned-control-plane-getting-started.html) for more information. Detailed below.
  late final pulumi.Output<ClusterControlPlaneScalingConfig> controlPlaneScalingConfig;
  /// Unix epoch timestamp in seconds for when the cluster was created.
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<List<String>?> defaultAddonsToRemoves;
  /// Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: `false`.
  late final pulumi.Output<bool> deletionProtection;
  /// List of the desired control plane logging to enable. For more information, see [Amazon EKS Control Plane Logging](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html).
  late final pulumi.Output<List<String>?> enabledClusterLogTypes;
  /// Configuration block with encryption configuration for the cluster. Detailed below.
  late final pulumi.Output<ClusterEncryptionConfig?> encryptionConfig;
  /// Endpoint for your Kubernetes API server.
  late final pulumi.Output<String> endpoint;
  /// Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
  late final pulumi.Output<bool?> forceUpdateVersion;
  /// Attribute block containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. Detailed below.
  late final pulumi.Output<List<ClusterIdentity>> identities;
  /// Configuration block for customizing the Kubernetes API server. Detailed below.
  late final pulumi.Output<ClusterKubeApiServerConfig> kubeApiServerConfig;
  /// Configuration block for customizing the Kubernetes controller manager. Detailed below.
  late final pulumi.Output<ClusterKubeControllerManagerConfig> kubeControllerManagerConfig;
  /// Configuration block for customizing the Kubernetes scheduler. Detailed below.
  late final pulumi.Output<ClusterKubeSchedulerConfig> kubeSchedulerConfig;
  /// Configuration block with kubernetes network configuration for the cluster. Detailed below. If removed, the provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<ClusterKubernetesNetworkConfig> kubernetesNetworkConfig;
  /// Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (`^[0-9A-Za-z][A-Za-z0-9\-_]*$`).
  late final pulumi.Output<String> name;
  /// Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
  late final pulumi.Output<ClusterOutpostConfig?> outpostConfig;
  /// Platform version for the cluster.
  late final pulumi.Output<String> platformVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
  late final pulumi.Output<ClusterRemoteNetworkConfig?> remoteNetworkConfig;
  /// ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding `dependsOn` if using the `aws.iam.RolePolicy` resource or `aws.iam.RolePolicyAttachment` resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
  late final pulumi.Output<String> roleArn;
  /// Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`.
  late final pulumi.Output<String> status;
  /// Configuration block with storage configuration for EKS Auto Mode. Detailed below.
  late final pulumi.Output<ClusterStorageConfig> storageConfig;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for the support policy to use for the cluster.  See upgradePolicy for details.
  late final pulumi.Output<ClusterUpgradePolicy> upgradePolicy;
  /// Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
  late final pulumi.Output<String> version;
  /// Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see [Cluster VPC Considerations](https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and [Cluster Security Group Considerations](https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html) in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ClusterVpcConfig> vpcConfig;
  /// Configuration block with zonal shift configuration for the cluster. Detailed below.
  late final pulumi.Output<ClusterZonalShiftConfig?> zonalShiftConfig;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_eks_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessConfig = registerOutput<ClusterAccessConfig>('accessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    bootstrapSelfManagedAddons = registerOutput<bool?>('bootstrapSelfManagedAddons');
    certificateAuthority = registerOutput<ClusterCertificateAuthority>('certificateAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    computeConfig = registerOutput<ClusterComputeConfig>('computeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterComputeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlaneScalingConfig = registerOutput<ClusterControlPlaneScalingConfig>('controlPlaneScalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterControlPlaneScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    defaultAddonsToRemoves = registerOutput<List<String>?>('defaultAddonsToRemoves', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionProtection = registerOutput<bool>('deletionProtection');
    enabledClusterLogTypes = registerOutput<List<String>?>('enabledClusterLogTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    encryptionConfig = registerOutput<ClusterEncryptionConfig?>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    forceUpdateVersion = registerOutput<bool?>('forceUpdateVersion');
    identities = registerOutput<List<ClusterIdentity>>('identities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterIdentity>(guardedValue, (value) => ClusterIdentity.fromMap((value as Map).cast<String, dynamic>())); });
    kubeApiServerConfig = registerOutput<ClusterKubeApiServerConfig>('kubeApiServerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeApiServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeControllerManagerConfig = registerOutput<ClusterKubeControllerManagerConfig>('kubeControllerManagerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeControllerManagerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeSchedulerConfig = registerOutput<ClusterKubeSchedulerConfig>('kubeSchedulerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeSchedulerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubernetesNetworkConfig = registerOutput<ClusterKubernetesNetworkConfig>('kubernetesNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubernetesNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outpostConfig = registerOutput<ClusterOutpostConfig?>('outpostConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOutpostConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformVersion = registerOutput<String>('platformVersion');
    region = registerOutput<String>('region');
    remoteNetworkConfig = registerOutput<ClusterRemoteNetworkConfig?>('remoteNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRemoteNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    storageConfig = registerOutput<ClusterStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upgradePolicy = registerOutput<ClusterUpgradePolicy>('upgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
    vpcConfig = registerOutput<ClusterVpcConfig>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zonalShiftConfig = registerOutput<ClusterZonalShiftConfig?>('zonalShiftConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterZonalShiftConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessConfig = registerOutput<ClusterAccessConfig>('accessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    bootstrapSelfManagedAddons = registerOutput<bool?>('bootstrapSelfManagedAddons');
    certificateAuthority = registerOutput<ClusterCertificateAuthority>('certificateAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    computeConfig = registerOutput<ClusterComputeConfig>('computeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterComputeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlaneScalingConfig = registerOutput<ClusterControlPlaneScalingConfig>('controlPlaneScalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterControlPlaneScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    defaultAddonsToRemoves = registerOutput<List<String>?>('defaultAddonsToRemoves', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionProtection = registerOutput<bool>('deletionProtection');
    enabledClusterLogTypes = registerOutput<List<String>?>('enabledClusterLogTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    encryptionConfig = registerOutput<ClusterEncryptionConfig?>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    forceUpdateVersion = registerOutput<bool?>('forceUpdateVersion');
    identities = registerOutput<List<ClusterIdentity>>('identities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterIdentity>(guardedValue, (value) => ClusterIdentity.fromMap((value as Map).cast<String, dynamic>())); });
    kubeApiServerConfig = registerOutput<ClusterKubeApiServerConfig>('kubeApiServerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeApiServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeControllerManagerConfig = registerOutput<ClusterKubeControllerManagerConfig>('kubeControllerManagerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeControllerManagerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeSchedulerConfig = registerOutput<ClusterKubeSchedulerConfig>('kubeSchedulerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeSchedulerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubernetesNetworkConfig = registerOutput<ClusterKubernetesNetworkConfig>('kubernetesNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubernetesNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outpostConfig = registerOutput<ClusterOutpostConfig?>('outpostConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOutpostConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformVersion = registerOutput<String>('platformVersion');
    region = registerOutput<String>('region');
    remoteNetworkConfig = registerOutput<ClusterRemoteNetworkConfig?>('remoteNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRemoteNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    storageConfig = registerOutput<ClusterStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upgradePolicy = registerOutput<ClusterUpgradePolicy>('upgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
    vpcConfig = registerOutput<ClusterVpcConfig>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zonalShiftConfig = registerOutput<ClusterZonalShiftConfig?>('zonalShiftConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterZonalShiftConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Cluster] resource.
  Cluster.reference(String urn)
    : super(
        'aws:eks/cluster:Cluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessConfig = registerOutput<ClusterAccessConfig>('accessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    bootstrapSelfManagedAddons = registerOutput<bool?>('bootstrapSelfManagedAddons');
    certificateAuthority = registerOutput<ClusterCertificateAuthority>('certificateAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    computeConfig = registerOutput<ClusterComputeConfig>('computeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterComputeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlaneScalingConfig = registerOutput<ClusterControlPlaneScalingConfig>('controlPlaneScalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterControlPlaneScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    defaultAddonsToRemoves = registerOutput<List<String>?>('defaultAddonsToRemoves', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionProtection = registerOutput<bool>('deletionProtection');
    enabledClusterLogTypes = registerOutput<List<String>?>('enabledClusterLogTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    encryptionConfig = registerOutput<ClusterEncryptionConfig?>('encryptionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoint = registerOutput<String>('endpoint');
    forceUpdateVersion = registerOutput<bool?>('forceUpdateVersion');
    identities = registerOutput<List<ClusterIdentity>>('identities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterIdentity>(guardedValue, (value) => ClusterIdentity.fromMap((value as Map).cast<String, dynamic>())); });
    kubeApiServerConfig = registerOutput<ClusterKubeApiServerConfig>('kubeApiServerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeApiServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeControllerManagerConfig = registerOutput<ClusterKubeControllerManagerConfig>('kubeControllerManagerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeControllerManagerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeSchedulerConfig = registerOutput<ClusterKubeSchedulerConfig>('kubeSchedulerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubeSchedulerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubernetesNetworkConfig = registerOutput<ClusterKubernetesNetworkConfig>('kubernetesNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterKubernetesNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outpostConfig = registerOutput<ClusterOutpostConfig?>('outpostConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOutpostConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformVersion = registerOutput<String>('platformVersion');
    region = registerOutput<String>('region');
    remoteNetworkConfig = registerOutput<ClusterRemoteNetworkConfig?>('remoteNetworkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRemoteNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    storageConfig = registerOutput<ClusterStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upgradePolicy = registerOutput<ClusterUpgradePolicy>('upgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
    vpcConfig = registerOutput<ClusterVpcConfig>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zonalShiftConfig = registerOutput<ClusterZonalShiftConfig?>('zonalShiftConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterZonalShiftConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
