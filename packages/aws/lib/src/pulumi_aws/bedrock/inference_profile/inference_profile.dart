import 'package:pulumi/pulumi.dart';
import '../inference_profile_model/inference_profile_model.dart';
import '../inference_profile_model_source/inference_profile_model_source.dart';
import '../inference_profile_timeouts/inference_profile_timeouts.dart';
import 'inference_profile_args.dart';

/// Resource for managing an AWS Bedrock Inference Profile.
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
/// const current = aws.getCallerIdentity({});
/// const example = new aws.bedrock.InferenceProfile("example", {
/// name: "Claude Sonnet for Project 123",
/// description: "Profile with tag for cost allocation tracking",
/// modelSource: {
/// copyFrom: "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
/// },
/// tags: {
/// ProjectID: "123",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.bedrock.InferenceProfile("example",
/// name="Claude Sonnet for Project 123",
/// description="Profile with tag for cost allocation tracking",
/// model_source={
/// "copy_from": "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
/// },
/// tags={
/// "ProjectID": "123",
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.Bedrock.InferenceProfile("example", new()
/// {
/// Name = "Claude Sonnet for Project 123",
/// Description = "Profile with tag for cost allocation tracking",
/// ModelSource = new Aws.Bedrock.Inputs.InferenceProfileModelSourceArgs
/// {
/// CopyFrom = "arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0",
/// },
/// Tags =
/// {
/// { "ProjectID", "123" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bedrock.NewInferenceProfile(ctx, "example", &bedrock.InferenceProfileArgs{
/// Name:        pulumi.String("Claude Sonnet for Project 123"),
/// Description: pulumi.String("Profile with tag for cost allocation tracking"),
/// ModelSource: &bedrock.InferenceProfileModelSourceArgs{
/// CopyFrom: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0"),
/// },
/// Tags: pulumi.StringMap{
/// "ProjectID": pulumi.String("123"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new InferenceProfile("example", InferenceProfileArgs.builder()
/// .name("Claude Sonnet for Project 123")
/// .description("Profile with tag for cost allocation tracking")
/// .modelSource(InferenceProfileModelSourceArgs.builder()
/// .copyFrom("arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0")
/// .build())
/// .tags(Map.of("ProjectID", "123"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:InferenceProfile
/// properties:
/// name: Claude Sonnet for Project 123
/// description: Profile with tag for cost allocation tracking
/// modelSource:
/// copyFrom: arn:aws:bedrock:us-west-2::foundation-model/anthropic.claude-3-5-sonnet-20241022-v2:0
/// tags:
/// ProjectID: '123'
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock Inference Profile using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/inferenceProfile:InferenceProfile example inference_profile-id-12345678
/// ```
class InferenceProfile extends CustomResource {
  /// The Amazon Resource Name (ARN) of the inference profile.
  late final Output<String> arn;

  /// The time at which the inference profile was created.
  late final Output<String> createdAt;

  /// The description of the inference profile.
  late final Output<String?> description;

  /// The source of the model this inference profile will track metrics and cost for. See <span pulumi-lang-nodejs="`modelSource`" pulumi-lang-dotnet="`ModelSource`" pulumi-lang-go="`modelSource`" pulumi-lang-python="`model_source`" pulumi-lang-yaml="`modelSource`" pulumi-lang-java="`modelSource`">`model_source`</span>.
  ///
  /// The following arguments are optional:
  late final Output<InferenceProfileModelSource?> modelSource;

  /// A list of information about each model in the inference profile. See <span pulumi-lang-nodejs="`models`" pulumi-lang-dotnet="`Models`" pulumi-lang-go="`models`" pulumi-lang-python="`models`" pulumi-lang-yaml="`models`" pulumi-lang-java="`models`">`models`</span>.
  late final Output<List<InferenceProfileModel>> models;

  /// The name of the inference profile.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of the inference profile. `ACTIVE` means that the inference profile is available to use.
  late final Output<String> status;

  /// Key-value mapping of resource tags for the inference profile.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<InferenceProfileTimeouts?> timeouts;

  /// The type of the inference profile. `SYSTEM_DEFINED` means that the inference profile is defined by Amazon Bedrock. `APPLICATION` means that the inference profile is defined by the user.
  late final Output<String> type;

  /// The time at which the inference profile was last updated.
  late final Output<String> updatedAt;

  InferenceProfile(
    String name, {
    InferenceProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/inferenceProfile:InferenceProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.modelSource = Output.createUnknown<InferenceProfileModelSource?>();
    this.models = Output.createUnknown<List<InferenceProfileModel>>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<InferenceProfileTimeouts?>();
    this.type = Output.createUnknown<String>();
    this.updatedAt = Output.createUnknown<String>();
  }
}
