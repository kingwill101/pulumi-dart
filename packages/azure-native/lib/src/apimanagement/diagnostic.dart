import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_args.dart';
import 'pipeline_diagnostic_settings_response.dart';
import 'sampling_settings_response.dart';

/// Diagnostic details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateDiagnostic
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diagnostic = new AzureNative.ApiManagement.Diagnostic("diagnostic", new()
///     {
///         AlwaysLog = AzureNative.ApiManagement.AlwaysLog.AllErrors,
///         Backend = new AzureNative.ApiManagement.Inputs.PipelineDiagnosticSettingsArgs
///         {
///             Request = new AzureNative.ApiManagement.Inputs.HttpMessageDiagnosticArgs
///             {
///                 Body = new AzureNative.ApiManagement.Inputs.BodyDiagnosticSettingsArgs
///                 {
///                     Bytes = 512,
///                 },
///                 Headers = new[]
///                 {
///                     "Content-type",
///                 },
///             },
///             Response = new AzureNative.ApiManagement.Inputs.HttpMessageDiagnosticArgs
///             {
///                 Body = new AzureNative.ApiManagement.Inputs.BodyDiagnosticSettingsArgs
///                 {
///                     Bytes = 512,
///                 },
///                 Headers = new[]
///                 {
///                     "Content-type",
///                 },
///             },
///         },
///         DiagnosticId = "applicationinsights",
///         Frontend = new AzureNative.ApiManagement.Inputs.PipelineDiagnosticSettingsArgs
///         {
///             Request = new AzureNative.ApiManagement.Inputs.HttpMessageDiagnosticArgs
///             {
///                 Body = new AzureNative.ApiManagement.Inputs.BodyDiagnosticSettingsArgs
///                 {
///                     Bytes = 512,
///                 },
///                 Headers = new[]
///                 {
///                     "Content-type",
///                 },
///             },
///             Response = new AzureNative.ApiManagement.Inputs.HttpMessageDiagnosticArgs
///             {
///                 Body = new AzureNative.ApiManagement.Inputs.BodyDiagnosticSettingsArgs
///                 {
///                     Bytes = 512,
///                 },
///                 Headers = new[]
///                 {
///                     "Content-type",
///                 },
///             },
///         },
///         LoggerId = "/loggers/azuremonitor",
///         ResourceGroupName = "rg1",
///         Sampling = new AzureNative.ApiManagement.Inputs.SamplingSettingsArgs
///         {
///             Percentage = 50,
///             SamplingType = AzureNative.ApiManagement.SamplingType.@Fixed,
///         },
///         ServiceName = "apimService1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewDiagnostic(ctx, "diagnostic", &apimanagement.DiagnosticArgs{
/// 			AlwaysLog: pulumi.String(apimanagement.AlwaysLogAllErrors),
/// 			Backend: &apimanagement.PipelineDiagnosticSettingsArgs{
/// 				Request: &apimanagement.HttpMessageDiagnosticArgs{
/// 					Body: &apimanagement.BodyDiagnosticSettingsArgs{
/// 						Bytes: pulumi.Int(512),
/// 					},
/// 					Headers: pulumi.StringArray{
/// 						pulumi.String("Content-type"),
/// 					},
/// 				},
/// 				Response: &apimanagement.HttpMessageDiagnosticArgs{
/// 					Body: &apimanagement.BodyDiagnosticSettingsArgs{
/// 						Bytes: pulumi.Int(512),
/// 					},
/// 					Headers: pulumi.StringArray{
/// 						pulumi.String("Content-type"),
/// 					},
/// 				},
/// 			},
/// 			DiagnosticId: pulumi.String("applicationinsights"),
/// 			Frontend: &apimanagement.PipelineDiagnosticSettingsArgs{
/// 				Request: &apimanagement.HttpMessageDiagnosticArgs{
/// 					Body: &apimanagement.BodyDiagnosticSettingsArgs{
/// 						Bytes: pulumi.Int(512),
/// 					},
/// 					Headers: pulumi.StringArray{
/// 						pulumi.String("Content-type"),
/// 					},
/// 				},
/// 				Response: &apimanagement.HttpMessageDiagnosticArgs{
/// 					Body: &apimanagement.BodyDiagnosticSettingsArgs{
/// 						Bytes: pulumi.Int(512),
/// 					},
/// 					Headers: pulumi.StringArray{
/// 						pulumi.String("Content-type"),
/// 					},
/// 				},
/// 			},
/// 			LoggerId:          pulumi.String("/loggers/azuremonitor"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sampling: &apimanagement.SamplingSettingsArgs{
/// 				Percentage:   pulumi.Float64(50),
/// 				SamplingType: pulumi.String(apimanagement.SamplingTypeFixed),
/// 			},
/// 			ServiceName: pulumi.String("apimService1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.Diagnostic;
/// import com.pulumi.azurenative.apimanagement.DiagnosticArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.PipelineDiagnosticSettingsArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.HttpMessageDiagnosticArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BodyDiagnosticSettingsArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.SamplingSettingsArgs;
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
///         var diagnostic = new Diagnostic("diagnostic", DiagnosticArgs.builder()
///             .alwaysLog("allErrors")
///             .backend(PipelineDiagnosticSettingsArgs.builder()
///                 .request(HttpMessageDiagnosticArgs.builder()
///                     .body(BodyDiagnosticSettingsArgs.builder()
///                         .bytes(512)
///                         .build())
///                     .headers("Content-type")
///                     .build())
///                 .response(HttpMessageDiagnosticArgs.builder()
///                     .body(BodyDiagnosticSettingsArgs.builder()
///                         .bytes(512)
///                         .build())
///                     .headers("Content-type")
///                     .build())
///                 .build())
///             .diagnosticId("applicationinsights")
///             .frontend(PipelineDiagnosticSettingsArgs.builder()
///                 .request(HttpMessageDiagnosticArgs.builder()
///                     .body(BodyDiagnosticSettingsArgs.builder()
///                         .bytes(512)
///                         .build())
///                     .headers("Content-type")
///                     .build())
///                 .response(HttpMessageDiagnosticArgs.builder()
///                     .body(BodyDiagnosticSettingsArgs.builder()
///                         .bytes(512)
///                         .build())
///                     .headers("Content-type")
///                     .build())
///                 .build())
///             .loggerId("/loggers/azuremonitor")
///             .resourceGroupName("rg1")
///             .sampling(SamplingSettingsArgs.builder()
///                 .percentage(50.0)
///                 .samplingType("fixed")
///                 .build())
///             .serviceName("apimService1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const diagnostic = new azure_native.apimanagement.Diagnostic("diagnostic", {
///     alwaysLog: azure_native.apimanagement.AlwaysLog.AllErrors,
///     backend: {
///         request: {
///             body: {
///                 bytes: 512,
///             },
///             headers: ["Content-type"],
///         },
///         response: {
///             body: {
///                 bytes: 512,
///             },
///             headers: ["Content-type"],
///         },
///     },
///     diagnosticId: "applicationinsights",
///     frontend: {
///         request: {
///             body: {
///                 bytes: 512,
///             },
///             headers: ["Content-type"],
///         },
///         response: {
///             body: {
///                 bytes: 512,
///             },
///             headers: ["Content-type"],
///         },
///     },
///     loggerId: "/loggers/azuremonitor",
///     resourceGroupName: "rg1",
///     sampling: {
///         percentage: 50,
///         samplingType: azure_native.apimanagement.SamplingType.Fixed,
///     },
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// diagnostic = azure_native.apimanagement.Diagnostic("diagnostic",
///     always_log=azure_native.apimanagement.AlwaysLog.ALL_ERRORS,
///     backend={
///         "request": {
///             "body": {
///                 "bytes": 512,
///             },
///             "headers": ["Content-type"],
///         },
///         "response": {
///             "body": {
///                 "bytes": 512,
///             },
///             "headers": ["Content-type"],
///         },
///     },
///     diagnostic_id="applicationinsights",
///     frontend={
///         "request": {
///             "body": {
///                 "bytes": 512,
///             },
///             "headers": ["Content-type"],
///         },
///         "response": {
///             "body": {
///                 "bytes": 512,
///             },
///             "headers": ["Content-type"],
///         },
///     },
///     logger_id="/loggers/azuremonitor",
///     resource_group_name="rg1",
///     sampling={
///         "percentage": 50,
///         "sampling_type": azure_native.apimanagement.SamplingType.FIXED,
///     },
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   diagnostic:
///     type: azure-native:apimanagement:Diagnostic
///     properties:
///       alwaysLog: allErrors
///       backend:
///         request:
///           body:
///             bytes: 512
///           headers:
///             - Content-type
///         response:
///           body:
///             bytes: 512
///           headers:
///             - Content-type
///       diagnosticId: applicationinsights
///       frontend:
///         request:
///           body:
///             bytes: 512
///           headers:
///             - Content-type
///         response:
///           body:
///             bytes: 512
///           headers:
///             - Content-type
///       loggerId: /loggers/azuremonitor
///       resourceGroupName: rg1
///       sampling:
///         percentage: 50
///         samplingType: fixed
///       serviceName: apimService1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:apimanagement:Diagnostic applicationinsights /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/diagnostics/{diagnosticId}
/// ```
class Diagnostic extends pulumi.CustomResource {
  /// Specifies for what type of messages sampling settings should not apply.
  late final pulumi.Output<String?> alwaysLog;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Diagnostic settings for incoming/outgoing HTTP messages to the Backend
  late final pulumi.Output<PipelineDiagnosticSettingsResponse?> backend;
  /// Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
  late final pulumi.Output<PipelineDiagnosticSettingsResponse?> frontend;
  /// Sets correlation protocol to use for Application Insights diagnostics.
  late final pulumi.Output<String?> httpCorrelationProtocol;
  /// Log the ClientIP. Default is false.
  late final pulumi.Output<bool?> logClientIp;
  /// Resource Id of a target logger.
  late final pulumi.Output<String> loggerId;
  /// Emit custom metrics via emit-metric policy. Applicable only to Application Insights diagnostic settings.
  late final pulumi.Output<bool?> metrics;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The format of the Operation Name for Application Insights telemetries. Default is Name.
  late final pulumi.Output<String?> operationNameFormat;
  /// Sampling settings for Diagnostic.
  late final pulumi.Output<SamplingSettingsResponse?> sampling;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The verbosity level applied to traces emitted by trace policies.
  late final pulumi.Output<String?> verbosity;

  /// Creates a new [Diagnostic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Diagnostic]. {@macro pulumi_apimanagement_diagnostic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Diagnostic(
    String name, {
    DiagnosticArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Diagnostic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alwaysLog = registerOutput<String?>('alwaysLog');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.backend = registerOutput<PipelineDiagnosticSettingsResponse?>('backend');
    this.frontend = registerOutput<PipelineDiagnosticSettingsResponse?>('frontend');
    this.httpCorrelationProtocol = registerOutput<String?>('httpCorrelationProtocol');
    this.logClientIp = registerOutput<bool?>('logClientIp');
    this.loggerId = registerOutput<String>('loggerId');
    this.metrics = registerOutput<bool?>('metrics');
    this.name = registerOutput<String>('name');
    this.operationNameFormat = registerOutput<String?>('operationNameFormat');
    this.sampling = registerOutput<SamplingSettingsResponse?>('sampling');
    this.type = registerOutput<String>('type');
    this.verbosity = registerOutput<String?>('verbosity');
  }
}
