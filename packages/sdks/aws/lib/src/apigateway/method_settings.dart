import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_settings_args.dart';
import 'method_settings_settings.dart';
import 'method_settings_state.dart';

/// Manages API Gateway Stage Method Settings. For example, CloudWatch logging and metrics.
///
/// &gt; **NOTE:** We recommend using this resource in conjunction with the `aws.apigateway.Stage` resource instead of a stage managed by the `aws.apigateway.Deployment` resource optional `stageName` argument. Stages managed by the `aws.apigateway.Deployment` resource are recreated on redeployment and this resource will require a second apply to recreate the method settings.
///
/// ## Example Usage
///
/// ### End-to-end
///
///
/// ### Off
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pathSpecific = new aws.apigateway.MethodSettings("path_specific", {
///     settings: {
///         loggingLevel: "OFF",
///     },
///     restApi: example.id,
///     stageName: exampleAwsApiGatewayStage.stageName,
///     methodPath: "path1/GET",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path_specific = aws.apigateway.MethodSettings("path_specific",
///     settings={
///         "logging_level": "OFF",
///     },
///     rest_api=example["id"],
///     stage_name=example_aws_api_gateway_stage["stageName"],
///     method_path="path1/GET")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pathSpecific = new Aws.ApiGateway.MethodSettings("path_specific", new()
///     {
///         Settings = new Aws.ApiGateway.Inputs.MethodSettingsSettingsArgs
///         {
///             LoggingLevel = "OFF",
///         },
///         RestApi = example.Id,
///         StageName = exampleAwsApiGatewayStage.StageName,
///         MethodPath = "path1/GET",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewMethodSettings(ctx, "path_specific", &apigateway.MethodSettingsArgs{
/// 			Settings: &apigateway.MethodSettingsSettingsArgs{
/// 				LoggingLevel: pulumi.String("OFF"),
/// 			},
/// 			RestApi:    pulumi.Any(example.Id),
/// 			StageName:  pulumi.Any(exampleAwsApiGatewayStage.StageName),
/// 			MethodPath: pulumi.String("path1/GET"),
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
/// resource "aws_apigateway_methodsettings" "path_specific" {
///   settings = {
///     logging_level = "OFF"
///   }
///   rest_api    = example.id
///   stage_name  = exampleAwsApiGatewayStage.stageName
///   method_path = "path1/GET"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.MethodSettings;
/// import com.pulumi.aws.apigateway.MethodSettingsArgs;
/// import com.pulumi.aws.apigateway.inputs.MethodSettingsSettingsArgs;
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
///         var pathSpecific = new MethodSettings("pathSpecific", MethodSettingsArgs.builder()
///             .settings(MethodSettingsSettingsArgs.builder()
///                 .loggingLevel("OFF")
///                 .build())
///             .restApi(example.id())
///             .stageName(exampleAwsApiGatewayStage.stageName())
///             .methodPath("path1/GET")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pathSpecific:
///     type: aws:apigateway:MethodSettings
///     name: path_specific
///     properties:
///       settings:
///         loggingLevel: OFF
///       restApi: ${example.id}
///       stageName: ${exampleAwsApiGatewayStage.stageName}
///       methodPath: path1/GET
/// ```
///
///
/// ### Errors Only
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pathSpecific = new aws.apigateway.MethodSettings("path_specific", {
///     settings: {
///         loggingLevel: "ERROR",
///         metricsEnabled: true,
///         dataTraceEnabled: false,
///     },
///     restApi: example.id,
///     stageName: exampleAwsApiGatewayStage.stageName,
///     methodPath: "path1/GET",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path_specific = aws.apigateway.MethodSettings("path_specific",
///     settings={
///         "logging_level": "ERROR",
///         "metrics_enabled": True,
///         "data_trace_enabled": False,
///     },
///     rest_api=example["id"],
///     stage_name=example_aws_api_gateway_stage["stageName"],
///     method_path="path1/GET")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pathSpecific = new Aws.ApiGateway.MethodSettings("path_specific", new()
///     {
///         Settings = new Aws.ApiGateway.Inputs.MethodSettingsSettingsArgs
///         {
///             LoggingLevel = "ERROR",
///             MetricsEnabled = true,
///             DataTraceEnabled = false,
///         },
///         RestApi = example.Id,
///         StageName = exampleAwsApiGatewayStage.StageName,
///         MethodPath = "path1/GET",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewMethodSettings(ctx, "path_specific", &apigateway.MethodSettingsArgs{
/// 			Settings: &apigateway.MethodSettingsSettingsArgs{
/// 				LoggingLevel:     pulumi.String("ERROR"),
/// 				MetricsEnabled:   pulumi.Bool(true),
/// 				DataTraceEnabled: pulumi.Bool(false),
/// 			},
/// 			RestApi:    pulumi.Any(example.Id),
/// 			StageName:  pulumi.Any(exampleAwsApiGatewayStage.StageName),
/// 			MethodPath: pulumi.String("path1/GET"),
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
/// resource "aws_apigateway_methodsettings" "path_specific" {
///   settings = {
///     logging_level      = "ERROR"
///     metrics_enabled    = true
///     data_trace_enabled = false
///   }
///   rest_api    = example.id
///   stage_name  = exampleAwsApiGatewayStage.stageName
///   method_path = "path1/GET"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.MethodSettings;
/// import com.pulumi.aws.apigateway.MethodSettingsArgs;
/// import com.pulumi.aws.apigateway.inputs.MethodSettingsSettingsArgs;
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
///         var pathSpecific = new MethodSettings("pathSpecific", MethodSettingsArgs.builder()
///             .settings(MethodSettingsSettingsArgs.builder()
///                 .loggingLevel("ERROR")
///                 .metricsEnabled(true)
///                 .dataTraceEnabled(false)
///                 .build())
///             .restApi(example.id())
///             .stageName(exampleAwsApiGatewayStage.stageName())
///             .methodPath("path1/GET")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pathSpecific:
///     type: aws:apigateway:MethodSettings
///     name: path_specific
///     properties:
///       settings:
///         loggingLevel: ERROR
///         metricsEnabled: true
///         dataTraceEnabled: false
///       restApi: ${example.id}
///       stageName: ${exampleAwsApiGatewayStage.stageName}
///       methodPath: path1/GET
/// ```
///
///
/// ### Errors and Info Logs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pathSpecific = new aws.apigateway.MethodSettings("path_specific", {
///     settings: {
///         loggingLevel: "INFO",
///         metricsEnabled: true,
///         dataTraceEnabled: false,
///     },
///     restApi: example.id,
///     stageName: exampleAwsApiGatewayStage.stageName,
///     methodPath: "path1/GET",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path_specific = aws.apigateway.MethodSettings("path_specific",
///     settings={
///         "logging_level": "INFO",
///         "metrics_enabled": True,
///         "data_trace_enabled": False,
///     },
///     rest_api=example["id"],
///     stage_name=example_aws_api_gateway_stage["stageName"],
///     method_path="path1/GET")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pathSpecific = new Aws.ApiGateway.MethodSettings("path_specific", new()
///     {
///         Settings = new Aws.ApiGateway.Inputs.MethodSettingsSettingsArgs
///         {
///             LoggingLevel = "INFO",
///             MetricsEnabled = true,
///             DataTraceEnabled = false,
///         },
///         RestApi = example.Id,
///         StageName = exampleAwsApiGatewayStage.StageName,
///         MethodPath = "path1/GET",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewMethodSettings(ctx, "path_specific", &apigateway.MethodSettingsArgs{
/// 			Settings: &apigateway.MethodSettingsSettingsArgs{
/// 				LoggingLevel:     pulumi.String("INFO"),
/// 				MetricsEnabled:   pulumi.Bool(true),
/// 				DataTraceEnabled: pulumi.Bool(false),
/// 			},
/// 			RestApi:    pulumi.Any(example.Id),
/// 			StageName:  pulumi.Any(exampleAwsApiGatewayStage.StageName),
/// 			MethodPath: pulumi.String("path1/GET"),
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
/// resource "aws_apigateway_methodsettings" "path_specific" {
///   settings = {
///     logging_level      = "INFO"
///     metrics_enabled    = true
///     data_trace_enabled = false
///   }
///   rest_api    = example.id
///   stage_name  = exampleAwsApiGatewayStage.stageName
///   method_path = "path1/GET"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.MethodSettings;
/// import com.pulumi.aws.apigateway.MethodSettingsArgs;
/// import com.pulumi.aws.apigateway.inputs.MethodSettingsSettingsArgs;
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
///         var pathSpecific = new MethodSettings("pathSpecific", MethodSettingsArgs.builder()
///             .settings(MethodSettingsSettingsArgs.builder()
///                 .loggingLevel("INFO")
///                 .metricsEnabled(true)
///                 .dataTraceEnabled(false)
///                 .build())
///             .restApi(example.id())
///             .stageName(exampleAwsApiGatewayStage.stageName())
///             .methodPath("path1/GET")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pathSpecific:
///     type: aws:apigateway:MethodSettings
///     name: path_specific
///     properties:
///       settings:
///         loggingLevel: INFO
///         metricsEnabled: true
///         dataTraceEnabled: false
///       restApi: ${example.id}
///       stageName: ${exampleAwsApiGatewayStage.stageName}
///       methodPath: path1/GET
/// ```
///
///
/// ### Full Request and Response Logs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pathSpecific = new aws.apigateway.MethodSettings("path_specific", {
///     settings: {
///         loggingLevel: "INFO",
///         metricsEnabled: true,
///         dataTraceEnabled: true,
///     },
///     restApi: example.id,
///     stageName: exampleAwsApiGatewayStage.stageName,
///     methodPath: "path1/GET",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path_specific = aws.apigateway.MethodSettings("path_specific",
///     settings={
///         "logging_level": "INFO",
///         "metrics_enabled": True,
///         "data_trace_enabled": True,
///     },
///     rest_api=example["id"],
///     stage_name=example_aws_api_gateway_stage["stageName"],
///     method_path="path1/GET")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pathSpecific = new Aws.ApiGateway.MethodSettings("path_specific", new()
///     {
///         Settings = new Aws.ApiGateway.Inputs.MethodSettingsSettingsArgs
///         {
///             LoggingLevel = "INFO",
///             MetricsEnabled = true,
///             DataTraceEnabled = true,
///         },
///         RestApi = example.Id,
///         StageName = exampleAwsApiGatewayStage.StageName,
///         MethodPath = "path1/GET",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewMethodSettings(ctx, "path_specific", &apigateway.MethodSettingsArgs{
/// 			Settings: &apigateway.MethodSettingsSettingsArgs{
/// 				LoggingLevel:     pulumi.String("INFO"),
/// 				MetricsEnabled:   pulumi.Bool(true),
/// 				DataTraceEnabled: pulumi.Bool(true),
/// 			},
/// 			RestApi:    pulumi.Any(example.Id),
/// 			StageName:  pulumi.Any(exampleAwsApiGatewayStage.StageName),
/// 			MethodPath: pulumi.String("path1/GET"),
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
/// resource "aws_apigateway_methodsettings" "path_specific" {
///   settings = {
///     logging_level      = "INFO"
///     metrics_enabled    = true
///     data_trace_enabled = true
///   }
///   rest_api    = example.id
///   stage_name  = exampleAwsApiGatewayStage.stageName
///   method_path = "path1/GET"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.MethodSettings;
/// import com.pulumi.aws.apigateway.MethodSettingsArgs;
/// import com.pulumi.aws.apigateway.inputs.MethodSettingsSettingsArgs;
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
///         var pathSpecific = new MethodSettings("pathSpecific", MethodSettingsArgs.builder()
///             .settings(MethodSettingsSettingsArgs.builder()
///                 .loggingLevel("INFO")
///                 .metricsEnabled(true)
///                 .dataTraceEnabled(true)
///                 .build())
///             .restApi(example.id())
///             .stageName(exampleAwsApiGatewayStage.stageName())
///             .methodPath("path1/GET")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pathSpecific:
///     type: aws:apigateway:MethodSettings
///     name: path_specific
///     properties:
///       settings:
///         loggingLevel: INFO
///         metricsEnabled: true
///         dataTraceEnabled: true
///       restApi: ${example.id}
///       stageName: ${exampleAwsApiGatewayStage.stageName}
///       methodPath: path1/GET
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.MethodSettings` using `REST-API-ID/STAGE-NAME/METHOD-PATH`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/methodSettings:MethodSettings example 12345abcde/example/test/GET
/// ```
class MethodSettings extends pulumi.CustomResource {
  /// Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., `trimprefix(aws_api_gateway_resource.example.path, "/")`).
  late final pulumi.Output<String> methodPath;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the REST API
  late final pulumi.Output<String> restApi;
  /// Settings block, see below.
  late final pulumi.Output<MethodSettingsSettings> settings;
  /// Name of the stage
  late final pulumi.Output<String> stageName;

  /// Creates a new [MethodSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MethodSettings]. {@macro pulumi_apigateway_method_settings_method_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MethodSettings(
    String name, {
    MethodSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/methodSettings:MethodSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    methodPath = registerOutput<String>('methodPath');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    settings = registerOutput<MethodSettingsSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MethodSettingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stageName = registerOutput<String>('stageName');
  }

  /// Gets an existing [MethodSettings] resource's state with the given [name] and [id].
  static MethodSettings get(
    String name,
    pulumi.Input<String> id, {
    MethodSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MethodSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MethodSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/methodSettings:MethodSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    methodPath = registerOutput<String>('methodPath');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    settings = registerOutput<MethodSettingsSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MethodSettingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stageName = registerOutput<String>('stageName');
  }

  /// Creates a typed reference to an existing [MethodSettings] resource.
  MethodSettings.reference(String urn)
    : super(
        'aws:apigateway/methodSettings:MethodSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    methodPath = registerOutput<String>('methodPath');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    settings = registerOutput<MethodSettingsSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MethodSettingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stageName = registerOutput<String>('stageName');
  }
}
