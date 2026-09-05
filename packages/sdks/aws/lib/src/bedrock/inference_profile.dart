import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_profile_args.dart';
import 'inference_profile_model.dart';
import 'inference_profile_model_source.dart';
import 'inference_profile_state.dart';
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
///     modelSource: {
///         copyFrom: "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
///     },
///     name: "Claude Sonnet for Project 123",
///     description: "Profile with tag for cost allocation tracking",
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
///     model_source={
///         "copy_from": "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
///     },
///     name="Claude Sonnet for Project 123",
///     description="Profile with tag for cost allocation tracking",
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
///         ModelSource = new Aws.Bedrock.Inputs.InferenceProfileModelSourceArgs
///         {
///             CopyFrom = "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
///         },
///         Name = "Claude Sonnet for Project 123",
///         Description = "Profile with tag for cost allocation tracking",
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
/// 			ModelSource: &bedrock.InferenceProfileModelSourceArgs{
/// 				CopyFrom: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0"),
/// 			},
/// 			Name:        pulumi.String("Claude Sonnet for Project 123"),
/// 			Description: pulumi.String("Profile with tag for cost allocation tracking"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_bedrock_inferenceprofile" "example" {
///   model_source = {
///     copy_from = "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0"
///   }
///   name        = "Claude Sonnet for Project 123"
///   description = "Profile with tag for cost allocation tracking"
///   tags = {
///     "ProjectID" = "123"
///   }
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new InferenceProfile("example", InferenceProfileArgs.builder()
///             .modelSource(InferenceProfileModelSourceArgs.builder()
///                 .copyFrom("arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0")
///                 .build())
///             .name("Claude Sonnet for Project 123")
///             .description("Profile with tag for cost allocation tracking")
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
///       modelSource:
///         copyFrom: arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0
///       name: Claude Sonnet for Project 123
///       description: Profile with tag for cost allocation tracking
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
  /// The ARN of the inference profile.
  late final pulumi.Output<String> arn;
  /// The time at which the inference profile was created.
  late final pulumi.Output<String> createdAt;
  /// The description of the inference profile.
  late final pulumi.Output<String?> description;
  /// The source of the model this inference profile will track metrics and cost for. See `modelSource`.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    modelSource = registerOutput<InferenceProfileModelSource?>('modelSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceProfileModelSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    models = registerOutput<List<InferenceProfileModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InferenceProfileModel>(guardedValue, (value) => InferenceProfileModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<InferenceProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [InferenceProfile] resource's state with the given [name] and [id].
  static InferenceProfile get(
    String name,
    pulumi.Input<String> id, {
    InferenceProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InferenceProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InferenceProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/inferenceProfile:InferenceProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    modelSource = registerOutput<InferenceProfileModelSource?>('modelSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceProfileModelSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    models = registerOutput<List<InferenceProfileModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InferenceProfileModel>(guardedValue, (value) => InferenceProfileModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<InferenceProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [InferenceProfile] resource.
  InferenceProfile.reference(String urn)
    : super(
        'aws:bedrock/inferenceProfile:InferenceProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    modelSource = registerOutput<InferenceProfileModelSource?>('modelSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceProfileModelSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    models = registerOutput<List<InferenceProfileModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InferenceProfileModel>(guardedValue, (value) => InferenceProfileModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<InferenceProfileTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InferenceProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
