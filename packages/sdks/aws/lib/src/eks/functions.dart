import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_entry_args.dart';
import 'get_access_entry_result.dart';
import 'get_access_policies_args.dart';
import 'get_access_policies_result.dart';
import 'get_addon_args.dart';
import 'get_addon_result.dart';
import 'get_addon_version_args.dart';
import 'get_addon_version_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_auth_args.dart';
import 'get_cluster_auth_result.dart';
import 'get_cluster_result.dart';
import 'get_cluster_versions_args.dart';
import 'get_cluster_versions_result.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_node_group_args.dart';
import 'get_node_group_result.dart';
import 'get_node_groups_args.dart';
import 'get_node_groups_result.dart';

/// Access Entry Configurations for an EKS Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getAccessEntry({
///     clusterName: exampleAwsEksCluster.name,
///     principalArn: exampleAwsIamRole.arn,
/// });
/// export const eksAccessEntryOutputs = exampleAwsEksAccessEntry;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_access_entry(cluster_name=example_aws_eks_cluster["name"],
///     principal_arn=example_aws_iam_role["arn"])
/// pulumi.export("eksAccessEntryOutputs", example_aws_eks_access_entry)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetAccessEntry.Invoke(new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         PrincipalArn = exampleAwsIamRole.Arn,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eksAccessEntryOutputs"] = exampleAwsEksAccessEntry,
///     };
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
/// 		_, err := eks.LookupAccessEntry(ctx, &eks.LookupAccessEntryArgs{
/// 			ClusterName:  exampleAwsEksCluster.Name,
/// 			PrincipalArn: exampleAwsIamRole.Arn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eksAccessEntryOutputs", pulumi.Any(exampleAwsEksAccessEntry))
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
/// data "aws_eks_getaccessentry" "example" {
///   cluster_name  = exampleAwsEksCluster.name
///   principal_arn = exampleAwsIamRole.arn
/// }
///
/// output "eksAccessEntryOutputs" {
///   value = exampleAwsEksAccessEntry
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetAccessEntryArgs;
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
///         final var example = EksFunctions.getAccessEntry(GetAccessEntryArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .principalArn(exampleAwsIamRole.arn())
///             .build());
///
///         ctx.export("eksAccessEntryOutputs", exampleAwsEksAccessEntry);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:eks:getAccessEntry
///       arguments:
///         clusterName: ${exampleAwsEksCluster.name}
///         principalArn: ${exampleAwsIamRole.arn}
/// outputs:
///   eksAccessEntryOutputs: ${exampleAwsEksAccessEntry}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_access_entry_get_access_entry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessEntryResult> getAccessEntry(
  GetAccessEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAccessEntry:getAccessEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessEntryResult.fromMap(result);
}

/// Data source for managing AWS EKS (Elastic Kubernetes) Access Policies.
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
/// const example = aws.eks.getAccessPolicies({});
/// export const eksAccessPolicies = example.then(example => example.accessPolicies);
/// export const eksNetworkingPolicy = example.then(example => .filter(ap => ap.name == "AmazonEKSNetworkingPolicy").map(ap => (ap)));
/// export const eksAccessPolicyNames = example.then(example => .map(ap => (ap.name)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_access_policies()
/// pulumi.export("eksAccessPolicies", example.access_policies)
/// pulumi.export("eksNetworkingPolicy", [ap for ap in example.access_policies if ap.name == "AmazonEKSNetworkingPolicy"])
/// pulumi.export("eksAccessPolicyNames", [ap.name for ap in example.access_policies])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetAccessPolicies.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["eksAccessPolicies"] = example.Apply(getAccessPoliciesResult => getAccessPoliciesResult.AccessPolicies),
///         ["eksNetworkingPolicy"] = .Where(ap => ap.Name == "AmazonEKSNetworkingPolicy").Select(ap =>
///         {
///             return ap;
///         }).ToList(),
///         ["eksAccessPolicyNames"] = .Select(ap =>
///         {
///             return ap.Name;
///         }).ToList(),
///     };
/// });
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
/// data "aws_eks_getaccesspolicies" "example" {
/// }
///
/// output "eksAccessPolicies" {
///   value = data.aws_eks_getaccesspolicies.example.access_policies
/// }
/// output "eksNetworkingPolicy" {
///   value = [for ap in data.aws_eks_getaccesspolicies.example.access_policies : ap if ap.name == "AmazonEKSNetworkingPolicy"]
/// }
/// output "eksAccessPolicyNames" {
///   value = [for ap in data.aws_eks_getaccesspolicies.example.access_policies : ap.name]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_access_policies_get_access_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPoliciesResult> getAccessPolicies(
  GetAccessPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAccessPolicies:getAccessPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPoliciesResult.fromMap(result);
}

