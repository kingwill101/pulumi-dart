import 'package:pulumi/pulumi.dart' as pulumi;
import 'studio_lifecycle_config_args.dart';
import 'studio_lifecycle_config_state.dart';

/// Provides a SageMaker AI Studio Lifecycle Config resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.sagemaker.StudioLifecycleConfig("example", {
///     studioLifecycleConfigName: "example",
///     studioLifecycleConfigAppType: "JupyterServer",
///     studioLifecycleConfigContent: std.base64encode({
///         input: "echo Hello",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.sagemaker.StudioLifecycleConfig("example",
///     studio_lifecycle_config_name="example",
///     studio_lifecycle_config_app_type="JupyterServer",
///     studio_lifecycle_config_content=std.base64encode(input="echo Hello").result)
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
///     var example = new Aws.Sagemaker.StudioLifecycleConfig("example", new()
///     {
///         StudioLifecycleConfigName = "example",
///         StudioLifecycleConfigAppType = "JupyterServer",
///         StudioLifecycleConfigContent = Std.Base64encode.Invoke(new()
///         {
///             Input = "echo Hello",
///         }).Apply(invoke => invoke.Result),
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
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "echo Hello",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewStudioLifecycleConfig(ctx, "example", &sagemaker.StudioLifecycleConfigArgs{
/// 			StudioLifecycleConfigName:    pulumi.String("example"),
/// 			StudioLifecycleConfigAppType: pulumi.String("JupyterServer"),
/// 			StudioLifecycleConfigContent: pulumi.String(invokeBase64encode.Result),
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
/// resource "aws_sagemaker_studiolifecycleconfig" "example" {
///   studio_lifecycle_config_name     = "example"
///   studio_lifecycle_config_app_type = "JupyterServer"
///   studio_lifecycle_config_content  = base64encode("echo Hello")
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
///         var example = new StudioLifecycleConfig("example", StudioLifecycleConfigArgs.builder()
///             .studioLifecycleConfigName("example")
///             .studioLifecycleConfigAppType("JupyterServer")
///             .studioLifecycleConfigContent(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input("echo Hello")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:StudioLifecycleConfig
///     properties:
///       studioLifecycleConfigName: example
///       studioLifecycleConfigAppType: JupyterServer
///       studioLifecycleConfigContent:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input: echo Hello
///           return: result
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Studio Lifecycle Configs using the `studioLifecycleConfigName`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig example example
/// ```
class StudioLifecycleConfig extends pulumi.CustomResource {
  /// The ARN assigned by AWS to this Studio Lifecycle Config.
  late final pulumi.Output<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The App type that the Lifecycle Configuration is attached to. Valid values are `JupyterServer`, `JupyterLab`, `CodeEditor` and `KernelGateway`.
  late final pulumi.Output<String> studioLifecycleConfigAppType;
  /// The content of your Studio Lifecycle Configuration script. This content must be base64 encoded.
  late final pulumi.Output<String> studioLifecycleConfigContent;
  /// The name of the Studio Lifecycle Configuration to create.
  late final pulumi.Output<String> studioLifecycleConfigName;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [StudioLifecycleConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StudioLifecycleConfig]. {@macro pulumi_sagemaker_studio_lifecycle_config_studio_lifecycle_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StudioLifecycleConfig(
    String name, {
    StudioLifecycleConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    studioLifecycleConfigAppType = registerOutput<String>('studioLifecycleConfigAppType');
    studioLifecycleConfigContent = registerOutput<String>('studioLifecycleConfigContent');
    studioLifecycleConfigName = registerOutput<String>('studioLifecycleConfigName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [StudioLifecycleConfig] resource's state with the given [name] and [id].
  static StudioLifecycleConfig get(
    String name,
    pulumi.Input<String> id, {
    StudioLifecycleConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StudioLifecycleConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StudioLifecycleConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    studioLifecycleConfigAppType = registerOutput<String>('studioLifecycleConfigAppType');
    studioLifecycleConfigContent = registerOutput<String>('studioLifecycleConfigContent');
    studioLifecycleConfigName = registerOutput<String>('studioLifecycleConfigName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [StudioLifecycleConfig] resource.
  StudioLifecycleConfig.reference(String urn)
    : super(
        'aws:sagemaker/studioLifecycleConfig:StudioLifecycleConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    studioLifecycleConfigAppType = registerOutput<String>('studioLifecycleConfigAppType');
    studioLifecycleConfigContent = registerOutput<String>('studioLifecycleConfigContent');
    studioLifecycleConfigName = registerOutput<String>('studioLifecycleConfigName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
