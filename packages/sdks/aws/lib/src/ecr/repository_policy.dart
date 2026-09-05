import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_policy_args.dart';
import 'repository_policy_state.dart';

/// Provides an Elastic Container Registry Repository Policy.
///
/// Note that currently only one policy may be applied to a repository.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRepository = new aws.ecr.Repository("example", {name: "example-repo"});
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "AWS",
///             identifiers: ["123456789012"],
///         }],
///         sid: "new policy",
///         effect: "Allow",
///         actions: [
///             "ecr:GetDownloadUrlForLayer",
///             "ecr:BatchGetImage",
///             "ecr:BatchCheckLayerAvailability",
///             "ecr:PutImage",
///             "ecr:InitiateLayerUpload",
///             "ecr:UploadLayerPart",
///             "ecr:CompleteLayerUpload",
///             "ecr:DescribeRepositories",
///             "ecr:GetRepositoryPolicy",
///             "ecr:ListImages",
///             "ecr:DeleteRepository",
///             "ecr:BatchDeleteImage",
///             "ecr:SetRepositoryPolicy",
///             "ecr:DeleteRepositoryPolicy",
///         ],
///     }],
/// });
/// const exampleRepositoryPolicy = new aws.ecr.RepositoryPolicy("example", {
///     repository: exampleRepository.name,
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_repository = aws.ecr.Repository("example", name="example-repo")
/// example = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["123456789012"],
///     }],
///     "sid": "new policy",
///     "effect": "Allow",
///     "actions": [
///         "ecr:GetDownloadUrlForLayer",
///         "ecr:BatchGetImage",
///         "ecr:BatchCheckLayerAvailability",
///         "ecr:PutImage",
///         "ecr:InitiateLayerUpload",
///         "ecr:UploadLayerPart",
///         "ecr:CompleteLayerUpload",
///         "ecr:DescribeRepositories",
///         "ecr:GetRepositoryPolicy",
///         "ecr:ListImages",
///         "ecr:DeleteRepository",
///         "ecr:BatchDeleteImage",
///         "ecr:SetRepositoryPolicy",
///         "ecr:DeleteRepositoryPolicy",
///     ],
/// }])
/// example_repository_policy = aws.ecr.RepositoryPolicy("example",
///     repository=example_repository.name,
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleRepository = new Aws.Ecr.Repository("example", new()
///     {
///         Name = "example-repo",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "123456789012",
///                         },
///                     },
///                 },
///                 Sid = "new policy",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ecr:GetDownloadUrlForLayer",
///                     "ecr:BatchGetImage",
///                     "ecr:BatchCheckLayerAvailability",
///                     "ecr:PutImage",
///                     "ecr:InitiateLayerUpload",
///                     "ecr:UploadLayerPart",
///                     "ecr:CompleteLayerUpload",
///                     "ecr:DescribeRepositories",
///                     "ecr:GetRepositoryPolicy",
///                     "ecr:ListImages",
///                     "ecr:DeleteRepository",
///                     "ecr:BatchDeleteImage",
///                     "ecr:SetRepositoryPolicy",
///                     "ecr:DeleteRepositoryPolicy",
///                 },
///             },
///         },
///     });
///
///     var exampleRepositoryPolicy = new Aws.Ecr.RepositoryPolicy("example", new()
///     {
///         Repository = exampleRepository.Name,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleRepository, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// 			Name: pulumi.String("example-repo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"123456789012",
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("new policy"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"ecr:GetDownloadUrlForLayer",
/// 						"ecr:BatchGetImage",
/// 						"ecr:BatchCheckLayerAvailability",
/// 						"ecr:PutImage",
/// 						"ecr:InitiateLayerUpload",
/// 						"ecr:UploadLayerPart",
/// 						"ecr:CompleteLayerUpload",
/// 						"ecr:DescribeRepositories",
/// 						"ecr:GetRepositoryPolicy",
/// 						"ecr:ListImages",
/// 						"ecr:DeleteRepository",
/// 						"ecr:BatchDeleteImage",
/// 						"ecr:SetRepositoryPolicy",
/// 						"ecr:DeleteRepositoryPolicy",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecr.NewRepositoryPolicy(ctx, "example", &ecr.RepositoryPolicyArgs{
/// 			Repository: exampleRepository.Name,
/// 			Policy:     pulumi.String(example.Json),
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
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = ["123456789012"]
///     }
///     sid     = "new policy"
///     effect  = "Allow"
///     actions = ["ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:BatchCheckLayerAvailability", "ecr:PutImage", "ecr:InitiateLayerUpload", "ecr:UploadLayerPart", "ecr:CompleteLayerUpload", "ecr:DescribeRepositories", "ecr:GetRepositoryPolicy", "ecr:ListImages", "ecr:DeleteRepository", "ecr:BatchDeleteImage", "ecr:SetRepositoryPolicy", "ecr:DeleteRepositoryPolicy"]
///   }
/// }
///
/// resource "aws_ecr_repository" "example" {
///   name = "example-repo"
/// }
/// resource "aws_ecr_repositorypolicy" "example" {
///   repository = aws_ecr_repository.example.name
///   policy     = data.aws_iam_getpolicydocument.example.json
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.ecr.RepositoryPolicy;
/// import com.pulumi.aws.ecr.RepositoryPolicyArgs;
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
///         var exampleRepository = new Repository("exampleRepository", RepositoryArgs.builder()
///             .name("example-repo")
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("123456789012")
///                     .build())
///                 .sid("new policy")
///                 .effect("Allow")
///                 .actions(
///                     "ecr:GetDownloadUrlForLayer",
///                     "ecr:BatchGetImage",
///                     "ecr:BatchCheckLayerAvailability",
///                     "ecr:PutImage",
///                     "ecr:InitiateLayerUpload",
///                     "ecr:UploadLayerPart",
///                     "ecr:CompleteLayerUpload",
///                     "ecr:DescribeRepositories",
///                     "ecr:GetRepositoryPolicy",
///                     "ecr:ListImages",
///                     "ecr:DeleteRepository",
///                     "ecr:BatchDeleteImage",
///                     "ecr:SetRepositoryPolicy",
///                     "ecr:DeleteRepositoryPolicy")
///                 .build())
///             .build());
///
///         var exampleRepositoryPolicy = new RepositoryPolicy("exampleRepositoryPolicy", RepositoryPolicyArgs.builder()
///             .repository(exampleRepository.name())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRepository:
///     type: aws:ecr:Repository
///     name: example
///     properties:
///       name: example-repo
///   exampleRepositoryPolicy:
///     type: aws:ecr:RepositoryPolicy
///     name: example
///     properties:
///       repository: ${exampleRepository.name}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - '123456789012'
///             sid: new policy
///             effect: Allow
///             actions:
///               - ecr:GetDownloadUrlForLayer
///               - ecr:BatchGetImage
///               - ecr:BatchCheckLayerAvailability
///               - ecr:PutImage
///               - ecr:InitiateLayerUpload
///               - ecr:UploadLayerPart
///               - ecr:CompleteLayerUpload
///               - ecr:DescribeRepositories
///               - ecr:GetRepositoryPolicy
///               - ecr:ListImages
///               - ecr:DeleteRepository
///               - ecr:BatchDeleteImage
///               - ecr:SetRepositoryPolicy
///               - ecr:DeleteRepositoryPolicy
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `repository` - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Repository Policy using the repository name. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/repositoryPolicy:RepositoryPolicy example example
/// ```
class RepositoryPolicy extends pulumi.CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;
  /// Name of the repository to apply the policy.
  late final pulumi.Output<String> repository;

  /// Creates a new [RepositoryPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryPolicy]. {@macro pulumi_ecr_repository_policy_repository_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryPolicy(
    String name, {
    RepositoryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repositoryPolicy:RepositoryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repository = registerOutput<String>('repository');
  }

  /// Gets an existing [RepositoryPolicy] resource's state with the given [name] and [id].
  static RepositoryPolicy get(
    String name,
    pulumi.Input<String> id, {
    RepositoryPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RepositoryPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RepositoryPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repositoryPolicy:RepositoryPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repository = registerOutput<String>('repository');
  }

  /// Creates a typed reference to an existing [RepositoryPolicy] resource.
  RepositoryPolicy.reference(String urn)
    : super(
        'aws:ecr/repositoryPolicy:RepositoryPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repository = registerOutput<String>('repository');
  }
}
