import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_creation_template_args.dart';
import 'repository_creation_template_state.dart';

/// Provides an Elastic Container Registry Repository Creation Template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "new policy",
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: ["123456789012"],
///         }],
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
/// const exampleRepositoryCreationTemplate = new aws.ecr.RepositoryCreationTemplate("example", {
///     prefix: "example",
///     description: "An example template",
///     imageTagMutability: "IMMUTABLE",
///     customRoleArn: "arn:aws:iam::123456789012:role/example",
///     appliedFors: ["PULL_THROUGH_CACHE"],
///     encryptionConfigurations: [{
///         encryptionType: "AES256",
///     }],
///     repositoryPolicy: example.then(example => example.json),
///     lifecyclePolicy: `{
///   \\"rules\\": [
///     {
///       \\"rulePriority\\": 1,
///       \\"description\\": \\"Expire images older than 14 days\\",
///       \\"selection\\": {
///         \\"tagStatus\\": \\"untagged\\",
///         \\"countType\\": \\"sinceImagePushed\\",
///         \\"countUnit\\": \\"days\\",
///         \\"countNumber\\": 14
///       },
///       \\"action\\": {
///         \\"type\\": \\"expire\\"
///       }
///     }
///   ]
/// }
/// `,
///     resourceTags: {
///         Foo: "Bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{
///     "sid": "new policy",
///     "effect": "Allow",
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["123456789012"],
///     }],
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
/// example_repository_creation_template = aws.ecr.RepositoryCreationTemplate("example",
///     prefix="example",
///     description="An example template",
///     image_tag_mutability="IMMUTABLE",
///     custom_role_arn="arn:aws:iam::123456789012:role/example",
///     applied_fors=["PULL_THROUGH_CACHE"],
///     encryption_configurations=[{
///         "encryption_type": "AES256",
///     }],
///     repository_policy=example.json,
///     lifecycle_policy="""{
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Expire images older than 14 days\",
///       \"selection\": {
///         \"tagStatus\": \"untagged\",
///         \"countType\": \"sinceImagePushed\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 14
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
/// """,
///     resource_tags={
///         "Foo": "Bar",
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
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "new policy",
///                 Effect = "Allow",
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
///     var exampleRepositoryCreationTemplate = new Aws.Ecr.RepositoryCreationTemplate("example", new()
///     {
///         Prefix = "example",
///         Description = "An example template",
///         ImageTagMutability = "IMMUTABLE",
///         CustomRoleArn = "arn:aws:iam::123456789012:role/example",
///         AppliedFors = new[]
///         {
///             "PULL_THROUGH_CACHE",
///         },
///         EncryptionConfigurations = new[]
///         {
///             new Aws.Ecr.Inputs.RepositoryCreationTemplateEncryptionConfigurationArgs
///             {
///                 EncryptionType = "AES256",
///             },
///         },
///         RepositoryPolicy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         LifecyclePolicy = @"{
///   \""rules\"": [
///     {
///       \""rulePriority\"": 1,
///       \""description\"": \""Expire images older than 14 days\"",
///       \""selection\"": {
///         \""tagStatus\"": \""untagged\"",
///         \""countType\"": \""sinceImagePushed\"",
///         \""countUnit\"": \""days\"",
///         \""countNumber\"": 14
///       },
///       \""action\"": {
///         \""type\"": \""expire\""
///       }
///     }
///   ]
/// }
/// ",
///         ResourceTags =
///         {
///             { "Foo", "Bar" },
///         },
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
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("new policy"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"123456789012",
/// 							},
/// 						},
/// 					},
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
/// 		_, err = ecr.NewRepositoryCreationTemplate(ctx, "example", &ecr.RepositoryCreationTemplateArgs{
/// 			Prefix:             pulumi.String("example"),
/// 			Description:        pulumi.String("An example template"),
/// 			ImageTagMutability: pulumi.String("IMMUTABLE"),
/// 			CustomRoleArn:      pulumi.String("arn:aws:iam::123456789012:role/example"),
/// 			AppliedFors: pulumi.StringArray{
/// 				pulumi.String("PULL_THROUGH_CACHE"),
/// 			},
/// 			EncryptionConfigurations: ecr.RepositoryCreationTemplateEncryptionConfigurationArray{
/// 				&ecr.RepositoryCreationTemplateEncryptionConfigurationArgs{
/// 					EncryptionType: pulumi.String("AES256"),
/// 				},
/// 			},
/// 			RepositoryPolicy: pulumi.String(example.Json),
/// 			LifecyclePolicy: pulumi.String(`{
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Expire images older than 14 days\",
///       \"selection\": {
///         \"tagStatus\": \"untagged\",
///         \"countType\": \"sinceImagePushed\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 14
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
/// `),
/// 			ResourceTags: pulumi.StringMap{
/// 				"Foo": pulumi.String("Bar"),
/// 			},
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
///     sid    = "new policy"
///     effect = "Allow"
///     principals {
///       type        = "AWS"
///       identifiers = ["123456789012"]
///     }
///     actions = ["ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:BatchCheckLayerAvailability", "ecr:PutImage", "ecr:InitiateLayerUpload", "ecr:UploadLayerPart", "ecr:CompleteLayerUpload", "ecr:DescribeRepositories", "ecr:GetRepositoryPolicy", "ecr:ListImages", "ecr:DeleteRepository", "ecr:BatchDeleteImage", "ecr:SetRepositoryPolicy", "ecr:DeleteRepositoryPolicy"]
///   }
/// }
///
/// resource "aws_ecr_repositorycreationtemplate" "example" {
///   prefix               = "example"
///   description          = "An example template"
///   image_tag_mutability = "IMMUTABLE"
///   custom_role_arn      = "arn:aws:iam::123456789012:role/example"
///   applied_fors         = ["PULL_THROUGH_CACHE"]
///   encryption_configurations {
///     encryption_type = "AES256"
///   }
///   repository_policy = data.aws_iam_getpolicydocument.example.json
///   lifecycle_policy  = "{\n  \\\"rules\\\": [\n    {\n      \\\"rulePriority\\\": 1,\n      \\\"description\\\": \\\"Expire images older than 14 days\\\",\n      \\\"selection\\\": {\n        \\\"tagStatus\\\": \\\"untagged\\\",\n        \\\"countType\\\": \\\"sinceImagePushed\\\",\n        \\\"countUnit\\\": \\\"days\\\",\n        \\\"countNumber\\\": 14\n      },\n      \\\"action\\\": {\n        \\\"type\\\": \\\"expire\\\"\n      }\n    }\n  ]\n}\n"
///   resource_tags = {
///     "Foo" = "Bar"
///   }
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
/// import com.pulumi.aws.ecr.RepositoryCreationTemplate;
/// import com.pulumi.aws.ecr.RepositoryCreationTemplateArgs;
/// import com.pulumi.aws.ecr.inputs.RepositoryCreationTemplateEncryptionConfigurationArgs;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("new policy")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("123456789012")
///                     .build())
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
///         var exampleRepositoryCreationTemplate = new RepositoryCreationTemplate("exampleRepositoryCreationTemplate", RepositoryCreationTemplateArgs.builder()
///             .prefix("example")
///             .description("An example template")
///             .imageTagMutability("IMMUTABLE")
///             .customRoleArn("arn:aws:iam::123456789012:role/example")
///             .appliedFors("PULL_THROUGH_CACHE")
///             .encryptionConfigurations(RepositoryCreationTemplateEncryptionConfigurationArgs.builder()
///                 .encryptionType("AES256")
///                 .build())
///             .repositoryPolicy(example.json())
///             .lifecyclePolicy("""
/// {
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Expire images older than 14 days\",
///       \"selection\": {
///         \"tagStatus\": \"untagged\",
///         \"countType\": \"sinceImagePushed\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 14
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
///             """)
///             .resourceTags(Map.of("Foo", "Bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRepositoryCreationTemplate:
///     type: aws:ecr:RepositoryCreationTemplate
///     name: example
///     properties:
///       prefix: example
///       description: An example template
///       imageTagMutability: IMMUTABLE
///       customRoleArn: arn:aws:iam::123456789012:role/example
///       appliedFors:
///         - PULL_THROUGH_CACHE
///       encryptionConfigurations:
///         - encryptionType: AES256
///       repositoryPolicy: ${example.json}
///       lifecyclePolicy: |
///         {
///           \"rules\": [
///             {
///               \"rulePriority\": 1,
///               \"description\": \"Expire images older than 14 days\",
///               \"selection\": {
///                 \"tagStatus\": \"untagged\",
///                 \"countType\": \"sinceImagePushed\",
///                 \"countUnit\": \"days\",
///                 \"countNumber\": 14
///               },
///               \"action\": {
///                 \"type\": \"expire\"
///               }
///             }
///           ]
///         }
///       resourceTags:
///         Foo: Bar
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: new policy
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '123456789012'
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
/// Using `pulumi import`, import the ECR Repository Creating Templates using the `prefix`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/repositoryCreationTemplate:RepositoryCreationTemplate example example
/// ```
class RepositoryCreationTemplate extends pulumi.CustomResource {
  /// Which features this template applies to. Must contain one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  late final pulumi.Output<List<String>> appliedFors;
  /// A custom IAM role to use for repository creation. Required if using repository tags or KMS encryption.
  late final pulumi.Output<String?> customRoleArn;
  /// The description for this template.
  late final pulumi.Output<String?> description;
  /// Encryption configuration for any created repositories. See below for schema.
  late final pulumi.Output<List<Map<String, dynamic>>?> encryptionConfigurations;
  /// The tag mutability setting for any created repositories. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  late final pulumi.Output<String?> imageTagMutability;
  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `imageTagMutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  late final pulumi.Output<List<Map<String, dynamic>>?> imageTagMutabilityExclusionFilters;
  /// The lifecycle policy document to apply to any created repositories. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` dataSource to generate/manage the JSON document used for the `lifecyclePolicy` argument.
  late final pulumi.Output<String?> lifecyclePolicy;
  /// The repository name prefix to match against. Use `ROOT` to match any prefix that doesn't explicitly match another template.
  late final pulumi.Output<String> prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The registry ID the repository creation template applies to.
  late final pulumi.Output<String> registryId;
  /// The registry policy document to apply to any created repositories. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  late final pulumi.Output<String?> repositoryPolicy;
  /// A map of tags to assign to any created repositories.
  late final pulumi.Output<Map<String, String>?> resourceTags;

  /// Creates a new [RepositoryCreationTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryCreationTemplate]. {@macro pulumi_ecr_repository_creation_template_repository_creation_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryCreationTemplate(
    String name, {
    RepositoryCreationTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repositoryCreationTemplate:RepositoryCreationTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appliedFors = registerOutput<List<String>>('appliedFors');
    customRoleArn = registerOutput<String?>('customRoleArn');
    description = registerOutput<String?>('description');
    encryptionConfigurations = registerOutput<List<Map<String, dynamic>>?>('encryptionConfigurations');
    imageTagMutability = registerOutput<String?>('imageTagMutability');
    imageTagMutabilityExclusionFilters = registerOutput<List<Map<String, dynamic>>?>('imageTagMutabilityExclusionFilters');
    lifecyclePolicy = registerOutput<String?>('lifecyclePolicy');
    prefix = registerOutput<String>('prefix');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repositoryPolicy = registerOutput<String?>('repositoryPolicy');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags');
  }

  /// Gets an existing [RepositoryCreationTemplate] resource's state with the given [name] and [id].
  static RepositoryCreationTemplate get(
    String name,
    pulumi.Input<String> id, {
    RepositoryCreationTemplateState? state,
  }) {
    return RepositoryCreationTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RepositoryCreationTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repositoryCreationTemplate:RepositoryCreationTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appliedFors = registerOutput<List<String>>('appliedFors');
    customRoleArn = registerOutput<String?>('customRoleArn');
    description = registerOutput<String?>('description');
    encryptionConfigurations = registerOutput<List<Map<String, dynamic>>?>('encryptionConfigurations');
    imageTagMutability = registerOutput<String?>('imageTagMutability');
    imageTagMutabilityExclusionFilters = registerOutput<List<Map<String, dynamic>>?>('imageTagMutabilityExclusionFilters');
    lifecyclePolicy = registerOutput<String?>('lifecyclePolicy');
    prefix = registerOutput<String>('prefix');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repositoryPolicy = registerOutput<String?>('repositoryPolicy');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags');
  }
}
