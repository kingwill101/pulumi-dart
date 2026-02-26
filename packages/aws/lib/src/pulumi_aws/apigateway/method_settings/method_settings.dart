import 'package:pulumi/pulumi.dart';
import '../method_settings_settings/method_settings_settings.dart';
import 'method_settings_args.dart';

/// Manages API Gateway Stage Method Settings. For example, CloudWatch logging and metrics.
///
/// > **NOTE:** We recommend using this resource in conjunction with the <span pulumi-lang-nodejs="`aws.apigateway.Stage`" pulumi-lang-dotnet="`aws.apigateway.Stage`" pulumi-lang-go="`apigateway.Stage`" pulumi-lang-python="`apigateway.Stage`" pulumi-lang-yaml="`aws.apigateway.Stage`" pulumi-lang-java="`aws.apigateway.Stage`">`aws.apigateway.Stage`</span> resource instead of a stage managed by the <span pulumi-lang-nodejs="`aws.apigateway.Deployment`" pulumi-lang-dotnet="`aws.apigateway.Deployment`" pulumi-lang-go="`apigateway.Deployment`" pulumi-lang-python="`apigateway.Deployment`" pulumi-lang-yaml="`aws.apigateway.Deployment`" pulumi-lang-java="`aws.apigateway.Deployment`">`aws.apigateway.Deployment`</span> resource optional <span pulumi-lang-nodejs="`stageName`" pulumi-lang-dotnet="`StageName`" pulumi-lang-go="`stageName`" pulumi-lang-python="`stage_name`" pulumi-lang-yaml="`stageName`" pulumi-lang-java="`stageName`">`stage_name`</span> argument. Stages managed by the <span pulumi-lang-nodejs="`aws.apigateway.Deployment`" pulumi-lang-dotnet="`aws.apigateway.Deployment`" pulumi-lang-go="`apigateway.Deployment`" pulumi-lang-python="`apigateway.Deployment`" pulumi-lang-yaml="`aws.apigateway.Deployment`" pulumi-lang-java="`aws.apigateway.Deployment`">`aws.apigateway.Deployment`</span> resource are recreated on redeployment and this resource will require a second apply to recreate the method settings.
///
/// ## Example Usage
///
/// ### End-to-end
///
///
/// ### Off
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pathSpecific = new aws.apigateway.MethodSettings("path_specific", {
/// restApi: example.id,
/// stageName: exampleAwsApiGatewayStage.stageName,
/// methodPath: "path1/GET",
/// settings: {
/// loggingLevel: "OFF",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path_specific = aws.apigateway.MethodSettings("path_specific",
/// rest_api=example["id"],
/// stage_name=example_aws_api_gateway_stage["stageName"],
/// method_path="path1/GET",
/// settings={
/// "logging_level": "OFF",
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
/// var pathSpecific = new Aws.ApiGateway.MethodSettings("path_specific", new()
/// {
/// RestApi = example.Id,
/// StageName = exampleAwsApiGatewayStage.StageName,
/// MethodPath = "path1/GET",
/// Settings = new Aws.ApiGateway.Inputs.MethodSettingsSettingsArgs
/// {
/// LoggingLevel = "OFF",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewMethodSettings(ctx, "path_specific", &apigateway.MethodSettingsArgs{
/// RestApi:    pulumi.Any(example.Id),
/// StageName:  pulumi.Any(exampleAwsApiGatewayStage.StageName),
/// MethodPath: pulumi.String("path1/GET"),
/// Settings: &apigateway.MethodSettingsSettingsArgs{
/// LoggingLevel: pulumi.String("OFF"),
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
/// import com.pulumi.aws.apigateway.MethodSettings;
/// import com.pulumi.aws.apigateway.MethodSettingsArgs;
/// import com.pulumi.aws.apigateway.inputs.MethodSettingsSettingsArgs;
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
/// var pathSpecific = new MethodSettings("pathSpecific", MethodSettingsArgs.builder()
/// .restApi(example.id())
/// .stageName(exampleAwsApiGatewayStage.stageName())
/// .methodPath("path1/GET")
/// .settings(MethodSettingsSettingsArgs.builder()
/// .loggingLevel("OFF")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pathSpecific:
/// type: aws:apigateway:MethodSettings
/// name: path_specific
/// properties:
/// restApi: ${example.id}
/// stageName: ${exampleAwsApiGatewayStage.stageName}
/// methodPath: path1/GET
/// settings:
/// loggingLevel: OFF
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Errors Only
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pathSpecific = new aws.apigateway.MethodSettings("path_specific", {
/// restApi: example.id,
/// stageName: exampleAwsApiGatewayStage.stageName,
/// methodPath: "path1/GET",
/// settings: {
/// loggingLevel: "ERROR",
/// metricsEnabled: true,
/// dataTraceEnabled: false,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path_specific = aws.apigateway.MethodSettings("path_specific",
/// rest_api=example["id"],
/// stage_name=example_aws_api_gateway_stage["stageName"],
/// method_path="path1/GET",
/// settings={
/// "logging_level": "ERROR",
/// "metrics_enabled": True,
/// "data_trace_enabled": False,
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
/// var pathSpecific = new Aws.ApiGateway.MethodSettings("path_specific", new()
/// {
/// RestApi = example.Id,
/// StageName = exampleAwsApiGatewayStage.StageName,
/// MethodPath = "path1/GET",
/// Settings = new Aws.ApiGateway.Inputs.MethodSettingsSettingsArgs
/// {
/// LoggingLevel = "ERROR",
/// MetricsEnabled = true,
/// DataTraceEnabled = false,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewMethodSettings(ctx, "path_specific", &apigateway.MethodSettingsArgs{
/// RestApi:    pulumi.Any(example.Id),
/// StageName:  pulumi.Any(exampleAwsApiGatewayStage.StageName),
/// MethodPath: pulumi.String("path1/GET"),
/// Settings: &apigateway.MethodSettingsSettingsArgs{
/// LoggingLevel:     pulumi.String("ERROR"),
/// MetricsEnabled:   pulumi.Bool(true),
/// DataTraceEnabled: pulumi.Bool(false),
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
/// import com.pulumi.aws.apigateway.MethodSettings;
/// import com.pulumi.aws.apigateway.MethodSettingsArgs;
/// import com.pulumi.aws.apigateway.inputs.MethodSettingsSettingsArgs;
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
/// var pathSpecific = new MethodSettings("pathSpecific", MethodSettingsArgs.builder()
/// .restApi(example.id())
/// .stageName(exampleAwsApiGatewayStage.stageName())
/// .methodPath("path1/GET")
/// .settings(MethodSettingsSettingsArgs.builder()
/// .loggingLevel("ERROR")
/// .metricsEnabled(true)
/// .dataTraceEnabled(false)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pathSpecific:
/// type: aws:apigateway:MethodSettings
/// name: path_specific
/// properties:
/// restApi: ${example.id}
/// stageName: ${exampleAwsApiGatewayStage.stageName}
/// methodPath: path1/GET
/// settings:
/// loggingLevel: ERROR
/// metricsEnabled: true
/// dataTraceEnabled: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Errors and Info Logs
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pathSpecific = new aws.apigateway.MethodSettings("path_specific", {
/// restApi: example.id,
/// stageName: exampleAwsApiGatewayStage.stageName,
/// methodPath: "path1/GET",
/// settings: {
/// loggingLevel: "INFO",
/// metricsEnabled: true,
/// dataTraceEnabled: false,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path_specific = aws.apigateway.MethodSettings("path_specific",
/// rest_api=example["id"],
/// stage_name=example_aws_api_gateway_stage["stageName"],
/// method_path="path1/GET",
/// settings={
/// "logging_level": "INFO",
/// "metrics_enabled": True,
/// "data_trace_enabled": False,
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
/// var pathSpecific = new Aws.ApiGateway.MethodSettings("path_specific", new()
/// {
/// RestApi = example.Id,
/// StageName = exampleAwsApiGatewayStage.StageName,
/// MethodPath = "path1/GET",
/// Settings = new Aws.ApiGateway.Inputs.MethodSettingsSettingsArgs
/// {
/// LoggingLevel = "INFO",
/// MetricsEnabled = true,
/// DataTraceEnabled = false,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewMethodSettings(ctx, "path_specific", &apigateway.MethodSettingsArgs{
/// RestApi:    pulumi.Any(example.Id),
/// StageName:  pulumi.Any(exampleAwsApiGatewayStage.StageName),
/// MethodPath: pulumi.String("path1/GET"),
/// Settings: &apigateway.MethodSettingsSettingsArgs{
/// LoggingLevel:     pulumi.String("INFO"),
/// MetricsEnabled:   pulumi.Bool(true),
/// DataTraceEnabled: pulumi.Bool(false),
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
/// import com.pulumi.aws.apigateway.MethodSettings;
/// import com.pulumi.aws.apigateway.MethodSettingsArgs;
/// import com.pulumi.aws.apigateway.inputs.MethodSettingsSettingsArgs;
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
/// var pathSpecific = new MethodSettings("pathSpecific", MethodSettingsArgs.builder()
/// .restApi(example.id())
/// .stageName(exampleAwsApiGatewayStage.stageName())
/// .methodPath("path1/GET")
/// .settings(MethodSettingsSettingsArgs.builder()
/// .loggingLevel("INFO")
/// .metricsEnabled(true)
/// .dataTraceEnabled(false)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pathSpecific:
/// type: aws:apigateway:MethodSettings
/// name: path_specific
/// properties:
/// restApi: ${example.id}
/// stageName: ${exampleAwsApiGatewayStage.stageName}
/// methodPath: path1/GET
/// settings:
/// loggingLevel: INFO
/// metricsEnabled: true
/// dataTraceEnabled: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Full Request and Response Logs
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pathSpecific = new aws.apigateway.MethodSettings("path_specific", {
/// restApi: example.id,
/// stageName: exampleAwsApiGatewayStage.stageName,
/// methodPath: "path1/GET",
/// settings: {
/// loggingLevel: "INFO",
/// metricsEnabled: true,
/// dataTraceEnabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path_specific = aws.apigateway.MethodSettings("path_specific",
/// rest_api=example["id"],
/// stage_name=example_aws_api_gateway_stage["stageName"],
/// method_path="path1/GET",
/// settings={
/// "logging_level": "INFO",
/// "metrics_enabled": True,
/// "data_trace_enabled": True,
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
/// var pathSpecific = new Aws.ApiGateway.MethodSettings("path_specific", new()
/// {
/// RestApi = example.Id,
/// StageName = exampleAwsApiGatewayStage.StageName,
/// MethodPath = "path1/GET",
/// Settings = new Aws.ApiGateway.Inputs.MethodSettingsSettingsArgs
/// {
/// LoggingLevel = "INFO",
/// MetricsEnabled = true,
/// DataTraceEnabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewMethodSettings(ctx, "path_specific", &apigateway.MethodSettingsArgs{
/// RestApi:    pulumi.Any(example.Id),
/// StageName:  pulumi.Any(exampleAwsApiGatewayStage.StageName),
/// MethodPath: pulumi.String("path1/GET"),
/// Settings: &apigateway.MethodSettingsSettingsArgs{
/// LoggingLevel:     pulumi.String("INFO"),
/// MetricsEnabled:   pulumi.Bool(true),
/// DataTraceEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.apigateway.MethodSettings;
/// import com.pulumi.aws.apigateway.MethodSettingsArgs;
/// import com.pulumi.aws.apigateway.inputs.MethodSettingsSettingsArgs;
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
/// var pathSpecific = new MethodSettings("pathSpecific", MethodSettingsArgs.builder()
/// .restApi(example.id())
/// .stageName(exampleAwsApiGatewayStage.stageName())
/// .methodPath("path1/GET")
/// .settings(MethodSettingsSettingsArgs.builder()
/// .loggingLevel("INFO")
/// .metricsEnabled(true)
/// .dataTraceEnabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pathSpecific:
/// type: aws:apigateway:MethodSettings
/// name: path_specific
/// properties:
/// restApi: ${example.id}
/// stageName: ${exampleAwsApiGatewayStage.stageName}
/// methodPath: path1/GET
/// settings:
/// loggingLevel: INFO
/// metricsEnabled: true
/// dataTraceEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigateway.MethodSettings`" pulumi-lang-dotnet="`aws.apigateway.MethodSettings`" pulumi-lang-go="`apigateway.MethodSettings`" pulumi-lang-python="`apigateway.MethodSettings`" pulumi-lang-yaml="`aws.apigateway.MethodSettings`" pulumi-lang-java="`aws.apigateway.MethodSettings`">`aws.apigateway.MethodSettings`</span> using `REST-API-ID/STAGE-NAME/METHOD-PATH`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/methodSettings:MethodSettings example 12345abcde/example/test/GET
/// ```
class MethodSettings extends CustomResource {
  /// Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., `trimprefix(aws_api_gateway_resource.example.path, "/")`).
  late final Output<String> methodPath;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the REST API
  late final Output<String> restApi;

  /// Settings block, see below.
  late final Output<MethodSettingsSettings> settings;

  /// Name of the stage
  late final Output<String> stageName;

  MethodSettings(
    String name, {
    MethodSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/methodSettings:MethodSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.methodPath = registerOutput<String>('methodPath');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.settings = registerOutput<MethodSettingsSettings>('settings');
    this.stageName = registerOutput<String>('stageName');
  }
}
