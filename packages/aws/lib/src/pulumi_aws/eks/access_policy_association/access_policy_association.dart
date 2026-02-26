import 'package:pulumi/pulumi.dart';
import '../access_policy_association_access_scope/access_policy_association_access_scope.dart';
import 'access_policy_association_args.dart';

/// Access Entry Policy Association for an EKS Cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.AccessPolicyAssociation("example", {
/// clusterName: exampleAwsEksCluster.name,
/// policyArn: "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy",
/// principalArn: exampleAwsIamUser.arn,
/// accessScope: {
/// type: "namespace",
/// namespaces: ["example-namespace"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.AccessPolicyAssociation("example",
/// cluster_name=example_aws_eks_cluster["name"],
/// policy_arn="arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy",
/// principal_arn=example_aws_iam_user["arn"],
/// access_scope={
/// "type": "namespace",
/// "namespaces": ["example-namespace"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Eks.AccessPolicyAssociation("example", new()
/// {
/// ClusterName = exampleAwsEksCluster.Name,
/// PolicyArn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy",
/// PrincipalArn = exampleAwsIamUser.Arn,
/// AccessScope = new Aws.Eks.Inputs.AccessPolicyAssociationAccessScopeArgs
/// {
/// Type = "namespace",
/// Namespaces = new[]
/// {
/// "example-namespace",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := eks.NewAccessPolicyAssociation(ctx, "example", &eks.AccessPolicyAssociationArgs{
/// ClusterName:  pulumi.Any(exampleAwsEksCluster.Name),
/// PolicyArn:    pulumi.String("arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"),
/// PrincipalArn: pulumi.Any(exampleAwsIamUser.Arn),
/// AccessScope: &eks.AccessPolicyAssociationAccessScopeArgs{
/// Type: pulumi.String("namespace"),
/// Namespaces: pulumi.StringArray{
/// pulumi.String("example-namespace"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new AccessPolicyAssociation("example", AccessPolicyAssociationArgs.builder()
/// .clusterName(exampleAwsEksCluster.name())
/// .policyArn("arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy")
/// .principalArn(exampleAwsIamUser.arn())
/// .accessScope(AccessPolicyAssociationAccessScopeArgs.builder()
/// .type("namespace")
/// .namespaces("example-namespace")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:eks:AccessPolicyAssociation
/// properties:
/// clusterName: ${exampleAwsEksCluster.name}
/// policyArn: arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy
/// principalArn: ${exampleAwsIamUser.arn}
/// accessScope:
/// type: namespace
/// namespaces:
/// - example-namespace
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EKS access entry using the <span pulumi-lang-nodejs="`clusterName`" pulumi-lang-dotnet="`ClusterName`" pulumi-lang-go="`clusterName`" pulumi-lang-python="`cluster_name`" pulumi-lang-yaml="`clusterName`" pulumi-lang-java="`clusterName`">`cluster_name`</span> <span pulumi-lang-nodejs="`principalArn`" pulumi-lang-dotnet="`PrincipalArn`" pulumi-lang-go="`principalArn`" pulumi-lang-python="`principal_arn`" pulumi-lang-yaml="`principalArn`" pulumi-lang-java="`principalArn`">`principal_arn`</span> and <span pulumi-lang-nodejs="`policyArn`" pulumi-lang-dotnet="`PolicyArn`" pulumi-lang-go="`policyArn`" pulumi-lang-python="`policy_arn`" pulumi-lang-yaml="`policyArn`" pulumi-lang-java="`policyArn`">`policy_arn`</span> separated by an octothorp (`#`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/accessPolicyAssociation:AccessPolicyAssociation my_eks_access_entry my_cluster_name#my_principal_arn#my_policy_arn
/// ```
class AccessPolicyAssociation extends CustomResource {
  /// The configuration block to determine the scope of the access. See <span pulumi-lang-nodejs="`accessScope`" pulumi-lang-dotnet="`AccessScope`" pulumi-lang-go="`accessScope`" pulumi-lang-python="`access_scope`" pulumi-lang-yaml="`accessScope`" pulumi-lang-java="`accessScope`">`access_scope`</span> Block below.
  late final Output<AccessPolicyAssociationAccessScope> accessScope;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was associated.
  late final Output<String> associatedAt;

  /// Name of the EKS Cluster.
  late final Output<String> clusterName;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was updated.
  late final Output<String> modifiedAt;

  /// The ARN of the access policy that you're associating.
  late final Output<String> policyArn;

  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  late final Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AccessPolicyAssociation(
    String name, {
    AccessPolicyAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:eks/accessPolicyAssociation:AccessPolicyAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessScope =
        Output.createUnknown<AccessPolicyAssociationAccessScope>();
    this.associatedAt = Output.createUnknown<String>();
    this.clusterName = Output.createUnknown<String>();
    this.modifiedAt = Output.createUnknown<String>();
    this.policyArn = Output.createUnknown<String>();
    this.principalArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
