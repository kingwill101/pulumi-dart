import 'package:pulumi/pulumi.dart';
import 'repository_policy_args.dart';

/// Provides an Elastic Container Registry Repository Policy.
///
/// Note that currently only one policy may be applied to a repository.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRepository = new aws.ecr.Repository("example", {name: "example-repo"});
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
/// const exampleRepositoryPolicy = new aws.ecr.RepositoryPolicy("example", {
/// repository: exampleRepository.name,
/// policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_repository = aws.ecr.Repository("example", name="example-repo")
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
/// example_repository_policy = aws.ecr.RepositoryPolicy("example",
/// repository=example_repository.name,
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
/// var exampleRepository = new Aws.Ecr.Repository("example", new()
/// {
/// Name = "example-repo",
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
/// var exampleRepositoryPolicy = new Aws.Ecr.RepositoryPolicy("example", new()
/// {
/// Repository = exampleRepository.Name,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleRepository, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// Name: pulumi.String("example-repo"),
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
/// _, err = ecr.NewRepositoryPolicy(ctx, "example", &ecr.RepositoryPolicyArgs{
/// Repository: exampleRepository.Name,
/// Policy:     pulumi.String(example.Json),
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
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.ecr.RepositoryPolicy;
/// import com.pulumi.aws.ecr.RepositoryPolicyArgs;
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
/// .name("example-repo")
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
/// .repository(exampleRepository.name())
/// .policy(example.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleRepository:
/// type: aws:ecr:Repository
/// name: example
/// properties:
/// name: example-repo
/// exampleRepositoryPolicy:
/// type: aws:ecr:RepositoryPolicy
/// name: example
/// properties:
/// repository: ${exampleRepository.name}
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
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`repository`" pulumi-lang-dotnet="`Repository`" pulumi-lang-go="`repository`" pulumi-lang-python="`repository`" pulumi-lang-yaml="`repository`" pulumi-lang-java="`repository`">`repository`</span> - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Repository Policy using the repository name. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/repositoryPolicy:RepositoryPolicy example example
/// ```
class RepositoryPolicy extends CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// Name of the repository to apply the policy.
  late final Output<String> repository;

  RepositoryPolicy(
    String name, {
    RepositoryPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repositoryPolicy:RepositoryPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.registryId = Output.createUnknown<String>();
    this.repository = Output.createUnknown<String>();
  }
}
