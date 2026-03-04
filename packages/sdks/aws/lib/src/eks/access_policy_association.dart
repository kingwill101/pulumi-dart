import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_association_access_scope.dart';
import 'access_policy_association_args.dart';
import 'access_policy_association_state.dart';

/// Access Entry Policy Association for an EKS Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.AccessPolicyAssociation("example", {
///     clusterName: exampleAwsEksCluster.name,
///     policyArn: "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy",
///     principalArn: exampleAwsIamUser.arn,
///     accessScope: {
///         type: "namespace",
///         namespaces: ["example-namespace"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.AccessPolicyAssociation("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     policy_arn="arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy",
///     principal_arn=example_aws_iam_user["arn"],
///     access_scope={
///         "type": "namespace",
///         "namespaces": ["example-namespace"],
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
///     var example = new Aws.Eks.AccessPolicyAssociation("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         PolicyArn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy",
///         PrincipalArn = exampleAwsIamUser.Arn,
///         AccessScope = new Aws.Eks.Inputs.AccessPolicyAssociationAccessScopeArgs
///         {
///             Type = "namespace",
///             Namespaces = new[]
///             {
///                 "example-namespace",
///             },
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
/// 		_, err := eks.NewAccessPolicyAssociation(ctx, "example", &eks.AccessPolicyAssociationArgs{
/// 			ClusterName:  pulumi.Any(exampleAwsEksCluster.Name),
/// 			PolicyArn:    pulumi.String("arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"),
/// 			PrincipalArn: pulumi.Any(exampleAwsIamUser.Arn),
/// 			AccessScope: &eks.AccessPolicyAssociationAccessScopeArgs{
/// 				Type: pulumi.String("namespace"),
/// 				Namespaces: pulumi.StringArray{
/// 					pulumi.String("example-namespace"),
/// 				},
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
/// import com.pulumi.aws.eks.AccessPolicyAssociation;
/// import com.pulumi.aws.eks.AccessPolicyAssociationArgs;
/// import com.pulumi.aws.eks.inputs.AccessPolicyAssociationAccessScopeArgs;
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
///         var example = new AccessPolicyAssociation("example", AccessPolicyAssociationArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .policyArn("arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy")
///             .principalArn(exampleAwsIamUser.arn())
///             .accessScope(AccessPolicyAssociationAccessScopeArgs.builder()
///                 .type("namespace")
///                 .namespaces("example-namespace")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:AccessPolicyAssociation
///     properties:
///       clusterName: ${exampleAwsEksCluster.name}
///       policyArn: arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy
///       principalArn: ${exampleAwsIamUser.arn}
///       accessScope:
///         type: namespace
///         namespaces:
///           - example-namespace
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS access entry using the `cluster_name` `principal_arn` and `policy_arn` separated by an octothorp (`#`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/accessPolicyAssociation:AccessPolicyAssociation my_eks_access_entry my_cluster_name#my_principal_arn#my_policy_arn
/// ```
class AccessPolicyAssociation extends pulumi.CustomResource {
  /// The configuration block to determine the scope of the access. See `access_scope` Block below.
  late final pulumi.Output<AccessPolicyAssociationAccessScope> accessScope;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was associated.
  late final pulumi.Output<String> associatedAt;

  /// Name of the EKS Cluster.
  late final pulumi.Output<String> clusterName;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was updated.
  late final pulumi.Output<String> modifiedAt;

  /// The ARN of the access policy that you're associating.
  late final pulumi.Output<String> policyArn;

  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  late final pulumi.Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AccessPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicyAssociation]. {@macro pulumi_eks_access_policy_association_access_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicyAssociation(
    String name, {
    AccessPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:eks/accessPolicyAssociation:AccessPolicyAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessScope = registerOutput<AccessPolicyAssociationAccessScope>(
      'accessScope',
    );
    associatedAt = registerOutput<String>('associatedAt');
    clusterName = registerOutput<String>('clusterName');
    modifiedAt = registerOutput<String>('modifiedAt');
    policyArn = registerOutput<String>('policyArn');
    principalArn = registerOutput<String>('principalArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AccessPolicyAssociation] resource's state with the given [name] and [id].
  static AccessPolicyAssociation get(
    String name,
    pulumi.Input<String> id, {
    AccessPolicyAssociationState? state,
  }) {
    return AccessPolicyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPolicyAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:eks/accessPolicyAssociation:AccessPolicyAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessScope = registerOutput<AccessPolicyAssociationAccessScope>(
      'accessScope',
    );
    associatedAt = registerOutput<String>('associatedAt');
    clusterName = registerOutput<String>('clusterName');
    modifiedAt = registerOutput<String>('modifiedAt');
    policyArn = registerOutput<String>('policyArn');
    principalArn = registerOutput<String>('principalArn');
    region = registerOutput<String>('region');
  }
}
