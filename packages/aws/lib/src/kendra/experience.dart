import 'package:pulumi/pulumi.dart' as pulumi;
import 'experience_args.dart';
import 'experience_configuration.dart';
import 'experience_endpoint.dart';

/// Resource for managing an AWS Kendra Experience.
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
/// const example = new aws.kendra.Experience("example", {
///     indexId: exampleAwsKendraIndex.id,
///     description: "My Kendra Experience",
///     name: "example",
///     roleArn: exampleAwsIamRole.arn,
///     configuration: {
///         contentSourceConfiguration: {
///             directPutContent: true,
///             faqIds: [exampleAwsKendraFaq.faqId],
///         },
///         userIdentityConfiguration: {
///             identityAttributeName: "12345ec453-1546651e-79c4-4554-91fa-00b43ccfa245",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.Experience("example",
///     index_id=example_aws_kendra_index["id"],
///     description="My Kendra Experience",
///     name="example",
///     role_arn=example_aws_iam_role["arn"],
///     configuration={
///         "content_source_configuration": {
///             "direct_put_content": True,
///             "faq_ids": [example_aws_kendra_faq["faqId"]],
///         },
///         "user_identity_configuration": {
///             "identity_attribute_name": "12345ec453-1546651e-79c4-4554-91fa-00b43ccfa245",
///         },
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
///     var example = new Aws.Kendra.Experience("example", new()
///     {
///         IndexId = exampleAwsKendraIndex.Id,
///         Description = "My Kendra Experience",
///         Name = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         Configuration = new Aws.Kendra.Inputs.ExperienceConfigurationArgs
///         {
///             ContentSourceConfiguration = new Aws.Kendra.Inputs.ExperienceConfigurationContentSourceConfigurationArgs
///             {
///                 DirectPutContent = true,
///                 FaqIds = new[]
///                 {
///                     exampleAwsKendraFaq.FaqId,
///                 },
///             },
///             UserIdentityConfiguration = new Aws.Kendra.Inputs.ExperienceConfigurationUserIdentityConfigurationArgs
///             {
///                 IdentityAttributeName = "12345ec453-1546651e-79c4-4554-91fa-00b43ccfa245",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewExperience(ctx, "example", &kendra.ExperienceArgs{
/// 			IndexId:     pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Description: pulumi.String("My Kendra Experience"),
/// 			Name:        pulumi.String("example"),
/// 			RoleArn:     pulumi.Any(exampleAwsIamRole.Arn),
/// 			Configuration: &kendra.ExperienceConfigurationArgs{
/// 				ContentSourceConfiguration: &kendra.ExperienceConfigurationContentSourceConfigurationArgs{
/// 					DirectPutContent: pulumi.Bool(true),
/// 					FaqIds: pulumi.StringArray{
/// 						exampleAwsKendraFaq.FaqId,
/// 					},
/// 				},
/// 				UserIdentityConfiguration: &kendra.ExperienceConfigurationUserIdentityConfigurationArgs{
/// 					IdentityAttributeName: pulumi.String("12345ec453-1546651e-79c4-4554-91fa-00b43ccfa245"),
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
/// import com.pulumi.aws.kendra.Experience;
/// import com.pulumi.aws.kendra.ExperienceArgs;
/// import com.pulumi.aws.kendra.inputs.ExperienceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.ExperienceConfigurationContentSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.ExperienceConfigurationUserIdentityConfigurationArgs;
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
///         var example = new Experience("example", ExperienceArgs.builder()
///             .indexId(exampleAwsKendraIndex.id())
///             .description("My Kendra Experience")
///             .name("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .configuration(ExperienceConfigurationArgs.builder()
///                 .contentSourceConfiguration(ExperienceConfigurationContentSourceConfigurationArgs.builder()
///                     .directPutContent(true)
///                     .faqIds(exampleAwsKendraFaq.faqId())
///                     .build())
///                 .userIdentityConfiguration(ExperienceConfigurationUserIdentityConfigurationArgs.builder()
///                     .identityAttributeName("12345ec453-1546651e-79c4-4554-91fa-00b43ccfa245")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:Experience
///     properties:
///       indexId: ${exampleAwsKendraIndex.id}
///       description: My Kendra Experience
///       name: example
///       roleArn: ${exampleAwsIamRole.arn}
///       configuration:
///         contentSourceConfiguration:
///           directPutContent: true
///           faqIds:
///             - ${exampleAwsKendraFaq.faqId}
///         userIdentityConfiguration:
///           identityAttributeName: 12345ec453-1546651e-79c4-4554-91fa-00b43ccfa245
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Kendra Experience using the unique identifiers of the experience and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/experience:Experience example 1045d08d-66ef-4882-b3ed-dfb7df183e90/b34dfdf7-1f2b-4704-9581-79e00296845f
/// ```
class Experience extends pulumi.CustomResource {
  /// ARN of the Experience.
  late final pulumi.Output<String> arn;

  /// Configuration information for your Amazon Kendra experience. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  ///
  /// > **NOTE:** By default of the AWS Kendra API, updates to an existing `aws.kendra.Experience` resource (e.g. updating the `name`) will also update the `configuration.content_source_configuration.direct_put_content` parameter to `false` if not already provided.
  late final pulumi.Output<ExperienceConfiguration> configuration;

  /// A description for your Amazon Kendra experience.
  late final pulumi.Output<String?> description;

  /// Shows the endpoint URLs for your Amazon Kendra experiences. The URLs are unique and fully hosted by AWS.
  late final pulumi.Output<List<ExperienceEndpoint>> endpoints;

  /// The unique identifier of the experience.
  late final pulumi.Output<String> experienceId;

  /// The identifier of the index for your Amazon Kendra experience.
  late final pulumi.Output<String> indexId;

  /// A name for your Amazon Kendra experience.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of a role with permission to access `Query API`, `QuerySuggestions API`, `SubmitFeedback API`, and `AWS SSO` that stores your user and group information. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;

  /// The current processing status of your Amazon Kendra experience.
  late final pulumi.Output<String> status;

  /// Creates a new [Experience].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Experience]. {@macro pulumi_kendra_experience_experience_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Experience(
    String name, {
    ExperienceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:kendra/experience:Experience',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.configuration = registerOutput<ExperienceConfiguration>(
      'configuration',
    );
    this.description = registerOutput<String?>('description');
    this.endpoints = registerOutput<List<ExperienceEndpoint>>('endpoints');
    this.experienceId = registerOutput<String>('experienceId');
    this.indexId = registerOutput<String>('indexId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.status = registerOutput<String>('status');
  }
}
