import 'package:pulumi/pulumi.dart' as pulumi;
import 'fargate_profile_args.dart';
import 'fargate_profile_selector.dart';
import 'fargate_profile_state.dart';

/// Manages an EKS Fargate Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.FargateProfile("example", {
///     selectors: [{
///         namespace: "example",
///     }],
///     clusterName: exampleAwsEksCluster.name,
///     fargateProfileName: "example",
///     podExecutionRoleArn: exampleAwsIamRole.arn,
///     subnetIds: exampleAwsSubnet.map(__item => __item.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.FargateProfile("example",
///     selectors=[{
///         "namespace": "example",
///     }],
///     cluster_name=example_aws_eks_cluster["name"],
///     fargate_profile_name="example",
///     pod_execution_role_arn=example_aws_iam_role["arn"],
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
///     var example = new Aws.Eks.FargateProfile("example", new()
///     {
///         Selectors = new[]
///         {
///             new Aws.Eks.Inputs.FargateProfileSelectorArgs
///             {
///                 Namespace = "example",
///             },
///         },
///         ClusterName = exampleAwsEksCluster.Name,
///         FargateProfileName = "example",
///         PodExecutionRoleArn = exampleAwsIamRole.Arn,
///         SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
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
/// _, err := eks.NewFargateProfile(ctx, "example", &eks.FargateProfileArgs{
/// Selectors: eks.FargateProfileSelectorArray{
/// &eks.FargateProfileSelectorArgs{
/// Namespace: pulumi.String("example"),
/// },
/// },
/// ClusterName: pulumi.Any(exampleAwsEksCluster.Name),
/// FargateProfileName: pulumi.String("example"),
/// PodExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_eks_fargateprofile" "example" {
///   selectors {
///     namespace = "example"
///   }
///   cluster_name           = exampleAwsEksCluster.name
///   fargate_profile_name   = "example"
///   pod_execution_role_arn = exampleAwsIamRole.arn
///   subnet_ids             = exampleAwsSubnet[*].id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.FargateProfile;
/// import com.pulumi.aws.eks.FargateProfileArgs;
/// import com.pulumi.aws.eks.inputs.FargateProfileSelectorArgs;
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
///         var example = new FargateProfile("example", FargateProfileArgs.builder()
///             .selectors(FargateProfileSelectorArgs.builder()
///                 .namespace("example")
///                 .build())
///             .clusterName(exampleAwsEksCluster.name())
///             .fargateProfileName("example")
///             .podExecutionRoleArn(exampleAwsIamRole.arn())
///             .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Example IAM Role for EKS Fargate Profile
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.Role("example", {
///     name: "eks-fargate-profile-example",
///     assumeRolePolicy: JSON.stringify({
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "eks-fargate-pods.amazonaws.com",
///             },
///         }],
///         Version: "2012-10-17",
///     }),
/// });
/// const example_AmazonEKSFargatePodExecutionRolePolicy = new aws.iam.RolePolicyAttachment("example-AmazonEKSFargatePodExecutionRolePolicy", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy",
///     role: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     name="eks-fargate-profile-example",
///     assume_role_policy=json.dumps({
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "eks-fargate-pods.amazonaws.com",
///             },
///         }],
///         "Version": "2012-10-17",
///     }))
/// example__amazon_eks_fargate_pod_execution_role_policy = aws.iam.RolePolicyAttachment("example-AmazonEKSFargatePodExecutionRolePolicy",
///     policy_arn="arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy",
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
///         Name = "eks-fargate-profile-example",
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
///                         ["Service"] = "eks-fargate-pods.amazonaws.com",
///                     },
///                 },
///             },
///             ["Version"] = "2012-10-17",
///         }),
///     });
///
///     var example_AmazonEKSFargatePodExecutionRolePolicy = new Aws.Iam.RolePolicyAttachment("example-AmazonEKSFargatePodExecutionRolePolicy", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy",
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
/// 						"Service": "eks-fargate-pods.amazonaws.com",
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
/// 			Name:             pulumi.String("eks-fargate-profile-example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example-AmazonEKSFargatePodExecutionRolePolicy", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"),
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
///   name = "eks-fargate-profile-example"
///   assume_role_policy = jsonencode({
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "eks-fargate-pods.amazonaws.com"
///       }
///     }]
///     "Version" = "2012-10-17"
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "example-AmazonEKSFargatePodExecutionRolePolicy" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"
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
///             .name("eks-fargate-profile-example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "eks-fargate-pods.amazonaws.com")
///                         ))
///                     ))),
///                     jsonProperty("Version", "2012-10-17")
///                 )))
///             .build());
///
///         var example_AmazonEKSFargatePodExecutionRolePolicy = new RolePolicyAttachment("example-AmazonEKSFargatePodExecutionRolePolicy", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy")
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
///       name: eks-fargate-profile-example
///       assumeRolePolicy:
///         fn::toJSON:
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: eks-fargate-pods.amazonaws.com
///           Version: 2012-10-17
///   example-AmazonEKSFargatePodExecutionRolePolicy:
///     type: aws:iam:RolePolicyAttachment
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy
///       role: ${example.name}
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
/// * `fargateProfileName` (String) Name of the Fargate profile.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Fargate Profiles using `clusterName` and `fargateProfileName` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/fargateProfile:FargateProfile example example-cluster:example-profile
/// ```
class FargateProfile extends pulumi.CustomResource {
  /// ARN of the EKS Fargate Profile.
  late final pulumi.Output<String> arn;
  /// Name of the EKS Cluster.
  late final pulumi.Output<String> clusterName;
  /// Name of the EKS Fargate Profile.
  late final pulumi.Output<String> fargateProfileName;
  /// ARN of the IAM Role that provides permissions for the EKS Fargate Profile.
  late final pulumi.Output<String> podExecutionRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below.
  late final pulumi.Output<List<FargateProfileSelector>> selectors;
  /// Status of the EKS Fargate Profile.
  late final pulumi.Output<String> status;
  /// Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>?> subnetIds;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [FargateProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FargateProfile]. {@macro pulumi_eks_fargate_profile_fargate_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FargateProfile(
    String name, {
    FargateProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/fargateProfile:FargateProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    clusterName = registerOutput<String>('clusterName');
    fargateProfileName = registerOutput<String>('fargateProfileName');
    podExecutionRoleArn = registerOutput<String>('podExecutionRoleArn');
    region = registerOutput<String>('region');
    selectors = registerOutput<List<FargateProfileSelector>>('selectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FargateProfileSelector>(guardedValue, (value) => FargateProfileSelector.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    subnetIds = registerOutput<List<String>?>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [FargateProfile] resource's state with the given [name] and [id].
  static FargateProfile get(
    String name,
    pulumi.Input<String> id, {
    FargateProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FargateProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FargateProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/fargateProfile:FargateProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterName = registerOutput<String>('clusterName');
    fargateProfileName = registerOutput<String>('fargateProfileName');
    podExecutionRoleArn = registerOutput<String>('podExecutionRoleArn');
    region = registerOutput<String>('region');
    selectors = registerOutput<List<FargateProfileSelector>>('selectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FargateProfileSelector>(guardedValue, (value) => FargateProfileSelector.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    subnetIds = registerOutput<List<String>?>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [FargateProfile] resource.
  FargateProfile.reference(String urn)
    : super(
        'aws:eks/fargateProfile:FargateProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    clusterName = registerOutput<String>('clusterName');
    fargateProfileName = registerOutput<String>('fargateProfileName');
    podExecutionRoleArn = registerOutput<String>('podExecutionRoleArn');
    region = registerOutput<String>('region');
    selectors = registerOutput<List<FargateProfileSelector>>('selectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FargateProfileSelector>(guardedValue, (value) => FargateProfileSelector.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    subnetIds = registerOutput<List<String>?>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
