import 'package:pulumi/pulumi.dart';
import 'repository_policy_args2.dart';

/// Provides an Elastic Container Registry Public Repository Policy.
///
/// Note that currently only one policy may be applied to a repository.
///
/// > **NOTE:** This resource can only be used in the `us-east-1` region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRepository = new aws.ecrpublic.Repository("example", {repositoryName: "example"});
/// const example = aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "new policy",
/// effect: "Allow",
/// principals: [{
/// type: "AWS",
/// identifiers: ["123456789012"],
/// }],
/// actions: [
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:PutImage",
/// "ecr:InitiateLayerUpload",
/// "ecr:UploadLayerPart",
/// "ecr:CompleteLayerUpload",
/// "ecr:DescribeRepositories",
/// "ecr:GetRepositoryPolicy",
/// "ecr:ListImages",
/// "ecr:DeleteRepository",
/// "ecr:BatchDeleteImage",
/// "ecr:SetRepositoryPolicy",
/// "ecr:DeleteRepositoryPolicy",
/// ],
/// }],
/// });
/// const exampleRepositoryPolicy = new aws.ecrpublic.RepositoryPolicy("example", {
/// repositoryName: exampleRepository.repositoryName,
/// policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_repository = aws.ecrpublic.Repository("example", repository_name="example")
/// example = aws.iam.get_policy_document(statements=[{
/// "sid": "new policy",
/// "effect": "Allow",
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["123456789012"],
/// }],
/// "actions": [
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:PutImage",
/// "ecr:InitiateLayerUpload",
/// "ecr:UploadLayerPart",
/// "ecr:CompleteLayerUpload",
/// "ecr:DescribeRepositories",
/// "ecr:GetRepositoryPolicy",
/// "ecr:ListImages",
/// "ecr:DeleteRepository",
/// "ecr:BatchDeleteImage",
/// "ecr:SetRepositoryPolicy",
/// "ecr:DeleteRepositoryPolicy",
/// ],
/// }])
/// example_repository_policy = aws.ecrpublic.RepositoryPolicy("example",
/// repository_name=example_repository.repository_name,
/// policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleRepository = new Aws.EcrPublic.Repository("example", new()
/// {
/// RepositoryName = "example",
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "new policy",
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "123456789012",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:PutImage",
/// "ecr:InitiateLayerUpload",
/// "ecr:UploadLayerPart",
/// "ecr:CompleteLayerUpload",
/// "ecr:DescribeRepositories",
/// "ecr:GetRepositoryPolicy",
/// "ecr:ListImages",
/// "ecr:DeleteRepository",
/// "ecr:BatchDeleteImage",
/// "ecr:SetRepositoryPolicy",
/// "ecr:DeleteRepositoryPolicy",
/// },
/// },
/// },
/// });
///
/// var exampleRepositoryPolicy = new Aws.EcrPublic.RepositoryPolicy("example", new()
/// {
/// RepositoryName = exampleRepository.RepositoryName,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecrpublic"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleRepository, err := ecrpublic.NewRepository(ctx, "example", &ecrpublic.RepositoryArgs{
/// RepositoryName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid:    pulumi.StringRef("new policy"),
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: []string{
/// "123456789012",
/// },
/// },
/// },
/// Actions: []string{
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:PutImage",
/// "ecr:InitiateLayerUpload",
/// "ecr:UploadLayerPart",
/// "ecr:CompleteLayerUpload",
/// "ecr:DescribeRepositories",
/// "ecr:GetRepositoryPolicy",
/// "ecr:ListImages",
/// "ecr:DeleteRepository",
/// "ecr:BatchDeleteImage",
/// "ecr:SetRepositoryPolicy",
/// "ecr:DeleteRepositoryPolicy",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecrpublic.NewRepositoryPolicy(ctx, "example", &ecrpublic.RepositoryPolicyArgs{
/// RepositoryName: exampleRepository.RepositoryName,
/// Policy:         pulumi.String(example.Json),
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
/// import com.pulumi.aws.ecrpublic.Repository;
/// import com.pulumi.aws.ecrpublic.RepositoryArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.ecrpublic.RepositoryPolicy;
/// import com.pulumi.aws.ecrpublic.RepositoryPolicyArgs;
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
/// var exampleRepository = new Repository("exampleRepository", RepositoryArgs.builder()
/// .repositoryName("example")
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("new policy")
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("123456789012")
/// .build())
/// .actions(
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:PutImage",
/// "ecr:InitiateLayerUpload",
/// "ecr:UploadLayerPart",
/// "ecr:CompleteLayerUpload",
/// "ecr:DescribeRepositories",
/// "ecr:GetRepositoryPolicy",
/// "ecr:ListImages",
/// "ecr:DeleteRepository",
/// "ecr:BatchDeleteImage",
/// "ecr:SetRepositoryPolicy",
/// "ecr:DeleteRepositoryPolicy")
/// .build())
/// .build());
///
/// var exampleRepositoryPolicy = new RepositoryPolicy("exampleRepositoryPolicy", RepositoryPolicyArgs.builder()
/// .repositoryName(exampleRepository.repositoryName())
/// .policy(example.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleRepository:
/// type: aws:ecrpublic:Repository
/// name: example
/// properties:
/// repositoryName: example
/// exampleRepositoryPolicy:
/// type: aws:ecrpublic:RepositoryPolicy
/// name: example
/// properties:
/// repositoryName: ${exampleRepository.repositoryName}
/// policy: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: new policy
/// effect: Allow
/// principals:
/// - type: AWS
/// identifiers:
/// - '123456789012'
/// actions:
/// - ecr:GetDownloadUrlForLayer
/// - ecr:BatchGetImage
/// - ecr:BatchCheckLayerAvailability
/// - ecr:PutImage
/// - ecr:InitiateLayerUpload
/// - ecr:UploadLayerPart
/// - ecr:CompleteLayerUpload
/// - ecr:DescribeRepositories
/// - ecr:GetRepositoryPolicy
/// - ecr:ListImages
/// - ecr:DeleteRepository
/// - ecr:BatchDeleteImage
/// - ecr:SetRepositoryPolicy
/// - ecr:DeleteRepositoryPolicy
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECR Public Repository Policy using the repository name. For example:
///
/// ```sh
/// $ pulumi import aws:ecrpublic/repositoryPolicy:RepositoryPolicy example example
/// ```
class RepositoryPolicy2 extends CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// Name of the repository to apply the policy.
  late final Output<String> repositoryName;

  RepositoryPolicy2(
    String name, {
    RepositoryPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecrpublic/repositoryPolicy:RepositoryPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.registryId = Output.createUnknown<String>();
    this.repositoryName = Output.createUnknown<String>();
  }
}
