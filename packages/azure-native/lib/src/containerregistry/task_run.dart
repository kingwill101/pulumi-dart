import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_build_request_response.dart';
import 'identity_properties_response.dart';
import 'run_response.dart';
import 'system_data_response.dart';
import 'task_run_args.dart';

/// The task run that has the ARM resource and properties.
/// The task run will have the information of request and result of a run.
///
/// Uses Azure REST API version 2019-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TaskRuns_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var taskRun = new AzureNative.ContainerRegistry.TaskRun("taskRun", new()
///     {
///         ForceUpdateTag = "test",
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         RunRequest = new AzureNative.ContainerRegistry.Inputs.EncodedTaskRunRequestArgs
///         {
///             Credentials = null,
///             EncodedTaskContent = "c3RlcHM6IAogIC0gY21kOiB7eyAuVmFsdWVzLmNvbW1hbmQgfX0K",
///             EncodedValuesContent = "Y29tbWFuZDogYmFzaCBlY2hvIHt7LlJ1bi5SZWdpc3RyeX19Cg==",
///             Platform = new AzureNative.ContainerRegistry.Inputs.PlatformPropertiesArgs
///             {
///                 Architecture = AzureNative.ContainerRegistry.Architecture.Amd64,
///                 Os = AzureNative.ContainerRegistry.OS.Linux,
///             },
///             Type = "EncodedTaskRunRequest",
///             Values = new() { },
///         },
///         TaskRunName = "myRun",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewTaskRun(ctx, "taskRun", &containerregistry.TaskRunArgs{
/// 			ForceUpdateTag:    pulumi.String("test"),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			RunRequest: &containerregistry.EncodedTaskRunRequestArgs{
/// 				Credentials:          &containerregistry.CredentialsArgs{},
/// 				EncodedTaskContent:   pulumi.String("c3RlcHM6IAogIC0gY21kOiB7eyAuVmFsdWVzLmNvbW1hbmQgfX0K"),
/// 				EncodedValuesContent: pulumi.String("Y29tbWFuZDogYmFzaCBlY2hvIHt7LlJ1bi5SZWdpc3RyeX19Cg=="),
/// 				Platform: &containerregistry.PlatformPropertiesArgs{
/// 					Architecture: pulumi.String(containerregistry.ArchitectureAmd64),
/// 					Os:           pulumi.String(containerregistry.OSLinux),
/// 				},
/// 				Type:   pulumi.String("EncodedTaskRunRequest"),
/// 				Values: containerregistry.SetValueArray{},
/// 			},
/// 			TaskRunName: pulumi.String("myRun"),
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
/// import com.pulumi.azurenative.containerregistry.TaskRun;
/// import com.pulumi.azurenative.containerregistry.TaskRunArgs;
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
///         var taskRun = new TaskRun("taskRun", TaskRunArgs.builder()
///             .forceUpdateTag("test")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .runRequest(EncodedTaskRunRequestArgs.builder()
///                 .credentials(CredentialsArgs.builder()
///                     .build())
///                 .encodedTaskContent("c3RlcHM6IAogIC0gY21kOiB7eyAuVmFsdWVzLmNvbW1hbmQgfX0K")
///                 .encodedValuesContent("Y29tbWFuZDogYmFzaCBlY2hvIHt7LlJ1bi5SZWdpc3RyeX19Cg==")
///                 .platform(PlatformPropertiesArgs.builder()
///                     .architecture("amd64")
///                     .os("Linux")
///                     .build())
///                 .type("EncodedTaskRunRequest")
///                 .values()
///                 .build())
///             .taskRunName("myRun")
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
/// const taskRun = new azure_native.containerregistry.TaskRun("taskRun", {
///     forceUpdateTag: "test",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     runRequest: {
///         credentials: {},
///         encodedTaskContent: "c3RlcHM6IAogIC0gY21kOiB7eyAuVmFsdWVzLmNvbW1hbmQgfX0K",
///         encodedValuesContent: "Y29tbWFuZDogYmFzaCBlY2hvIHt7LlJ1bi5SZWdpc3RyeX19Cg==",
///         platform: {
///             architecture: azure_native.containerregistry.Architecture.Amd64,
///             os: azure_native.containerregistry.OS.Linux,
///         },
///         type: "EncodedTaskRunRequest",
///         values: [],
///     },
///     taskRunName: "myRun",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// task_run = azure_native.containerregistry.TaskRun("taskRun",
///     force_update_tag="test",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     run_request={
///         "credentials": {},
///         "encoded_task_content": "c3RlcHM6IAogIC0gY21kOiB7eyAuVmFsdWVzLmNvbW1hbmQgfX0K",
///         "encoded_values_content": "Y29tbWFuZDogYmFzaCBlY2hvIHt7LlJ1bi5SZWdpc3RyeX19Cg==",
///         "platform": {
///             "architecture": azure_native.containerregistry.Architecture.AMD64,
///             "os": azure_native.containerregistry.OS.LINUX,
///         },
///         "type": "EncodedTaskRunRequest",
///         "values": [],
///     },
///     task_run_name="myRun")
///
/// ```
///
/// ```yaml
/// resources:
///   taskRun:
///     type: azure-native:containerregistry:TaskRun
///     properties:
///       forceUpdateTag: test
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       runRequest:
///         credentials: {}
///         encodedTaskContent: c3RlcHM6IAogIC0gY21kOiB7eyAuVmFsdWVzLmNvbW1hbmQgfX0K
///         encodedValuesContent: Y29tbWFuZDogYmFzaCBlY2hvIHt7LlJ1bi5SZWdpc3RyeX19Cg==
///         platform:
///           architecture: amd64
///           os: Linux
///         type: EncodedTaskRunRequest
///         values: []
///       taskRunName: myRun
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
/// $ pulumi import azure-native:containerregistry:TaskRun myrun /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/taskRuns/{taskRunName}
/// ```
class TaskRun extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// How the run should be forced to rerun even if the run request configuration has not changed
  late final pulumi.Output<String?> forceUpdateTag;
  /// Identity for the resource.
  late final pulumi.Output<IdentityPropertiesResponse?> identity;
  /// The location of the resource
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The provisioning state of this task run
  late final pulumi.Output<String> provisioningState;
  /// The request (parameters) for the run
  late final pulumi.Output<DockerBuildRequestResponse?> runRequest;
  /// The result of this task run
  late final pulumi.Output<RunResponse> runResult;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [TaskRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TaskRun]. {@macro pulumi_containerregistry_task_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TaskRun(
    String name, {
    TaskRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:TaskRun',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.identity = registerOutput<IdentityPropertiesResponse?>('identity');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.runRequest = registerOutput<DockerBuildRequestResponse?>('runRequest');
    this.runResult = registerOutput<RunResponse>('runResult');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
