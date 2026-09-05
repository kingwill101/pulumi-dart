import 'package:pulumi/pulumi.dart' as pulumi;
import 'human_task_uiargs.dart';
import 'human_task_uistate.dart';
import 'human_task_uiui_template.dart';

/// Provides a SageMaker AI Human Task UI resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.sagemaker.HumanTaskUI("example", {
///     uiTemplate: {
///         content: std.file({
///             input: "sagemaker-human-task-ui-template.html",
///         }).then(invoke => invoke.result),
///     },
///     humanTaskUiName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.sagemaker.HumanTaskUI("example",
///     ui_template={
///         "content": std.file(input="sagemaker-human-task-ui-template.html").result,
///     },
///     human_task_ui_name="example")
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
///     var example = new Aws.Sagemaker.HumanTaskUI("example", new()
///     {
///         UiTemplate = new Aws.Sagemaker.Inputs.HumanTaskUIUiTemplateArgs
///         {
///             Content = Std.File.Invoke(new()
///             {
///                 Input = "sagemaker-human-task-ui-template.html",
///             }).Apply(invoke => invoke.Result),
///         },
///         HumanTaskUiName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "sagemaker-human-task-ui-template.html",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewHumanTaskUI(ctx, "example", &sagemaker.HumanTaskUIArgs{
/// 			UiTemplate: &sagemaker.HumanTaskUIUiTemplateArgs{
/// 				Content: pulumi.String(invokeFile.Result),
/// 			},
/// 			HumanTaskUiName: pulumi.String("example"),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_sagemaker_humantaskui" "example" {
///   ui_template = {
///     content = file("sagemaker-human-task-ui-template.html")
///   }
///   human_task_ui_name = "example"
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
///         var example = new HumanTaskUI("example", HumanTaskUIArgs.builder()
///             .uiTemplate(HumanTaskUIUiTemplateArgs.builder()
///                 .content(StdFunctions.file(FileArgs.builder()
///                     .input("sagemaker-human-task-ui-template.html")
///                     .build()).result())
///                 .build())
///             .humanTaskUiName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:HumanTaskUI
///     properties:
///       uiTemplate:
///         content:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: sagemaker-human-task-ui-template.html
///             return: result
///       humanTaskUiName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Human Task UIs using the `humanTaskUiName`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/humanTaskUI:HumanTaskUI example example
/// ```
class HumanTaskUI extends pulumi.CustomResource {
  /// ARN assigned by AWS to this Human Task UI.
  late final pulumi.Output<String> arn;
  /// The name of the Human Task UI.
  late final pulumi.Output<String> humanTaskUiName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The Liquid template for the worker user interface. See UI Template below.
  late final pulumi.Output<HumanTaskUIUiTemplate> uiTemplate;

  /// Creates a new [HumanTaskUI].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HumanTaskUI]. {@macro pulumi_sagemaker_human_task_ui_human_task_uiargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  HumanTaskUI(
    String name, {
    HumanTaskUIArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/humanTaskUI:HumanTaskUI',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    humanTaskUiName = registerOutput<String>('humanTaskUiName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uiTemplate = registerOutput<HumanTaskUIUiTemplate>('uiTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HumanTaskUIUiTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [HumanTaskUI] resource's state with the given [name] and [id].
  static HumanTaskUI get(
    String name,
    pulumi.Input<String> id, {
    HumanTaskUIState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HumanTaskUI._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HumanTaskUI._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/humanTaskUI:HumanTaskUI',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    humanTaskUiName = registerOutput<String>('humanTaskUiName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uiTemplate = registerOutput<HumanTaskUIUiTemplate>('uiTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HumanTaskUIUiTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [HumanTaskUI] resource.
  HumanTaskUI.reference(String urn)
    : super(
        'aws:sagemaker/humanTaskUI:HumanTaskUI',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    humanTaskUiName = registerOutput<String>('humanTaskUiName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uiTemplate = registerOutput<HumanTaskUIUiTemplate>('uiTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HumanTaskUIUiTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
