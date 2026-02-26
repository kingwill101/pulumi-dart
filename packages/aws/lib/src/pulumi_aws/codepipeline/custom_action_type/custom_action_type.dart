import 'package:pulumi/pulumi.dart';
import '../custom_action_type_configuration_property/custom_action_type_configuration_property.dart';
import '../custom_action_type_input_artifact_details/custom_action_type_input_artifact_details.dart';
import '../custom_action_type_output_artifact_details/custom_action_type_output_artifact_details.dart';
import '../custom_action_type_settings/custom_action_type_settings.dart';
import 'custom_action_type_args.dart';

/// Provides a CodeDeploy CustomActionType
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codepipeline.CustomActionType("example", {
/// category: "Build",
/// inputArtifactDetails: {
/// maximumCount: 1,
/// minimumCount: 0,
/// },
/// outputArtifactDetails: {
/// maximumCount: 1,
/// minimumCount: 0,
/// },
/// providerName: "example",
/// version: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codepipeline.CustomActionType("example",
/// category="Build",
/// input_artifact_details={
/// "maximum_count": 1,
/// "minimum_count": 0,
/// },
/// output_artifact_details={
/// "maximum_count": 1,
/// "minimum_count": 0,
/// },
/// provider_name="example",
/// version="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CodePipeline.CustomActionType("example", new()
/// {
/// Category = "Build",
/// InputArtifactDetails = new Aws.CodePipeline.Inputs.CustomActionTypeInputArtifactDetailsArgs
/// {
/// MaximumCount = 1,
/// MinimumCount = 0,
/// },
/// OutputArtifactDetails = new Aws.CodePipeline.Inputs.CustomActionTypeOutputArtifactDetailsArgs
/// {
/// MaximumCount = 1,
/// MinimumCount = 0,
/// },
/// ProviderName = "example",
/// Version = "1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codepipeline"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codepipeline.NewCustomActionType(ctx, "example", &codepipeline.CustomActionTypeArgs{
/// Category: pulumi.String("Build"),
/// InputArtifactDetails: &codepipeline.CustomActionTypeInputArtifactDetailsArgs{
/// MaximumCount: pulumi.Int(1),
/// MinimumCount: pulumi.Int(0),
/// },
/// OutputArtifactDetails: &codepipeline.CustomActionTypeOutputArtifactDetailsArgs{
/// MaximumCount: pulumi.Int(1),
/// MinimumCount: pulumi.Int(0),
/// },
/// ProviderName: pulumi.String("example"),
/// Version:      pulumi.String("1"),
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
/// import com.pulumi.aws.codepipeline.CustomActionType;
/// import com.pulumi.aws.codepipeline.CustomActionTypeArgs;
/// import com.pulumi.aws.codepipeline.inputs.CustomActionTypeInputArtifactDetailsArgs;
/// import com.pulumi.aws.codepipeline.inputs.CustomActionTypeOutputArtifactDetailsArgs;
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
/// var example = new CustomActionType("example", CustomActionTypeArgs.builder()
/// .category("Build")
/// .inputArtifactDetails(CustomActionTypeInputArtifactDetailsArgs.builder()
/// .maximumCount(1)
/// .minimumCount(0)
/// .build())
/// .outputArtifactDetails(CustomActionTypeOutputArtifactDetailsArgs.builder()
/// .maximumCount(1)
/// .minimumCount(0)
/// .build())
/// .providerName("example")
/// .version("1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codepipeline:CustomActionType
/// properties:
/// category: Build
/// inputArtifactDetails:
/// maximumCount: 1
/// minimumCount: 0
/// outputArtifactDetails:
/// maximumCount: 1
/// minimumCount: 0
/// providerName: example
/// version: '1'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy CustomActionType using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:codepipeline/customActionType:CustomActionType example Build:pulumi:1
/// ```
class CustomActionType extends CustomResource {
  /// The action ARN.
  late final Output<String> arn;

  /// The category of the custom action. Valid values: `Source`, `Build`, `Deploy`, `Test`, `Invoke`, `Approval`
  late final Output<String> category;

  /// The configuration properties for the custom action. Max 10 items.
  late final Output<List<CustomActionTypeConfigurationProperty>?>
      configurationProperties;
  late final Output<CustomActionTypeInputArtifactDetails> inputArtifactDetails;
  late final Output<CustomActionTypeOutputArtifactDetails>
      outputArtifactDetails;

  /// The creator of the action being called.
  late final Output<String> owner;
  late final Output<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<CustomActionTypeSettings?> settings;
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> version;

  CustomActionType(
    String name, {
    CustomActionTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/customActionType:CustomActionType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.category = registerOutput<String>('category');
    this.configurationProperties =
        registerOutput<List<CustomActionTypeConfigurationProperty>?>(
            'configurationProperties');
    this.inputArtifactDetails =
        registerOutput<CustomActionTypeInputArtifactDetails>(
            'inputArtifactDetails');
    this.outputArtifactDetails =
        registerOutput<CustomActionTypeOutputArtifactDetails>(
            'outputArtifactDetails');
    this.owner = registerOutput<String>('owner');
    this.providerName = registerOutput<String>('providerName');
    this.region = registerOutput<String>('region');
    this.settings = registerOutput<CustomActionTypeSettings?>('settings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
  }
}
