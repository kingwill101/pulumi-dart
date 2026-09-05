import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_image_config_args.dart';
import 'app_image_config_code_editor_app_image_config.dart';
import 'app_image_config_jupyter_lab_image_config.dart';
import 'app_image_config_kernel_gateway_image_config.dart';
import 'app_image_config_state.dart';

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
///     kernelGatewayImageConfig: {
///         kernelSpecs: [{
///             name: "example",
///         }],
///     },
///     appImageConfigName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.AppImageConfig("test",
///     kernel_gateway_image_config={
///         "kernel_specs": [{
///             "name": "example",
///         }],
///     },
///     app_image_config_name="example")
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
///         AppImageConfigName = "example",
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
/// 			KernelGatewayImageConfig: &sagemaker.AppImageConfigKernelGatewayImageConfigArgs{
/// 				KernelSpecs: sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArray{
/// 					&sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArgs{
/// 						Name: pulumi.String("example"),
/// 					},
/// 				},
/// 			},
/// 			AppImageConfigName: pulumi.String("example"),
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
/// resource "aws_sagemaker_appimageconfig" "test" {
///   kernel_gateway_image_config = {
///     kernel_specs = [{
///       "name" = "example"
///     }]
///   }
///   app_image_config_name = "example"
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
/// import com.pulumi.aws.sagemaker.inputs.AppImageConfigKernelGatewayImageConfigKernelSpecArgs;
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
///         var test = new AppImageConfig("test", AppImageConfigArgs.builder()
///             .kernelGatewayImageConfig(AppImageConfigKernelGatewayImageConfigArgs.builder()
///                 .kernelSpecs(AppImageConfigKernelGatewayImageConfigKernelSpecArgs.builder()
///                     .name("example")
///                     .build())
///                 .build())
///             .appImageConfigName("example")
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
///       kernelGatewayImageConfig:
///         kernelSpecs:
///           - name: example
///       appImageConfigName: example
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
///     codeEditorAppImageConfig: {},
///     appImageConfigName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.AppImageConfig("test",
///     code_editor_app_image_config={},
///     app_image_config_name="example")
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
///         CodeEditorAppImageConfig = null,
///         AppImageConfigName = "example",
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
/// 			CodeEditorAppImageConfig: &sagemaker.AppImageConfigCodeEditorAppImageConfigArgs{},
/// 			AppImageConfigName:       pulumi.String("example"),
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
/// resource "aws_sagemaker_appimageconfig" "test" {
///   code_editor_app_image_config = {}
///   app_image_config_name        = "example"
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
///         var test = new AppImageConfig("test", AppImageConfigArgs.builder()
///             .codeEditorAppImageConfig(AppImageConfigCodeEditorAppImageConfigArgs.builder()
///                 .build())
///             .appImageConfigName("example")
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
///       codeEditorAppImageConfig: {}
///       appImageConfigName: example
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
///     kernelGatewayImageConfig: {
///         fileSystemConfig: {},
///         kernelSpecs: [{
///             name: "example",
///         }],
///     },
///     appImageConfigName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.AppImageConfig("test",
///     kernel_gateway_image_config={
///         "file_system_config": {},
///         "kernel_specs": [{
///             "name": "example",
///         }],
///     },
///     app_image_config_name="example")
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
///         KernelGatewayImageConfig = new Aws.Sagemaker.Inputs.AppImageConfigKernelGatewayImageConfigArgs
///         {
///             FileSystemConfig = null,
///             KernelSpecs = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AppImageConfigKernelGatewayImageConfigKernelSpecArgs
///                 {
///                     Name = "example",
///                 },
///             },
///         },
///         AppImageConfigName = "example",
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
/// 			KernelGatewayImageConfig: &sagemaker.AppImageConfigKernelGatewayImageConfigArgs{
/// 				FileSystemConfig: &sagemaker.AppImageConfigKernelGatewayImageConfigFileSystemConfigArgs{},
/// 				KernelSpecs: sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArray{
/// 					&sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArgs{
/// 						Name: pulumi.String("example"),
/// 					},
/// 				},
/// 			},
/// 			AppImageConfigName: pulumi.String("example"),
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
/// resource "aws_sagemaker_appimageconfig" "test" {
///   kernel_gateway_image_config = {
///     file_system_config = {}
///     kernel_specs = [{
///       "name" = "example"
///     }]
///   }
///   app_image_config_name = "example"
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
/// import com.pulumi.aws.sagemaker.inputs.AppImageConfigKernelGatewayImageConfigKernelSpecArgs;
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
///         var test = new AppImageConfig("test", AppImageConfigArgs.builder()
///             .kernelGatewayImageConfig(AppImageConfigKernelGatewayImageConfigArgs.builder()
///                 .fileSystemConfig(AppImageConfigKernelGatewayImageConfigFileSystemConfigArgs.builder()
///                     .build())
///                 .kernelSpecs(AppImageConfigKernelGatewayImageConfigKernelSpecArgs.builder()
///                     .name("example")
///                     .build())
///                 .build())
///             .appImageConfigName("example")
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
///       kernelGatewayImageConfig:
///         fileSystemConfig: {}
///         kernelSpecs:
///           - name: example
///       appImageConfigName: example
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
  /// ARN assigned by AWS to this App Image Config.
  late final pulumi.Output<String> arn;
  /// The CodeEditorAppImageConfig. See Code Editor App Image Config details below.
  late final pulumi.Output<AppImageConfigCodeEditorAppImageConfig?> codeEditorAppImageConfig;
  /// The JupyterLabAppImageConfig. See Jupyter Lab Image Config details below.
  late final pulumi.Output<AppImageConfigJupyterLabImageConfig?> jupyterLabImageConfig;
  /// The configuration for the file system and kernels in a SageMaker AI image running as a KernelGateway app. See Kernel Gateway Image Config details below.
  late final pulumi.Output<AppImageConfigKernelGatewayImageConfig?> kernelGatewayImageConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **NOTE:** Exactly one of `codeEditorAppImageConfig`, `jupyterLabImageConfig`, or `kernelGatewayImageConfig` must be configured. Empty blocks (e.g., `codeEditorAppImageConfig {}`) are valid configurations.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    appImageConfigName = registerOutput<String>('appImageConfigName');
    arn = registerOutput<String>('arn');
    codeEditorAppImageConfig = registerOutput<AppImageConfigCodeEditorAppImageConfig?>('codeEditorAppImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigCodeEditorAppImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jupyterLabImageConfig = registerOutput<AppImageConfigJupyterLabImageConfig?>('jupyterLabImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigJupyterLabImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kernelGatewayImageConfig = registerOutput<AppImageConfigKernelGatewayImageConfig?>('kernelGatewayImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigKernelGatewayImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AppImageConfig] resource's state with the given [name] and [id].
  static AppImageConfig get(
    String name,
    pulumi.Input<String> id, {
    AppImageConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppImageConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppImageConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/appImageConfig:AppImageConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appImageConfigName = registerOutput<String>('appImageConfigName');
    arn = registerOutput<String>('arn');
    codeEditorAppImageConfig = registerOutput<AppImageConfigCodeEditorAppImageConfig?>('codeEditorAppImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigCodeEditorAppImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jupyterLabImageConfig = registerOutput<AppImageConfigJupyterLabImageConfig?>('jupyterLabImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigJupyterLabImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kernelGatewayImageConfig = registerOutput<AppImageConfigKernelGatewayImageConfig?>('kernelGatewayImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigKernelGatewayImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AppImageConfig] resource.
  AppImageConfig.reference(String urn)
    : super(
        'aws:sagemaker/appImageConfig:AppImageConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appImageConfigName = registerOutput<String>('appImageConfigName');
    arn = registerOutput<String>('arn');
    codeEditorAppImageConfig = registerOutput<AppImageConfigCodeEditorAppImageConfig?>('codeEditorAppImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigCodeEditorAppImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jupyterLabImageConfig = registerOutput<AppImageConfigJupyterLabImageConfig?>('jupyterLabImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigJupyterLabImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kernelGatewayImageConfig = registerOutput<AppImageConfigKernelGatewayImageConfig?>('kernelGatewayImageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppImageConfigKernelGatewayImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
