import 'package:pulumi/pulumi.dart';
import 'pod_identity_association_args.dart';

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
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["pods.eks.amazonaws.com"],
/// }],
/// actions: [
/// "sts:AssumeRole",
/// "sts:TagSession",
/// ],
/// }],
/// });
/// const example = new aws.iam.Role("example", {
/// name: "eks-pod-identity-example",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleS3 = new aws.iam.RolePolicyAttachment("example_s3", {
/// policyArn: "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
/// role: example.name,
/// });
/// const examplePodIdentityAssociation = new aws.eks.PodIdentityAssociation("example", {
/// clusterName: exampleAwsEksCluster.name,
/// namespace: "example",
/// serviceAccount: "example-sa",
/// roleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["pods.eks.amazonaws.com"],
/// }],
/// "actions": [
/// "sts:AssumeRole",
/// "sts:TagSession",
/// ],
/// }])
/// example = aws.iam.Role("example",
/// name="eks-pod-identity-example",
/// assume_role_policy=assume_role.json)
/// example_s3 = aws.iam.RolePolicyAttachment("example_s3",
/// policy_arn="arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
/// role=example.name)
/// example_pod_identity_association = aws.eks.PodIdentityAssociation("example",
/// cluster_name=example_aws_eks_cluster["name"],
/// namespace="example",
/// service_account="example-sa",
/// role_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "pods.eks.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// "sts:TagSession",
/// },
/// },
/// },
/// });
///
/// var example = new Aws.Iam.Role("example", new()
/// {
/// Name = "eks-pod-identity-example",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var exampleS3 = new Aws.Iam.RolePolicyAttachment("example_s3", new()
/// {
/// PolicyArn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
/// Role = example.Name,
/// });
///
/// var examplePodIdentityAssociation = new Aws.Eks.PodIdentityAssociation("example", new()
/// {
/// ClusterName = exampleAwsEksCluster.Name,
/// Namespace = "example",
/// ServiceAccount = "example-sa",
/// RoleArn = example.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "pods.eks.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// "sts:TagSession",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("eks-pod-identity-example"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "example_s3", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"),
/// Role:      example.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = eks.NewPodIdentityAssociation(ctx, "example", &eks.PodIdentityAssociationArgs{
/// ClusterName:    pulumi.Any(exampleAwsEksCluster.Name),
/// Namespace:      pulumi.String("example"),
/// ServiceAccount: pulumi.String("example-sa"),
/// RoleArn:        example.Arn,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.eks.PodIdentityAssociation;
/// import com.pulumi.aws.eks.PodIdentityAssociationArgs;
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
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("pods.eks.amazonaws.com")
/// .build())
/// .actions(
/// "sts:AssumeRole",
/// "sts:TagSession")
/// .build())
/// .build());
///
/// var example = new Role("example", RoleArgs.builder()
/// .name("eks-pod-identity-example")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// var exampleS3 = new RolePolicyAttachment("exampleS3", RolePolicyAttachmentArgs.builder()
/// .policyArn("arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess")
/// .role(example.name())
/// .build());
///
/// var examplePodIdentityAssociation = new PodIdentityAssociation("examplePodIdentityAssociation", PodIdentityAssociationArgs.builder()
/// .clusterName(exampleAwsEksCluster.name())
/// .namespace("example")
/// .serviceAccount("example-sa")
/// .roleArn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:Role
/// properties:
/// name: eks-pod-identity-example
/// assumeRolePolicy: ${assumeRole.json}
/// exampleS3:
/// type: aws:iam:RolePolicyAttachment
/// name: example_s3
/// properties:
/// policyArn: arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess
/// role: ${example.name}
/// examplePodIdentityAssociation:
/// type: aws:eks:PodIdentityAssociation
/// name: example
/// properties:
/// clusterName: ${exampleAwsEksCluster.name}
/// namespace: example
/// serviceAccount: example-sa
/// roleArn: ${example.arn}
/// variables:
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - pods.eks.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// - sts:TagSession
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EKS (Elastic Kubernetes) Pod Identity Association using the <span pulumi-lang-nodejs="`clusterName`" pulumi-lang-dotnet="`ClusterName`" pulumi-lang-go="`clusterName`" pulumi-lang-python="`cluster_name`" pulumi-lang-yaml="`clusterName`" pulumi-lang-java="`clusterName`">`cluster_name`</span> and <span pulumi-lang-nodejs="`associationId`" pulumi-lang-dotnet="`AssociationId`" pulumi-lang-go="`associationId`" pulumi-lang-python="`association_id`" pulumi-lang-yaml="`associationId`" pulumi-lang-java="`associationId`">`association_id`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/podIdentityAssociation:PodIdentityAssociation example example,a-12345678
/// ```
class PodIdentityAssociation extends CustomResource {
  /// The Amazon Resource Name (ARN) of the association.
  late final Output<String> associationArn;

  /// The ID of the association.
  late final Output<String> associationId;

  /// The name of the cluster to create the association in.
  late final Output<String> clusterName;

  /// Disable the tags that are automatically added to role session by Amazon EKS.
  late final Output<bool> disableSessionTags;

  /// The unique identifier for this association for a target IAM role. You put this value in the trust policy of the target role, in a Condition to match the sts.ExternalId.
  late final Output<String> externalId;

  /// The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  late final Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  late final Output<String> roleArn;

  /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  ///
  /// The following arguments are optional:
  late final Output<String> serviceAccount;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span>.
  late final Output<String?> targetRoleArn;

  PodIdentityAssociation(
    String name, {
    PodIdentityAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:eks/podIdentityAssociation:PodIdentityAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associationArn = Output.createUnknown<String>();
    this.associationId = Output.createUnknown<String>();
    this.clusterName = Output.createUnknown<String>();
    this.disableSessionTags = Output.createUnknown<bool>();
    this.externalId = Output.createUnknown<String>();
    this.namespace = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.serviceAccount = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetRoleArn = Output.createUnknown<String?>();
  }
}
