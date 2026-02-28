import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_image_config_args.dart';
import 'app_image_config_code_editor_app_image_config.dart';
import 'app_image_config_jupyter_lab_image_config.dart';
import 'app_image_config_kernel_gateway_image_config.dart';

/// Provides a SageMaker AI App Image Config resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sagemaker.AppImageConfig("test", {
///     appImageConfigName: "example",
///     kernelGatewayImageConfig: {
///         kernelSpecs: [{
///             name: "example",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.AppImageConfig("test",
///     app_image_config_name="example",
///     kernel_gateway_image_config={
///         "kernel_specs": [{
///             "name": "example",
///         }],
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
///     var test = new Aws.Sagemaker.AppImageConfig("test", new()
///     {
///         AppImageConfigName = "example",
///         KernelGatewayImageConfig = new Aws.Sagemaker.Inputs.AppImageConfigKernelGatewayImageConfigArgs
///         {
///             KernelSpecs = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AppImageConfigKernelGatewayImageConfigKernelSpecArgs
///                 {
///                     Name = "example",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewAppImageConfig(ctx, "test", &sagemaker.AppImageConfigArgs{
/// 			AppImageConfigName: pulumi.String("example"),
/// 			KernelGatewayImageConfig: &sagemaker.AppImageConfigKernelGatewayImageConfigArgs{
/// 				KernelSpecs: sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArray{
/// 					&sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArgs{
/// 						Name: pulumi.String("example"),
/// 					},
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
/// import com.pulumi.aws.sagemaker.AppImageConfig;
/// import com.pulumi.aws.sagemaker.AppImageConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AppImageConfigKernelGatewayImageConfigArgs;
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
///         var test = new AppImageConfig("test", AppImageConfigArgs.builder()
///             .appImageConfigName("example")
///             .kernelGatewayImageConfig(AppImageConfigKernelGatewayImageConfigArgs.builder()
///                 .kernelSpecs(AppImageConfigKernelGatewayImageConfigKernelSpecArgs.builder()
///                     .name("example")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:sagemaker:AppImageConfig
///     properties:
///       appImageConfigName: example
///       kernelGatewayImageConfig:
///         kernelSpecs:
///           - name: example
/// ```
///
///
/// ### Using Code Editor with empty configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sagemaker.AppImageConfig("test", {
///     appImageConfigName: "example",
///     codeEditorAppImageConfig: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.AppImageConfig("test",
///     app_image_config_name="example",
///     code_editor_app_image_config={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Sagemaker.AppImageConfig("test", new()
///     {
///         AppImageConfigName = "example",
///         CodeEditorAppImageConfig = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewAppImageConfig(ctx, "test", &sagemaker.AppImageConfigArgs{
/// 			AppImageConfigName:       pulumi.String("example"),
/// 			CodeEditorAppImageConfig: &sagemaker.AppImageConfigCodeEditorAppImageConfigArgs{},
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
/// import com.pulumi.aws.sagemaker.AppImageConfig;
/// import com.pulumi.aws.sagemaker.AppImageConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AppImageConfigCodeEditorAppImageConfigArgs;
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
///         var test = new AppImageConfig("test", AppImageConfigArgs.builder()
///             .appImageConfigName("example")
///             .codeEditorAppImageConfig(AppImageConfigCodeEditorAppImageConfigArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:sagemaker:AppImageConfig
///     properties:
///       appImageConfigName: example
///       codeEditorAppImageConfig: {}
/// ```
///
///
/// ### Default File System Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sagemaker.AppImageConfig("test", {
///     appImageConfigName: "example",
///     kernelGatewayImageConfig: {
///         kernelSpecs: [{
///             name: "example",
///         }],
///         fileSystemConfig: {},
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.AppImageConfig("test",
///     app_image_config_name="example",
///     kernel_gateway_image_config={
///         "kernel_specs": [{
///             "name": "example",
///         }],
///         "file_system_config": {},
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
///     var test = new Aws.Sagemaker.AppImageConfig("test", new()
///     {
///         AppImageConfigName = "example",
///         KernelGatewayImageConfig = new Aws.Sagemaker.Inputs.AppImageConfigKernelGatewayImageConfigArgs
///         {
///             KernelSpecs = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AppImageConfigKernelGatewayImageConfigKernelSpecArgs
///                 {
///                     Name = "example",
///                 },
///             },
///             FileSystemConfig = null,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewAppImageConfig(ctx, "test", &sagemaker.AppImageConfigArgs{
/// 			AppImageConfigName: pulumi.String("example"),
/// 			KernelGatewayImageConfig: &sagemaker.AppImageConfigKernelGatewayImageConfigArgs{
/// 				KernelSpecs: sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArray{
/// 					&sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArgs{
/// 						Name: pulumi.String("example"),
/// 					},
/// 				},
/// 				FileSystemConfig: &sagemaker.AppImageConfigKernelGatewayImageConfigFileSystemConfigArgs{},
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
/// import com.pulumi.aws.sagemaker.AppImageConfig;
/// import com.pulumi.aws.sagemaker.AppImageConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AppImageConfigKernelGatewayImageConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AppImageConfigKernelGatewayImageConfigFileSystemConfigArgs;
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
///         var test = new AppImageConfig("test", AppImageConfigArgs.builder()
///             .appImageConfigName("example")
///             .kernelGatewayImageConfig(AppImageConfigKernelGatewayImageConfigArgs.builder()
///                 .kernelSpecs(AppImageConfigKernelGatewayImageConfigKernelSpecArgs.builder()
///                     .name("example")
///                     .build())
///                 .fileSystemConfig(AppImageConfigKernelGatewayImageConfigFileSystemConfigArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:sagemaker:AppImageConfig
///     properties:
///       appImageConfigName: example
///       kernelGatewayImageConfig:
///         kernelSpecs:
///           - name: example
///         fileSystemConfig: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI App Image Configs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/appImageConfig:AppImageConfig example example
/// ```
class AppImageConfig extends pulumi.CustomResource {
  /// The name of the App Image Config.
  late final pulumi.Output<String> appImageConfigName;
  /// The Amazon Resource Name (ARN) assigned by AWS to this App Image Config.
  late final pulumi.Output<String> arn;
  /// The CodeEditorAppImageConfig. See Code Editor App Image Config details below.
  late final pulumi.Output<AppImageConfigCodeEditorAppImageConfig?> codeEditorAppImageConfig;
  /// The JupyterLabAppImageConfig. See Jupyter Lab Image Config details below.
  late final pulumi.Output<AppImageConfigJupyterLabImageConfig?> jupyterLabImageConfig;
  /// The configuration for the file system and kernels in a SageMaker AI image running as a KernelGateway app. See Kernel Gateway Image Config details below.
  late final pulumi.Output<AppImageConfigKernelGatewayImageConfig?> kernelGatewayImageConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** Exactly one of `code_editor_app_image_config`, `jupyter_lab_image_config`, or `kernel_gateway_image_config` must be configured. Empty blocks (e.g., `code_editor_app_image_config {}`) are valid configurations.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AppImageConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppImageConfig]. {@macro pulumi_sagemaker_app_image_config_app_image_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppImageConfig(
    String name, {
    AppImageConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/appImageConfig:AppImageConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appImageConfigName = registerOutput<String>('appImageConfigName');
    this.arn = registerOutput<String>('arn');
    this.codeEditorAppImageConfig = registerOutput<AppImageConfigCodeEditorAppImageConfig?>('codeEditorAppImageConfig');
    this.jupyterLabImageConfig = registerOutput<AppImageConfigJupyterLabImageConfig?>('jupyterLabImageConfig');
    this.kernelGatewayImageConfig = registerOutput<AppImageConfigKernelGatewayImageConfig?>('kernelGatewayImageConfig');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