/// Retrieve information about an EKS add-on.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getAddon({
///     addonName: "vpc-cni",
///     clusterName: exampleAwsEksCluster.name,
/// });
/// export const eksAddonOutputs = exampleAwsEksAddon;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_addon(addon_name="vpc-cni",
///     cluster_name=example_aws_eks_cluster["name"])
/// pulumi.export("eksAddonOutputs", example_aws_eks_addon)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetAddon.Invoke(new()
///     {
///         AddonName = "vpc-cni",
///         ClusterName = exampleAwsEksCluster.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eksAddonOutputs"] = exampleAwsEksAddon,
///     };
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
/// 		_, err := eks.LookupAddon(ctx, &eks.LookupAddonArgs{
/// 			AddonName:   "vpc-cni",
/// 			ClusterName: exampleAwsEksCluster.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eksAddonOutputs", pulumi.Any(exampleAwsEksAddon))
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
/// data "aws_eks_getaddon" "example" {
///   addon_name   = "vpc-cni"
///   cluster_name = exampleAwsEksCluster.name
/// }
///
/// output "eksAddonOutputs" {
///   value = exampleAwsEksAddon
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetAddonArgs;
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
///         final var example = EksFunctions.getAddon(GetAddonArgs.builder()
///             .addonName("vpc-cni")
///             .clusterName(exampleAwsEksCluster.name())
///             .build());
///
///         ctx.export("eksAddonOutputs", exampleAwsEksAddon);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:eks:getAddon
///       arguments:
///         addonName: vpc-cni
///         clusterName: ${exampleAwsEksCluster.name}
/// outputs:
///   eksAddonOutputs: ${exampleAwsEksAddon}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_addon_get_addon_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddonResult> getAddon(
  GetAddonArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAddon:getAddon',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddonResult.fromMap(result);
}

