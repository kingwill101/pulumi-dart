import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_resource_properties_response.dart';
import 'system_data_response.dart';

/// Job resource payload
///
/// Uses Azure REST API version 2024-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Job_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.AppPlatform.Job("job", new()
///     {
///         JobName = "test-job",
///         Properties = new AzureNative.AppPlatform.Inputs.JobResourcePropertiesArgs
///         {
///             Source = new AzureNative.AppPlatform.Inputs.BuildResultUserSourceInfoArgs
///             {
///                 BuildResultId = "<default>",
///                 Type = "BuildResult",
///             },
///             Template = new AzureNative.AppPlatform.Inputs.JobExecutionTemplateArgs
///             {
///                 Args = new[]
///                 {
///                     "arg1",
///                     "arg2",
///                 },
///                 EnvironmentVariables = new[]
///                 {
///                     new AzureNative.AppPlatform.Inputs.EnvVarArgs
///                     {
///                         Name = "key1",
///                         Value = "value1",
///                     },
///                     new AzureNative.AppPlatform.Inputs.EnvVarArgs
///                     {
///                         Name = "env2",
///                         Value = "value2",
///                     },
///                     new AzureNative.AppPlatform.Inputs.EnvVarArgs
///                     {
///                         Name = "secretKey1",
///                         SecretValue = "secretValue1",
///                     },
///                 },
///             },
///             TriggerConfig = new AzureNative.AppPlatform.Inputs.ManualJobTriggerConfigArgs
///             {
///                 TriggerType = "Manual",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewJob(ctx, "job", &appplatform.JobArgs{
/// 			JobName: pulumi.String("test-job"),
/// 			Properties: &appplatform.JobResourcePropertiesArgs{
/// 				Source: appplatform.BuildResultUserSourceInfo{
/// 					BuildResultId: "<default>",
/// 					Type:          "BuildResult",
/// 				},
/// 				Template: &appplatform.JobExecutionTemplateArgs{
/// 					Args: pulumi.StringArray{
/// 						pulumi.String("arg1"),
/// 						pulumi.String("arg2"),
/// 					},
/// 					EnvironmentVariables: appplatform.EnvVarArray{
/// 						&appplatform.EnvVarArgs{
/// 							Name:  pulumi.String("key1"),
/// 							Value: pulumi.String("value1"),
/// 						},
/// 						&appplatform.EnvVarArgs{
/// 							Name:  pulumi.String("env2"),
/// 							Value: pulumi.String("value2"),
/// 						},
/// 						&appplatform.EnvVarArgs{
/// 							Name:        pulumi.String("secretKey1"),
/// 							SecretValue: pulumi.String("secretValue1"),
/// 						},
/// 					},
/// 				},
/// 				TriggerConfig: &appplatform.ManualJobTriggerConfigArgs{
/// 					TriggerType: pulumi.String("Manual"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
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
/// import com.pulumi.azurenative.appplatform.Job;
/// import com.pulumi.azurenative.appplatform.JobArgs;
/// import com.pulumi.azurenative.appplatform.inputs.JobResourcePropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.JobExecutionTemplateArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ManualJobTriggerConfigArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .jobName("test-job")
///             .properties(JobResourcePropertiesArgs.builder()
///                 .source(BuildResultUserSourceInfoArgs.builder()
///                     .buildResultId("<default>")
///                     .type("BuildResult")
///                     .build())
///                 .template(JobExecutionTemplateArgs.builder()
///                     .args(
///                         "arg1",
///                         "arg2")
///                     .environmentVariables(
///                         EnvVarArgs.builder()
///                             .name("key1")
///                             .value("value1")
///                             .build(),
///                         EnvVarArgs.builder()
///                             .name("env2")
///                             .value("value2")
///                             .build(),
///                         EnvVarArgs.builder()
///                             .name("secretKey1")
///                             .secretValue("secretValue1")
///                             .build())
///                     .build())
///                 .triggerConfig(Map.of("triggerType", "Manual"))
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
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
/// const job = new azure_native.appplatform.Job("job", {
///     jobName: "test-job",
///     properties: {
///         source: {
///             buildResultId: "<default>",
///             type: "BuildResult",
///         },
///         template: {
///             args: [
///                 "arg1",
///                 "arg2",
///             ],
///             environmentVariables: [
///                 {
///                     name: "key1",
///                     value: "value1",
///                 },
///                 {
///                     name: "env2",
///                     value: "value2",
///                 },
///                 {
///                     name: "secretKey1",
///                     secretValue: "secretValue1",
///                 },
///             ],
///         },
///         triggerConfig: {
///             triggerType: "Manual",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.appplatform.Job("job",
///     job_name="test-job",
///     properties={
///         "source": {
///             "build_result_id": "<default>",
///             "type": "BuildResult",
///         },
///         "template": {
///             "args": [
///                 "arg1",
///                 "arg2",
///             ],
///             "environment_variables": [
///                 {
///                     "name": "key1",
///                     "value": "value1",
///                 },
///                 {
///                     "name": "env2",
///                     "value": "value2",
///                 },
///                 {
///                     "name": "secretKey1",
///                     "secret_value": "secretValue1",
///                 },
///             ],
///         },
///         "trigger_config": {
///             "trigger_type": "Manual",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:appplatform:Job
///     properties:
///       jobName: test-job
///       properties:
///         source:
///           buildResultId: <default>
///           type: BuildResult
///         template:
///           args:
///             - arg1
///             - arg2
///           environmentVariables:
///             - name: key1
///               value: value1
///             - name: env2
///               value: value2
///             - name: secretKey1
///               secretValue: secretValue1
///         triggerConfig:
///           triggerType: Manual
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
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
/// $ pulumi import azure-native:appplatform:Job test-job /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/jobs/{jobName}
/// ```
class Job extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the Job resource
  late final pulumi.Output<JobResourcePropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_appplatform_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<JobResourcePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
