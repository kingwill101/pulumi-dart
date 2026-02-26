import 'package:pulumi/pulumi.dart';
import 'studio_lifecycle_config_args.dart';

/// Provides a SageMaker AI Studio Lifecycle Config resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.sagemaker.StudioLifecycleConfig("example", {
/// studioLifecycleConfigName: "example",
/// studioLifecycleConfigAppType: "JupyterServer",
/// studioLifecycleConfigContent: std.base64encode({
/// input: "echo Hello",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.sagemaker.StudioLifecycleConfig("example",
/// studio_lifecycle_config_name="example",
/// studio_lifecycle_config_app_type="JupyterServer",
/// studio_lifecycle_config_content=std.base64encode(input="echo Hello").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.StudioLifecycleConfig("example", new()
/// {
/// StudioLifecycleConfigName = "example",
/// StudioLifecycleConfigAppType = "JupyterServer",
/// StudioLifecycleConfigContent = Std.Base64encode.Invoke(new()
/// {
/// Input = "echo Hello",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "echo Hello",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = sagemaker.NewStudioLifecycleConfig(ctx, "example", &sagemaker.StudioLifecycleConfigArgs{
/// StudioLifecycleConfigName:    pulumi.String("example"),
/// StudioLifecycleConfigAppType: pulumi.String("JupyterServer"),
/// StudioLifecycleConfigContent: pulumi.String(invokeBase64encode.Result),
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
/// import com.pulumi.aws.sagemaker.StudioLifecycleConfig;
/// import com.pulumi.aws.sagemaker.StudioLifecycleConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// var example = new StudioLifecycleConfig("example", StudioLifecycleConfigArgs.builder()
/// .studioLifecycleConfigName("example")
/// .studioLifecycleConfigAppType("JupyterServer")
/// .studioLifecycleConfigContent(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("echo Hello")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:StudioLifecycleConfig
/// properties:
/// studioLifecycleConfigName: example
/// studioLifecycleConfigAppType: JupyterServer
/// studioLifecycleConfigContent:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: echo Hello
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Studio Lifecycle Configs using the <span pulumi-lang-nodejs="`studioLifecycleConfigName`" pulumi-lang-dotnet="`StudioLifecycleConfigName`" pulumi-lang-go="`studioLifecycleConfigName`" pulumi-lang-python="`studio_lifecycle_config_name`" pulumi-lang-yaml="`studioLifecycleConfigName`" pulumi-lang-java="`studioLifecycleConfigName`">`studio_lifecycle_config_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig example example
/// ```
class StudioLifecycleConfig extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Studio Lifecycle Config.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  late final Output<String> studioLifecycleConfigAppType;

  /// The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  late final Output<String> studioLifecycleConfigContent;

  /// The name of the Studio Lifecycle Configuration to create.
  late final Output<String> studioLifecycleConfigName;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  StudioLifecycleConfig(
    String name, {
    StudioLifecycleConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.studioLifecycleConfigAppType = Output.createUnknown<String>();
    this.studioLifecycleConfigContent = Output.createUnknown<String>();
    this.studioLifecycleConfigName = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