/// Retrieve information about a specific EKS add-on version compatible with an EKS cluster version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const _default = await aws.eks.getAddonVersion({
///         addonName: "vpc-cni",
///         kubernetesVersion: example.version,
///     });
///     const latest = await aws.eks.getAddonVersion({
///         addonName: "vpc-cni",
///         kubernetesVersion: example.version,
///         mostRecent: true,
///     });
///     const vpcCni = new aws.eks.Addon("vpc_cni", {
///         clusterName: example.name,
///         addonName: "vpc-cni",
///         addonVersion: latest.version,
///     });
///     return {
///         "default": _default.version,
///         latest: latest.version,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.eks.get_addon_version(addon_name="vpc-cni",
///     kubernetes_version=example["version"])
/// latest = aws.eks.get_addon_version(addon_name="vpc-cni",
///     kubernetes_version=example["version"],
///     most_recent=True)
/// vpc_cni = aws.eks.Addon("vpc_cni",
///     cluster_name=example["name"],
///     addon_name="vpc-cni",
///     addon_version=latest.version)
/// pulumi.export("default", default.version)
/// pulumi.export("latest", latest.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Aws.Eks.GetAddonVersion.Invoke(new()
///     {
///         AddonName = "vpc-cni",
///         KubernetesVersion = example.Version,
///     });
///
///     var latest = Aws.Eks.GetAddonVersion.Invoke(new()
///     {
///         AddonName = "vpc-cni",
///         KubernetesVersion = example.Version,
///         MostRecent = true,
///     });
///
///     var vpcCni = new Aws.Eks.Addon("vpc_cni", new()
///     {
///         ClusterName = example.Name,
///         AddonName = "vpc-cni",
///         AddonVersion = latest.Apply(getAddonVersionResult => getAddonVersionResult.Version),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["default"] = @default.Apply(@default => @default.Apply(getAddonVersionResult => getAddonVersionResult.Version)),
///         ["latest"] = latest.Apply(getAddonVersionResult => getAddonVersionResult.Version),
///     };
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
/// 		_default, err := eks.GetAddonVersion(ctx, &eks.GetAddonVersionArgs{
/// 			AddonName:         "vpc-cni",
/// 			KubernetesVersion: example.Version,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		latest, err := eks.GetAddonVersion(ctx, &eks.GetAddonVersionArgs{
/// 			AddonName:         "vpc-cni",
/// 			KubernetesVersion: example.Version,
/// 			MostRecent:        pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eks.NewAddon(ctx, "vpc_cni", &eks.AddonArgs{
/// 			ClusterName:  pulumi.Any(example.Name),
/// 			AddonName:    pulumi.String("vpc-cni"),
/// 			AddonVersion: pulumi.String(latest.Version),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("default", _default.Version)
/// 		ctx.Export("latest", latest.Version)
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
/// data "aws_eks_getaddonversion" "default" {
///   addon_name         = "vpc-cni"
///   kubernetes_version = example.version
/// }
/// data "aws_eks_getaddonversion" "latest" {
///   addon_name         = "vpc-cni"
///   kubernetes_version = example.version
///   most_recent        = true
/// }
///
/// resource "aws_eks_addon" "vpc_cni" {
///   cluster_name  = example.name
///   addon_name    = "vpc-cni"
///   addon_version = data.aws_eks_getaddonversion.latest.version
/// }
/// output "default" {
///   value = data.aws_eks_getaddonversion.default.version
/// }
/// output "latest" {
///   value = data.aws_eks_getaddonversion.latest.version
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetAddonVersionArgs;
/// import com.pulumi.aws.eks.Addon;
/// import com.pulumi.aws.eks.AddonArgs;
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
///         final var default = EksFunctions.getAddonVersion(GetAddonVersionArgs.builder()
///             .addonName("vpc-cni")
///             .kubernetesVersion(example.version())
///             .build());
///
///         final var latest = EksFunctions.getAddonVersion(GetAddonVersionArgs.builder()
///             .addonName("vpc-cni")
///             .kubernetesVersion(example.version())
///             .mostRecent(true)
///             .build());
///
///         var vpcCni = new Addon("vpcCni", AddonArgs.builder()
///             .clusterName(example.name())
///             .addonName("vpc-cni")
///             .addonVersion(latest.version())
///             .build());
///
///         ctx.export("default", default_.version());
///         ctx.export("latest", latest.version());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcCni:
///     type: aws:eks:Addon
///     name: vpc_cni
///     properties:
///       clusterName: ${example.name}
///       addonName: vpc-cni
///       addonVersion: ${latest.version}
/// variables:
///   default:
///     fn::invoke:
///       function: aws:eks:getAddonVersion
///       arguments:
///         addonName: vpc-cni
///         kubernetesVersion: ${example.version}
///   latest:
///     fn::invoke:
///       function: aws:eks:getAddonVersion
///       arguments:
///         addonName: vpc-cni
///         kubernetesVersion: ${example.version}
///         mostRecent: true
/// outputs:
///   default: ${default.version}
///   latest: ${latest.version}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_addon_version_get_addon_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddonVersionResult> getAddonVersion(
  GetAddonVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAddonVersion:getAddonVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddonVersionResult.fromMap(result);
}

