import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'job_args.dart';
import 'job_configuration_response.dart';
import 'job_template_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Container App Job
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Container Apps Job On A Connected Environment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.App.Job("job", new()
///     {
///         Configuration = new AzureNative.App.Inputs.JobConfigurationArgs
///         {
///             ManualTriggerConfig = new AzureNative.App.Inputs.JobConfigurationManualTriggerConfigArgs
///             {
///                 Parallelism = 4,
///                 ReplicaCompletionCount = 1,
///             },
///             ReplicaRetryLimit = 10,
///             ReplicaTimeout = 10,
///             TriggerType = AzureNative.App.TriggerType.Manual,
///         },
///         EnvironmentId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube",
///         ExtendedLocation = new AzureNative.App.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///             Type = AzureNative.App.ExtendedLocationTypes.CustomLocation,
///         },
///         JobName = "testcontainerAppsJob0",
///         Location = "East US",
///         ResourceGroupName = "rg",
///         Template = new AzureNative.App.Inputs.JobTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new AzureNative.App.Inputs.ContainerArgs
///                 {
///                     Image = "repo/testcontainerAppsJob0:v1",
///                     Name = "testcontainerAppsJob0",
///                     Probes = new[]
///                     {
///                         new AzureNative.App.Inputs.ContainerAppProbeArgs
///                         {
///                             HttpGet = new AzureNative.App.Inputs.ContainerAppProbeHttpGetArgs
///                             {
///                                 HttpHeaders = new[]
///                                 {
///                                     new AzureNative.App.Inputs.ContainerAppProbeHttpHeadersArgs
///                                     {
///                                         Name = "Custom-Header",
///                                         Value = "Awesome",
///                                     },
///                                 },
///                                 Path = "/health",
///                                 Port = 8080,
///                             },
///                             InitialDelaySeconds = 5,
///                             PeriodSeconds = 3,
///                             Type = AzureNative.App.Type.Liveness,
///                         },
///                     },
///                 },
///             },
///             InitContainers = new[]
///             {
///                 new AzureNative.App.Inputs.InitContainerArgs
///                 {
///                     Args = new[]
///                     {
///                         "-c",
///                         "while true; do echo hello; sleep 10;done",
///                     },
///                     Command = new[]
///                     {
///                         "/bin/sh",
///                     },
///                     Image = "repo/testcontainerAppsJob0:v4",
///                     Name = "testinitcontainerAppsJob0",
///                     Resources = new AzureNative.App.Inputs.ContainerResourcesArgs
///                     {
///                         Cpu = 0.2,
///                         Memory = "100Mi",
///                     },
///                 },
///             },
///         },
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewJob(ctx, "job", &app.JobArgs{
/// 			Configuration: &app.JobConfigurationArgs{
/// 				ManualTriggerConfig: &app.JobConfigurationManualTriggerConfigArgs{
/// 					Parallelism:            pulumi.Int(4),
/// 					ReplicaCompletionCount: pulumi.Int(1),
/// 				},
/// 				ReplicaRetryLimit: pulumi.Int(10),
/// 				ReplicaTimeout:    pulumi.Int(10),
/// 				TriggerType:       pulumi.String(app.TriggerTypeManual),
/// 			},
/// 			EnvironmentId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube"),
/// 			ExtendedLocation: &app.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation"),
/// 				Type: pulumi.String(app.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			JobName:           pulumi.String("testcontainerAppsJob0"),
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Template: &app.JobTemplateArgs{
/// 				Containers: app.ContainerArray{
/// 					&app.ContainerArgs{
/// 						Image: pulumi.String("repo/testcontainerAppsJob0:v1"),
/// 						Name:  pulumi.String("testcontainerAppsJob0"),
/// 						Probes: app.ContainerAppProbeArray{
/// 							&app.ContainerAppProbeArgs{
/// 								HttpGet: &app.ContainerAppProbeHttpGetArgs{
/// 									HttpHeaders: app.ContainerAppProbeHttpHeadersArray{
/// 										&app.ContainerAppProbeHttpHeadersArgs{
/// 											Name:  pulumi.String("Custom-Header"),
/// 											Value: pulumi.String("Awesome"),
/// 										},
/// 									},
/// 									Path: pulumi.String("/health"),
/// 									Port: pulumi.Int(8080),
/// 								},
/// 								InitialDelaySeconds: pulumi.Int(5),
/// 								PeriodSeconds:       pulumi.Int(3),
/// 								Type:                pulumi.String(app.TypeLiveness),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				InitContainers: app.InitContainerArray{
/// 					&app.InitContainerArgs{
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("-c"),
/// 							pulumi.String("while true; do echo hello; sleep 10;done"),
/// 						},
/// 						Command: pulumi.StringArray{
/// 							pulumi.String("/bin/sh"),
/// 						},
/// 						Image: pulumi.String("repo/testcontainerAppsJob0:v4"),
/// 						Name:  pulumi.String("testinitcontainerAppsJob0"),
/// 						Resources: &app.ContainerResourcesArgs{
/// 							Cpu:    pulumi.Float64(0.2),
/// 							Memory: pulumi.String("100Mi"),
/// 						},
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
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.app.Job;
/// import com.pulumi.azurenative.app.JobArgs;
/// import com.pulumi.azurenative.app.inputs.JobConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.JobConfigurationManualTriggerConfigArgs;
/// import com.pulumi.azurenative.app.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.app.inputs.JobTemplateArgs;
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
///             .configuration(JobConfigurationArgs.builder()
///                 .manualTriggerConfig(JobConfigurationManualTriggerConfigArgs.builder()
///                     .parallelism(4)
///                     .replicaCompletionCount(1)
///                     .build())
///                 .replicaRetryLimit(10)
///                 .replicaTimeout(10)
///                 .triggerType("Manual")
///                 .build())
///             .environmentId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation")
///                 .type("CustomLocation")
///                 .build())
///             .jobName("testcontainerAppsJob0")
///             .location("East US")
///             .resourceGroupName("rg")
///             .template(JobTemplateArgs.builder()
///                 .containers(ContainerArgs.builder()
///                     .image("repo/testcontainerAppsJob0:v1")
///                     .name("testcontainerAppsJob0")
///                     .probes(ContainerAppProbeArgs.builder()
///                         .httpGet(ContainerAppProbeHttpGetArgs.builder()
///                             .httpHeaders(ContainerAppProbeHttpHeadersArgs.builder()
///                                 .name("Custom-Header")
///                                 .value("Awesome")
///                                 .build())
///                             .path("/health")
///                             .port(8080)
///                             .build())
///                         .initialDelaySeconds(5)
///                         .periodSeconds(3)
///                         .type("Liveness")
///                         .build())
///                     .build())
///                 .initContainers(InitContainerArgs.builder()
///                     .args(
///                         "-c",
///                         "while true; do echo hello; sleep 10;done")
///                     .command("/bin/sh")
///                     .image("repo/testcontainerAppsJob0:v4")
///                     .name("testinitcontainerAppsJob0")
///                     .resources(ContainerResourcesArgs.builder()
///                         .cpu(0.2)
///                         .memory("100Mi")
///                         .build())
///                     .build())
///                 .build())
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
/// const job = new azure_native.app.Job("job", {
///     configuration: {
///         manualTriggerConfig: {
///             parallelism: 4,
///             replicaCompletionCount: 1,
///         },
///         replicaRetryLimit: 10,
///         replicaTimeout: 10,
///         triggerType: azure_native.app.TriggerType.Manual,
///     },
///     environmentId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube",
///     extendedLocation: {
///         name: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///         type: azure_native.app.ExtendedLocationTypes.CustomLocation,
///     },
///     jobName: "testcontainerAppsJob0",
///     location: "East US",
///     resourceGroupName: "rg",
///     template: {
///         containers: [{
///             image: "repo/testcontainerAppsJob0:v1",
///             name: "testcontainerAppsJob0",
///             probes: [{
///                 httpGet: {
///                     httpHeaders: [{
///                         name: "Custom-Header",
///                         value: "Awesome",
///                     }],
///                     path: "/health",
///                     port: 8080,
///                 },
///                 initialDelaySeconds: 5,
///                 periodSeconds: 3,
///                 type: azure_native.app.Type.Liveness,
///             }],
///         }],
///         initContainers: [{
///             args: [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             command: ["/bin/sh"],
///             image: "repo/testcontainerAppsJob0:v4",
///             name: "testinitcontainerAppsJob0",
///             resources: {
///                 cpu: 0.2,
///                 memory: "100Mi",
///             },
///         }],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.app.Job("job",
///     configuration={
///         "manual_trigger_config": {
///             "parallelism": 4,
///             "replica_completion_count": 1,
///         },
///         "replica_retry_limit": 10,
///         "replica_timeout": 10,
///         "trigger_type": azure_native.app.TriggerType.MANUAL,
///     },
///     environment_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube",
///     extended_location={
///         "name": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///         "type": azure_native.app.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     job_name="testcontainerAppsJob0",
///     location="East US",
///     resource_group_name="rg",
///     template={
///         "containers": [{
///             "image": "repo/testcontainerAppsJob0:v1",
///             "name": "testcontainerAppsJob0",
///             "probes": [{
///                 "http_get": {
///                     "http_headers": [{
///                         "name": "Custom-Header",
///                         "value": "Awesome",
///                     }],
///                     "path": "/health",
///                     "port": 8080,
///                 },
///                 "initial_delay_seconds": 5,
///                 "period_seconds": 3,
///                 "type": azure_native.app.Type.LIVENESS,
///             }],
///         }],
///         "init_containers": [{
///             "args": [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             "command": ["/bin/sh"],
///             "image": "repo/testcontainerAppsJob0:v4",
///             "name": "testinitcontainerAppsJob0",
///             "resources": {
///                 "cpu": 0.2,
///                 "memory": "100Mi",
///             },
///         }],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:app:Job
///     properties:
///       configuration:
///         manualTriggerConfig:
///           parallelism: 4
///           replicaCompletionCount: 1
///         replicaRetryLimit: 10
///         replicaTimeout: 10
///         triggerType: Manual
///       environmentId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube
///       extendedLocation:
///         name: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation
///         type: CustomLocation
///       jobName: testcontainerAppsJob0
///       location: East US
///       resourceGroupName: rg
///       template:
///         containers:
///           - image: repo/testcontainerAppsJob0:v1
///             name: testcontainerAppsJob0
///             probes:
///               - httpGet:
///                   httpHeaders:
///                     - name: Custom-Header
///                       value: Awesome
///                   path: /health
///                   port: 8080
///                 initialDelaySeconds: 5
///                 periodSeconds: 3
///                 type: Liveness
///         initContainers:
///           - args:
///               - -c
///               - while true; do echo hello; sleep 10;done
///             command:
///               - /bin/sh
///             image: repo/testcontainerAppsJob0:v4
///             name: testinitcontainerAppsJob0
///             resources:
///               cpu: 0.2
///               memory: 100Mi
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
/// $ pulumi import azure-native:app:Job testcontainerAppsJob0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/jobs/{jobName}
/// ```
class Job extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Container Apps Job configuration properties.
  late final pulumi.Output<JobConfigurationResponse?> configuration;

  /// Resource ID of environment.
  late final pulumi.Output<String?> environmentId;

  /// The endpoint of the eventstream of the container apps job.
  late final pulumi.Output<String> eventStreamEndpoint;

  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Managed identities needed by a container app job to interact with other Azure services to not maintain any secrets or credentials in code.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Outbound IP Addresses of a container apps job.
  late final pulumi.Output<List<String>> outboundIpAddresses;

  /// Provisioning state of the Container Apps Job.
  late final pulumi.Output<String> provisioningState;

  /// Current running state of the job
  late final pulumi.Output<String> runningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Container Apps job definition.
  late final pulumi.Output<JobTemplateResponse?> template;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Workload profile name to pin for container apps job execution.
  late final pulumi.Output<String?> workloadProfileName;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_app_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:app:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configuration = registerOutput<JobConfigurationResponse?>('configuration');
    environmentId = registerOutput<String?>('environmentId');
    eventStreamEndpoint = registerOutput<String>('eventStreamEndpoint');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<List<String>>('outboundIpAddresses');
    provisioningState = registerOutput<String>('provisioningState');
    runningState = registerOutput<String>('runningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    template = registerOutput<JobTemplateResponse?>('template');
    type = registerOutput<String>('type');
    workloadProfileName = registerOutput<String?>('workloadProfileName');
  }
}
