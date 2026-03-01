import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_profile_args.dart';
import 'inference_profile_model.dart';
import 'inference_profile_model_source.dart';
import 'inference_profile_timeouts.dart';

/// Resource for managing an AWS Bedrock Inference Profile.
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
/// const current = aws.getCallerIdentity({});
/// const example = new aws.bedrock.InferenceProfile("example", {
///     name: "Claude Sonnet for Project 123",
///     description: "Profile with tag for cost allocation tracking",
///     modelSource: {
///         copyFrom: "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
///     },
///     tags: {
///         ProjectID: "123",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.bedrock.InferenceProfile("example",
///     name="Claude Sonnet for Project 123",
///     description="Profile with tag for cost allocation tracking",
///     model_source={
///         "copy_from": "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
///     },
///     tags={
///         "ProjectID": "123",
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Bedrock.InferenceProfile("example", new()
///     {
///         Name = "Claude Sonnet for Project 123",
///         Description = "Profile with tag for cost allocation tracking",
///         ModelSource = new Aws.Bedrock.Inputs.InferenceProfileModelSourceArgs
///         {
///             CopyFrom = "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
///         },
///         Tags =
///         {
///             { "ProjectID", "123" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewInferenceProfile(ctx, "example", &bedrock.InferenceProfileArgs{
/// 			Name:        pulumi.String("Claude Sonnet for Project 123"),
/// 			Description: pulumi.String("Profile with tag for cost allocation tracking"),
/// 			ModelSource: &bedrock.InferenceProfileModelSourceArgs{
/// 				CopyFrom: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ProjectID": pulumi.String("123"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.bedrock.InferenceProfile;
/// import com.pulumi.aws.bedrock.InferenceProfileArgs;
/// import com.pulumi.aws.bedrock.inputs.InferenceProfileModelSourceArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new InferenceProfile("example", InferenceProfileArgs.builder()
///             .name("Claude Sonnet for Project 123")
///             .description("Profile with tag for cost allocation tracking")
///             .modelSource(InferenceProfileModelSourceArgs.builder()
///                 .copyFrom("arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0")
///                 .build())
///             .tags(Map.of("ProjectID", "123"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:InferenceProfile
///     properties:
///       name: Claude Sonnet for Project 123
///       description: Profile with tag for cost allocation tracking
///       modelSource:
///         copyFrom: arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0
///       tags:
///         ProjectID: '123'
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock Inference Profile using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/inferenceProfile:InferenceProfile example inference_profile-id-12345678
/// ```
class InferenceProfile extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the inference profile.
  late final pulumi.Output<String> arn;

  /// The time at which the inference profile was created.
  late final pulumi.Output<String> createdAt;

  /// The description of the inference profile.
  late final pulumi.Output<String?> description;

  /// The source of the model this inference profile will track metrics and cost for. See `model_source`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<InferenceProfileModelSource?> modelSource;

  /// A list of information about each model in the inference profile. See `models`.
  late final pulumi.Output<List<InferenceProfileModel>> models;

  /// The name of the inference profile.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  late final pulumi.Output<String> status;

  /// Key-value mapping of resource tags for the inference profile.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<InferenceProfileTimeouts?> timeouts;

  /// The type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  late final pulumi.Output<String> type;

  /// The time at which the inference profile was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [InferenceProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InferenceProfile]. {@macro pulumi_bedrock_inference_profile_inference_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InferenceProfile(
    String name, {
    InferenceProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/inferenceProfile:InferenceProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String?>('description');
    this.modelSource = registerOutput<InferenceProfileModelSource?>(
      'modelSource',
    );
    this.models = registerOutput<List<InferenceProfileModel>>('models');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<InferenceProfileTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