/// Retrieve information about an EKS Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const example = await aws.eks.getCluster({
///         name: "example",
///     });
///     return {
///         endpoint: example.endpoint,
///         "kubeconfig-certificate-authority-data": example.certificateAuthorities?.[0]?.data,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster(name="example")
/// pulumi.export("endpoint", example.endpoint)
/// pulumi.export("kubeconfig-certificate-authority-data", example.certificate_authorities[0].data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetCluster.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["endpoint"] = example.Apply(getClusterResult => getClusterResult.Endpoint),
///         ["kubeconfig-certificate-authority-data"] = example.Apply(getClusterResult => getClusterResult.CertificateAuthorities[0]?.Data),
///     };
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
/// 		example, err := eks.LookupCluster(ctx, &eks.LookupClusterArgs{
/// 			Name: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("endpoint", example.Endpoint)
/// 		ctx.Export("kubeconfig-certificate-authority-data", example.CertificateAuthorities[0].Data)
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
/// data "aws_eks_getcluster" "example" {
///   name = "example"
/// }
///
/// output "endpoint" {
///   value = data.aws_eks_getcluster.example.endpoint
/// }
/// output "kubeconfig-certificate-authority-data" {
///   value = data.aws_eks_getcluster.example.certificate_authorities[0].data
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterArgs;
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
///         final var example = EksFunctions.getCluster(GetClusterArgs.builder()
///             .name("example")
///             .build());
///
///         ctx.export("endpoint", example.endpoint());
///         ctx.export("kubeconfig-certificate-authority-data", example.certificateAuthorities()[0].data());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:eks:getCluster
///       arguments:
///         name: example
/// outputs:
///   endpoint: ${example.endpoint}
///   kubeconfig-certificate-authority-data: ${example.certificateAuthorities[0].data}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Get an authentication token to communicate with an EKS cluster.
///
/// Uses IAM credentials from the AWS provider to generate a temporary token that is compatible with
/// [AWS IAM Authenticator](https://github.com/kubernetes-sigs/aws-iam-authenticator) authentication.
/// This can be used to authenticate to an EKS cluster or to a cluster that has the AWS IAM Authenticator
/// server configured.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getCluster({
///     name: "example",
/// });
/// const exampleGetClusterAuth = aws.eks.getClusterAuth({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster(name="example")
/// example_get_cluster_auth = aws.eks.get_cluster_auth(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetCluster.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     var exampleGetClusterAuth = Aws.Eks.GetClusterAuth.Invoke(new()
///     {
///         Name = "example",
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
/// 		_, err := eks.LookupCluster(ctx, &eks.LookupClusterArgs{
/// 			Name: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eks.GetClusterAuth(ctx, &eks.GetClusterAuthArgs{
/// 			Name: "example",
/// 		}, nil)
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
/// data "aws_eks_getcluster" "example" {
///   name = "example"
/// }
/// data "aws_eks_getclusterauth" "exampleGetClusterAuth" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterArgs;
/// import com.pulumi.aws.eks.inputs.GetClusterAuthArgs;
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
///         final var example = EksFunctions.getCluster(GetClusterArgs.builder()
///             .name("example")
///             .build());
///
///         final var exampleGetClusterAuth = EksFunctions.getClusterAuth(GetClusterAuthArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:eks:getCluster
///       arguments:
///         name: example
///   exampleGetClusterAuth:
///     fn::invoke:
///       function: aws:eks:getClusterAuth
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_cluster_auth_get_cluster_auth_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterAuthResult> getClusterAuth(
  GetClusterAuthArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusterAuth:getClusterAuth',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterAuthResult.fromMap(result);
}

