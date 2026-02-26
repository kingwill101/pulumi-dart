import 'package:pulumi/pulumi.dart';
import '../human_task_uiui_template/human_task_uiui_template.dart';
import 'human_task_uiargs.dart';

/// Provides a SageMaker AI Human Task UI resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.sagemaker.HumanTaskUI("example", {
/// humanTaskUiName: "example",
/// uiTemplate: {
/// content: std.file({
/// input: "sagemaker-human-task-ui-template.html",
/// }).then(invoke => invoke.result),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.sagemaker.HumanTaskUI("example",
/// human_task_ui_name="example",
/// ui_template={
/// "content": std.file(input="sagemaker-human-task-ui-template.html").result,
/// })
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
/// var example = new Aws.Sagemaker.HumanTaskUI("example", new()
/// {
/// HumanTaskUiName = "example",
/// UiTemplate = new Aws.Sagemaker.Inputs.HumanTaskUIUiTemplateArgs
/// {
/// Content = Std.File.Invoke(new()
/// {
/// Input = "sagemaker-human-task-ui-template.html",
/// }).Apply(invoke => invoke.Result),
/// },
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
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "sagemaker-human-task-ui-template.html",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = sagemaker.NewHumanTaskUI(ctx, "example", &sagemaker.HumanTaskUIArgs{
/// HumanTaskUiName: pulumi.String("example"),
/// UiTemplate: &sagemaker.HumanTaskUIUiTemplateArgs{
/// Content: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.aws.sagemaker.HumanTaskUI;
/// import com.pulumi.aws.sagemaker.HumanTaskUIArgs;
/// import com.pulumi.aws.sagemaker.inputs.HumanTaskUIUiTemplateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var example = new HumanTaskUI("example", HumanTaskUIArgs.builder()
/// .humanTaskUiName("example")
/// .uiTemplate(HumanTaskUIUiTemplateArgs.builder()
/// .content(StdFunctions.file(FileArgs.builder()
/// .input("sagemaker-human-task-ui-template.html")
/// .build()).result())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:HumanTaskUI
/// properties:
/// humanTaskUiName: example
/// uiTemplate:
/// content:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: sagemaker-human-task-ui-template.html
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Human Task UIs using the <span pulumi-lang-nodejs="`humanTaskUiName`" pulumi-lang-dotnet="`HumanTaskUiName`" pulumi-lang-go="`humanTaskUiName`" pulumi-lang-python="`human_task_ui_name`" pulumi-lang-yaml="`humanTaskUiName`" pulumi-lang-java="`humanTaskUiName`">`human_task_ui_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/humanTaskUI:HumanTaskUI example example
/// ```
class HumanTaskUI extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Human Task UI.
  late final Output<String> arn;

  /// The name of the Human Task UI.
  late final Output<String> humanTaskUiName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Liquid template for the worker user interface. See UI Template below.
  late final Output<HumanTaskUIUiTemplate> uiTemplate;

  HumanTaskUI(
    String name, {
    HumanTaskUIArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/humanTaskUI:HumanTaskUI',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.humanTaskUiName = registerOutput<String>('humanTaskUiName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uiTemplate = registerOutput<HumanTaskUIUiTemplate>('uiTemplate');
  }
}
