import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_identity_association_args.dart';
import 'pod_identity_association_state.dart';

/// Resource for managing an AWS EKS (Elastic Kubernetes) Pod Identity Association.
///
/// Creates an EKS Pod Identity association between a service account in an Amazon EKS cluster and an IAM role with EKS Pod Identity. Use EKS Pod Identity to give temporary IAM credentials to pods and the credentials are rotated automatically.
///
/// Amazon EKS Pod Identity associations provide the ability to manage credentials for your applications, similar to the way that EC2 instance profiles provide credentials to Amazon EC2 instances.
///
/// If a pod uses a service account that has an association, Amazon EKS sets environment variables in the containers of the pod. The environment variables configure the Amazon Web Services SDKs, including the Command Line Interface, to use the EKS Pod Identity credentials.
///
/// Pod Identity is a simpler method than IAM roles for service accounts, as this method doesn’t use OIDC identity providers. Additionally, you can configure a role for Pod Identity once, and reuse it across clusters.
///
/// ## Example Usage
///
/// ### With Inline Session Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.PodIdentityAssociation("example", {
///     clusterName: exampleAwsEksCluster.name,
///     namespace: "example",
///     serviceAccount: "example-sa",
///     roleArn: exampleAwsIamRole.arn,
///     disableSessionTags: true,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: ["s3:GetObject"],
///             Resource: "arn:aws:s3:::my-bucket/*",
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.eks.PodIdentityAssociation("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     namespace="example",
///     service_account="example-sa",
///     role_arn=example_aws_iam_role["arn"],
///     disable_session_tags=True,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": ["s3:GetObject"],
///             "Resource": "arn:aws:s3:::my-bucket/*",
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
///     var example = new Aws.Eks.PodIdentityAssociation("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         Namespace = "example",
///         ServiceAccount = "example-sa",
///         RoleArn = exampleAwsIamRole.Arn,
///         DisableSessionTags = true,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "s3:GetObject",
///                     },
///                     ["Resource"] = "arn:aws:s3:::my-bucket/*",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"s3:GetObject",
/// 					},
/// 					"Resource": "arn:aws:s3:::my-bucket/*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = eks.NewPodIdentityAssociation(ctx, "example", &eks.PodIdentityAssociationArgs{
/// 			ClusterName:        pulumi.Any(exampleAwsEksCluster.Name),
/// 			Namespace:          pulumi.String("example"),
/// 			ServiceAccount:     pulumi.String("example-sa"),
/// 			RoleArn:            pulumi.Any(exampleAwsIamRole.Arn),
/// 			DisableSessionTags: pulumi.Bool(true),
/// 			Policy:             pulumi.String(json0),
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
/// resource "aws_eks_podidentityassociation" "example" {
///   cluster_name         = exampleAwsEksCluster.name
///   namespace            = "example"
///   service_account      = "example-sa"
///   role_arn             = exampleAwsIamRole.arn
///   disable_session_tags = true
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect"   = "Allow"
///       "Action"   = ["s3:GetObject"]
///       "Resource" = "arn:aws:s3:::my-bucket/*"
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
/// import com.pulumi.aws.eks.PodIdentityAssociation;
/// import com.pulumi.aws.eks.PodIdentityAssociationArgs;
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
///         var example = new PodIdentityAssociation("example", PodIdentityAssociationArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .namespace("example")
///             .serviceAccount("example-sa")
///             .roleArn(exampleAwsIamRole.arn())
///             .disableSessionTags(true)
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray("s3:GetObject")),
///                         jsonProperty("Resource", "arn:aws:s3:::my-bucket/*")
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
///     type: aws:eks:PodIdentityAssociation
///     properties:
///       clusterName: ${exampleAwsEksCluster.name}
///       namespace: example
///       serviceAccount: example-sa
///       roleArn: ${exampleAwsIamRole.arn}
///       disableSessionTags: true
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action:
///                 - s3:GetObject
///               Resource: arn:aws:s3:::my-bucket/*
/// ```
///
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["pods.eks.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: [
///             "sts:AssumeRole",
///             "sts:TagSession",
///         ],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "eks-pod-identity-example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleS3 = new aws.iam.RolePolicyAttachment("example_s3", {
///     policyArn: "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
///     role: example.name,
/// });
/// const examplePodIdentityAssociation = new aws.eks.PodIdentityAssociation("example", {
///     clusterName: exampleAwsEksCluster.name,
///     namespace: "example",
///     serviceAccount: "example-sa",
///     roleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["pods.eks.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": [
///         "sts:AssumeRole",
///         "sts:TagSession",
///     ],
/// }])
/// example = aws.iam.Role("example",
///     name="eks-pod-identity-example",
///     assume_role_policy=assume_role.json)
/// example_s3 = aws.iam.RolePolicyAttachment("example_s3",
///     policy_arn="arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
///     role=example.name)
/// example_pod_identity_association = aws.eks.PodIdentityAssociation("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     namespace="example",
///     service_account="example-sa",
///     role_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "pods.eks.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                     "sts:TagSession",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "eks-pod-identity-example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleS3 = new Aws.Iam.RolePolicyAttachment("example_s3", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
///         Role = example.Name,
///     });
///
///     var examplePodIdentityAssociation = new Aws.Eks.PodIdentityAssociation("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         Namespace = "example",
///         ServiceAccount = "example-sa",
///         RoleArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"pods.eks.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("eks-pod-identity-example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example_s3", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"),
/// 			Role:      example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eks.NewPodIdentityAssociation(ctx, "example", &eks.PodIdentityAssociationArgs{
/// 			ClusterName:    pulumi.Any(exampleAwsEksCluster.Name),
/// 			Namespace:      pulumi.String("example"),
/// 			ServiceAccount: pulumi.String("example-sa"),
/// 			RoleArn:        example.Arn,
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["pods.eks.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole", "sts:TagSession"]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name               = "eks-pod-identity-example"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicyattachment" "example_s3" {
///   policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
///   role       = aws_iam_role.example.name
/// }
/// resource "aws_eks_podidentityassociation" "example" {
///   cluster_name    = exampleAwsEksCluster.name
///   namespace       = "example"
///   service_account = "example-sa"
///   role_arn        = aws_iam_role.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.eks.PodIdentityAssociation;
/// import com.pulumi.aws.eks.PodIdentityAssociationArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("pods.eks.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions(
///                     "sts:AssumeRole",
///                     "sts:TagSession")
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("eks-pod-identity-example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleS3 = new RolePolicyAttachment("exampleS3", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess")
///             .role(example.name())
///             .build());
///
///         var examplePodIdentityAssociation = new PodIdentityAssociation("examplePodIdentityAssociation", PodIdentityAssociationArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .namespace("example")
///             .serviceAccount("example-sa")
///             .roleArn(example.arn())
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
///       name: eks-pod-identity-example
///       assumeRolePolicy: ${assumeRole.json}
///   exampleS3:
///     type: aws:iam:RolePolicyAttachment
///     name: example_s3
///     properties:
///       policyArn: arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess
///       role: ${example.name}
///   examplePodIdentityAssociation:
///     type: aws:eks:PodIdentityAssociation
///     name: example
///     properties:
///       clusterName: ${exampleAwsEksCluster.name}
///       namespace: example
///       serviceAccount: example-sa
///       roleArn: ${example.arn}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - pods.eks.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///               - sts:TagSession
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
/// * `associationId` (String) ID of the association.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Pod Identity Associations using `clusterName` and `associationId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/podIdentityAssociation:PodIdentityAssociation example example-cluster,a-yrpsdroc4ei7k6xps
/// ```
class PodIdentityAssociation extends pulumi.CustomResource {
  /// ARN of the association.
  late final pulumi.Output<String> associationArn;
  /// The ID of the association.
  late final pulumi.Output<String> associationId;
  /// The name of the cluster to create the association in.
  late final pulumi.Output<String> clusterName;
  /// Disable the tags that are automatically added to role session by Amazon EKS. Must be set to `true` when `policy` is specified.
  late final pulumi.Output<bool> disableSessionTags;
  /// The unique identifier for this association for a target IAM role. You put this value in the trust policy of the target role, in a Condition to match the sts.ExternalId.
  late final pulumi.Output<String> externalId;
  /// The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  late final pulumi.Output<String> namespace;
  /// An IAM policy in JSON format (as an escaped string) that applies additional restrictions to this Pod Identity association beyond the IAM policies attached to the IAM role. The effective permissions are the intersection of the role's policies and this policy, allowing you to enforce least privilege across multiple associations that share the same role. Requires `disableSessionTags = true`.
  late final pulumi.Output<String?> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  late final pulumi.Output<String> roleArn;
  /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceAccount;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the IAM role to be chained to the the IAM role specified as `roleArn`.
  late final pulumi.Output<String?> targetRoleArn;

  /// Creates a new [PodIdentityAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodIdentityAssociation]. {@macro pulumi_eks_pod_identity_association_pod_identity_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodIdentityAssociation(
    String name, {
    PodIdentityAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/podIdentityAssociation:PodIdentityAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    associationArn = registerOutput<String>('associationArn');
    associationId = registerOutput<String>('associationId');
    clusterName = registerOutput<String>('clusterName');
    disableSessionTags = registerOutput<bool>('disableSessionTags');
    externalId = registerOutput<String>('externalId');
    namespace = registerOutput<String>('namespace');
    policy = registerOutput<String?>('policy');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    serviceAccount = registerOutput<String>('serviceAccount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRoleArn = registerOutput<String?>('targetRoleArn');
  }

  /// Gets an existing [PodIdentityAssociation] resource's state with the given [name] and [id].
  static PodIdentityAssociation get(
    String name,
    pulumi.Input<String> id, {
    PodIdentityAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PodIdentityAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PodIdentityAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/podIdentityAssociation:PodIdentityAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associationArn = registerOutput<String>('associationArn');
    associationId = registerOutput<String>('associationId');
    clusterName = registerOutput<String>('clusterName');
    disableSessionTags = registerOutput<bool>('disableSessionTags');
    externalId = registerOutput<String>('externalId');
    namespace = registerOutput<String>('namespace');
    policy = registerOutput<String?>('policy');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    serviceAccount = registerOutput<String>('serviceAccount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRoleArn = registerOutput<String?>('targetRoleArn');
  }

  /// Creates a typed reference to an existing [PodIdentityAssociation] resource.
  PodIdentityAssociation.reference(String urn)
    : super(
        'aws:eks/podIdentityAssociation:PodIdentityAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    associationArn = registerOutput<String>('associationArn');
    associationId = registerOutput<String>('associationId');
    clusterName = registerOutput<String>('clusterName');
    disableSessionTags = registerOutput<bool>('disableSessionTags');
    externalId = registerOutput<String>('externalId');
    namespace = registerOutput<String>('namespace');
    policy = registerOutput<String?>('policy');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    serviceAccount = registerOutput<String>('serviceAccount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRoleArn = registerOutput<String?>('targetRoleArn');
  }
}