/// Data source for managing AWS EKS (Elastic Kubernetes) Cluster Versions.
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
/// const example = aws.eks.getClusterVersions({});
/// export const eksClusterVersions = example.then(example => example.clusterVersions);
/// export const eksClusterVersionFiltered = example.then(example => .filter(version => version.clusterVersion == "1.33").map(version => (version)));
/// export const eksClusterVersionList = example.then(example => .map(version => (version.clusterVersion)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster_versions()
/// pulumi.export("eksClusterVersions", example.cluster_versions)
/// pulumi.export("eksClusterVersionFiltered", [version for version in example.cluster_versions if version.cluster_version == "1.33"])
/// pulumi.export("eksClusterVersionList", [version.cluster_version for version in example.cluster_versions])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetClusterVersions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["eksClusterVersions"] = example.Apply(getClusterVersionsResult => getClusterVersionsResult.ClusterVersions),
///         ["eksClusterVersionFiltered"] = .Where(version => version.ClusterVersion == "1.33").Select(version =>
///         {
///             return version;
///         }).ToList(),
///         ["eksClusterVersionList"] = .Select(version =>
///         {
///             return version.ClusterVersion;
///         }).ToList(),
///     };
/// });
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
/// data "aws_eks_getclusterversions" "example" {
/// }
///
/// output "eksClusterVersions" {
///   value = data.aws_eks_getclusterversions.example.cluster_versions
/// }
/// output "eksClusterVersionFiltered" {
///   value = [for version in data.aws_eks_getclusterversions.example.cluster_versions : version if version.clusterVersion == "1.33"]
/// }
/// output "eksClusterVersionList" {
///   value = [for version in data.aws_eks_getclusterversions.example.cluster_versions : version.clusterVersion]
/// }
/// ```
///
///
/// ### Filter by Cluster Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getClusterVersions({
///     clusterType: "eks",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster_versions(cluster_type="eks")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetClusterVersions.Invoke(new()
///     {
///         ClusterType = "eks",
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
/// 		_, err := eks.GetClusterVersions(ctx, &eks.GetClusterVersionsArgs{
/// 			ClusterType: pulumi.StringRef("eks"),
/// 		}, nil)
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
/// data "aws_eks_getclusterversions" "example" {
///   cluster_type = "eks"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterVersionsArgs;
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
///         final var example = EksFunctions.getClusterVersions(GetClusterVersionsArgs.builder()
///             .clusterType("eks")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:eks:getClusterVersions
///       arguments:
///         clusterType: eks
/// ```
///
///
/// ### Filter by Version Status
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getClusterVersions({
///     versionStatus: "STANDARD_SUPPORT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_cluster_versions(version_status="STANDARD_SUPPORT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetClusterVersions.Invoke(new()
///     {
///         VersionStatus = "STANDARD_SUPPORT",
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
/// 		_, err := eks.GetClusterVersions(ctx, &eks.GetClusterVersionsArgs{
/// 			VersionStatus: pulumi.StringRef("STANDARD_SUPPORT"),
/// 		}, nil)
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
/// data "aws_eks_getclusterversions" "example" {
///   version_status = "STANDARD_SUPPORT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterVersionsArgs;
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
///         final var example = EksFunctions.getClusterVersions(GetClusterVersionsArgs.builder()
///             .versionStatus("STANDARD_SUPPORT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:eks:getClusterVersions
///       arguments:
///         versionStatus: STANDARD_SUPPORT
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_cluster_versions_get_cluster_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterVersionsResult> getClusterVersions(
  GetClusterVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusterVersions:getClusterVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterVersionsResult.fromMap(result);
}

/// Retrieve EKS Clusters list
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.eks.getClusters({});
/// const exampleGetCluster = example.then(example => std.toset({
///     input: example.names,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [String(__key)]: aws.eks.getCluster({
///     name: __value,
/// }) }), {}));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.eks.get_clusters()
/// example_get_cluster = {str(__key): aws.eks.get_cluster(name=__value) for __key, __value in enumerate(std.toset(input=example.names).result)}
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
///     var example = Aws.Eks.GetClusters.Invoke();
///
///     var exampleGetCluster = Std.Toset.Invoke(new()
///     {
///         Input = example.Apply(getClustersResult => getClustersResult.Names),
///     }).Apply(invoke => );
///
/// });
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
/// data "aws_eks_getclusters" "example" {
/// }
/// data "aws_eks_getcluster" "invoke_1" {
///   for_each = toset(data.aws_eks_getclusters.example.names)
///   name     = each.value
/// }
///
/// locals {
///   exampleGetCluster = {for __key, __value in toset(data.aws_eks_getclusters.example.names) : __key => data.aws_eks_getcluster.invoke_1[__key]}
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// Retrieve information about an EKS Node Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getNodeGroup({
///     clusterName: "example",
///     nodeGroupName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_node_group(cluster_name="example",
///     node_group_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetNodeGroup.Invoke(new()
///     {
///         ClusterName = "example",
///         NodeGroupName = "example",
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
/// 		_, err := eks.LookupNodeGroup(ctx, &eks.LookupNodeGroupArgs{
/// 			ClusterName:   "example",
/// 			NodeGroupName: "example",
/// 		}, nil)
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
/// data "aws_eks_getnodegroup" "example" {
///   cluster_name    = "example"
///   node_group_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetNodeGroupArgs;
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
///         final var example = EksFunctions.getNodeGroup(GetNodeGroupArgs.builder()
///             .clusterName("example")
///             .nodeGroupName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:eks:getNodeGroup
///       arguments:
///         clusterName: example
///         nodeGroupName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_node_group_get_node_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupResult> getNodeGroup(
  GetNodeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getNodeGroup:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult.fromMap(result);
}

/// Retrieve the EKS Node Groups associated with a named EKS cluster. This will allow you to pass a list of Node Group names to other resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.eks.getNodeGroups({
///     clusterName: "example",
/// });
/// const exampleGetNodeGroup = example.then(example => .reduce((__obj, [__key, __value]) => ({ ...__obj, [String(__key)]: aws.eks.getNodeGroup({
///     clusterName: "example",
///     nodeGroupName: __value,
/// }) }), {}));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.get_node_groups(cluster_name="example")
/// example_get_node_group = {str(__key): aws.eks.get_node_group(cluster_name="example",
///     node_group_name=__value) for __key, __value in enumerate(example.names)}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Eks.GetNodeGroups.Invoke(new()
///     {
///         ClusterName = "example",
///     });
///
///     var exampleGetNodeGroup = ;
///
/// });
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
/// data "aws_eks_getnodegroups" "example" {
///   cluster_name = "example"
/// }
/// data "aws_eks_getnodegroup" "invoke_1" {
///   for_each        = data.aws_eks_getnodegroups.example.names
///   cluster_name    = "example"
///   node_group_name = each.value
/// }
///
/// locals {
///   exampleGetNodeGroup = {for __key, __value in data.aws_eks_getnodegroups.example.names : __key => data.aws_eks_getnodegroup.invoke_1[__key]}
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eks_get_node_groups_get_node_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupsResult> getNodeGroups(
  GetNodeGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getNodeGroups:getNodeGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupsResult.fromMap(result);
}
