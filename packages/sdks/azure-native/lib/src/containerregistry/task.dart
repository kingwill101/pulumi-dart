import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_properties_response.dart';
import 'credentials_response.dart';
import 'identity_properties_response.dart';
import 'platform_properties_response.dart';
import 'system_data_response.dart';
import 'task_args.dart';
import 'trigger_properties_response.dart';

/// The task that has the ARM resource and task properties.
/// The task will have all information to schedule a run against it.
///
/// Uses Azure REST API version 2019-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Tasks_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new AzureNative.ContainerRegistry.Task("task", new()
///     {
///         AgentConfiguration = new AzureNative.ContainerRegistry.Inputs.AgentPropertiesArgs
///         {
///             Cpu = 2,
///         },
///         Identity = new AzureNative.ContainerRegistry.Inputs.IdentityPropertiesArgs
///         {
///             Type = AzureNative.ContainerRegistry.ResourceIdentityType.SystemAssigned,
///         },
///         IsSystemTask = false,
///         Location = "eastus",
///         LogTemplate = "acr/tasks:{{.Run.OS}}",
///         Platform = new AzureNative.ContainerRegistry.Inputs.PlatformPropertiesArgs
///         {
///             Architecture = AzureNative.ContainerRegistry.Architecture.Amd64,
///             Os = AzureNative.ContainerRegistry.OS.Linux,
///         },
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Status = AzureNative.ContainerRegistry.TaskStatus.Enabled,
///         Step = new AzureNative.ContainerRegistry.Inputs.DockerBuildStepArgs
///         {
///             Arguments = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.ArgumentArgs
///                 {
///                     IsSecret = false,
///                     Name = "mytestargument",
///                     Value = "mytestvalue",
///                 },
///                 new AzureNative.ContainerRegistry.Inputs.ArgumentArgs
///                 {
///                     IsSecret = true,
///                     Name = "mysecrettestargument",
///                     Value = "mysecrettestvalue",
///                 },
///             },
///             ContextPath = "src",
///             DockerFilePath = "src/DockerFile",
///             ImageNames = new[]
///             {
///                 "azurerest:testtag",
///             },
///             IsPushEnabled = true,
///             NoCache = false,
///             Type = "Docker",
///         },
///         Tags =
///         {
///             { "testkey", "value" },
///         },
///         TaskName = "mytTask",
///         Trigger = new AzureNative.ContainerRegistry.Inputs.TriggerPropertiesArgs
///         {
///             BaseImageTrigger = new AzureNative.ContainerRegistry.Inputs.BaseImageTriggerArgs
///             {
///                 BaseImageTriggerType = AzureNative.ContainerRegistry.BaseImageTriggerType.Runtime,
///                 Name = "myBaseImageTrigger",
///                 UpdateTriggerEndpoint = "https://user:pass@mycicd.webhook.com?token=foo",
///                 UpdateTriggerPayloadType = AzureNative.ContainerRegistry.UpdateTriggerPayloadType.Token,
///             },
///             SourceTriggers = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.SourceTriggerArgs
///                 {
///                     Name = "mySourceTrigger",
///                     SourceRepository = new AzureNative.ContainerRegistry.Inputs.SourcePropertiesArgs
///                     {
///                         Branch = "master",
///                         RepositoryUrl = "https://github.com/Azure/azure-rest-api-specs",
///                         SourceControlAuthProperties = new AzureNative.ContainerRegistry.Inputs.AuthInfoArgs
///                         {
///                             Token = "xxxxx",
///                             TokenType = AzureNative.ContainerRegistry.TokenType.PAT,
///                         },
///                         SourceControlType = AzureNative.ContainerRegistry.SourceControlType.Github,
///                     },
///                     SourceTriggerEvents = new[]
///                     {
///                         AzureNative.ContainerRegistry.SourceTriggerEvent.Commit,
///                     },
///                 },
///             },
///             TimerTriggers = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.TimerTriggerArgs
///                 {
///                     Name = "myTimerTrigger",
///                     Schedule = "30 9 * * 1-5",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewTask(ctx, "task", &containerregistry.TaskArgs{
/// 			AgentConfiguration: &containerregistry.AgentPropertiesArgs{
/// 				Cpu: pulumi.Int(2),
/// 			},
/// 			Identity: &containerregistry.IdentityPropertiesArgs{
/// 				Type: containerregistry.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			IsSystemTask: pulumi.Bool(false),
/// 			Location:     pulumi.String("eastus"),
/// 			LogTemplate:  pulumi.String("acr/tasks:{{.Run.OS}}"),
/// 			Platform: &containerregistry.PlatformPropertiesArgs{
/// 				Architecture: pulumi.String(containerregistry.ArchitectureAmd64),
/// 				Os:           pulumi.String(containerregistry.OSLinux),
/// 			},
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Status:            pulumi.String(containerregistry.TaskStatusEnabled),
/// 			Step: &containerregistry.DockerBuildStepArgs{
/// 				Arguments: containerregistry.ArgumentArray{
/// 					&containerregistry.ArgumentArgs{
/// 						IsSecret: pulumi.Bool(false),
/// 						Name:     pulumi.String("mytestargument"),
/// 						Value:    pulumi.String("mytestvalue"),
/// 					},
/// 					&containerregistry.ArgumentArgs{
/// 						IsSecret: pulumi.Bool(true),
/// 						Name:     pulumi.String("mysecrettestargument"),
/// 						Value:    pulumi.String("mysecrettestvalue"),
/// 					},
/// 				},
/// 				ContextPath:    pulumi.String("src"),
/// 				DockerFilePath: pulumi.String("src/DockerFile"),
/// 				ImageNames: pulumi.StringArray{
/// 					pulumi.String("azurerest:testtag"),
/// 				},
/// 				IsPushEnabled: pulumi.Bool(true),
/// 				NoCache:       pulumi.Bool(false),
/// 				Type:          pulumi.String("Docker"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"testkey": pulumi.String("value"),
/// 			},
/// 			TaskName: pulumi.String("mytTask"),
/// 			Trigger: &containerregistry.TriggerPropertiesArgs{
/// 				BaseImageTrigger: &containerregistry.BaseImageTriggerArgs{
/// 					BaseImageTriggerType:     pulumi.String(containerregistry.BaseImageTriggerTypeRuntime),
/// 					Name:                     pulumi.String("myBaseImageTrigger"),
/// 					UpdateTriggerEndpoint:    pulumi.String("https://user:pass@mycicd.webhook.com?token=foo"),
/// 					UpdateTriggerPayloadType: pulumi.String(containerregistry.UpdateTriggerPayloadTypeToken),
/// 				},
/// 				SourceTriggers: containerregistry.SourceTriggerArray{
/// 					&containerregistry.SourceTriggerArgs{
/// 						Name: pulumi.String("mySourceTrigger"),
/// 						SourceRepository: &containerregistry.SourcePropertiesArgs{
/// 							Branch:        pulumi.String("master"),
/// 							RepositoryUrl: pulumi.String("https://github.com/Azure/azure-rest-api-specs"),
/// 							SourceControlAuthProperties: &containerregistry.AuthInfoArgs{
/// 								Token:     pulumi.String("xxxxx"),
/// 								TokenType: pulumi.String(containerregistry.TokenTypePAT),
/// 							},
/// 							SourceControlType: pulumi.String(containerregistry.SourceControlTypeGithub),
/// 						},
/// 						SourceTriggerEvents: pulumi.StringArray{
/// 							pulumi.String(containerregistry.SourceTriggerEventCommit),
/// 						},
/// 					},
/// 				},
/// 				TimerTriggers: containerregistry.TimerTriggerArray{
/// 					&containerregistry.TimerTriggerArgs{
/// 						Name:     pulumi.String("myTimerTrigger"),
/// 						Schedule: pulumi.String("30 9 * * 1-5"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerregistry_task" "task" {
///   agent_configuration = {
///     cpu = 2
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
///   is_system_task = false
///   location       = "eastus"
///   log_template   = "acr/tasks:{{.Run.OS}}"
///   platform = {
///     architecture = "amd64"
///     os           = "Linux"
///   }
///   registry_name       = "myRegistry"
///   resource_group_name = "myResourceGroup"
///   status              = "Enabled"
///   step = {
///     "arguments" = [{
///       "isSecret" = false
///       "name"     = "mytestargument"
///       "value"    = "mytestvalue"
///       }, {
///       "isSecret" = true
///       "name"     = "mysecrettestargument"
///       "value"    = "mysecrettestvalue"
///     }]
///     "contextPath"    = "src"
///     "dockerFilePath" = "src/DockerFile"
///     "imageNames"     = ["azurerest:testtag"]
///     "isPushEnabled"  = true
///     "noCache"        = false
///     "type"           = "Docker"
///   }
///   tags = {
///     "testkey" = "value"
///   }
///   task_name = "mytTask"
///   trigger = {
///     base_image_trigger = {
///       base_image_trigger_type     = "Runtime"
///       name                        = "myBaseImageTrigger"
///       update_trigger_endpoint     = "https://user:pass@mycicd.webhook.com?token=foo"
///       update_trigger_payload_type = "Token"
///     }
///     source_triggers = [{
///       "name" = "mySourceTrigger"
///       "sourceRepository" = {
///         "branch"        = "master"
///         "repositoryUrl" = "https://github.com/Azure/azure-rest-api-specs"
///         "sourceControlAuthProperties" = {
///           "token"     = "xxxxx"
///           "tokenType" = "PAT"
///         }
///         "sourceControlType" = "Github"
///       }
///       "sourceTriggerEvents" = ["commit"]
///     }]
///     timer_triggers = [{
///       "name"     = "myTimerTrigger"
///       "schedule" = "30 9 * * 1-5"
///     }]
///   }
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
/// import com.pulumi.azurenative.containerregistry.Task;
/// import com.pulumi.azurenative.containerregistry.TaskArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.AgentPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.IdentityPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.PlatformPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.TriggerPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.BaseImageTriggerArgs;
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
///         var task = new Task("task", TaskArgs.builder()
///             .agentConfiguration(AgentPropertiesArgs.builder()
///                 .cpu(2)
///                 .build())
///             .identity(IdentityPropertiesArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .isSystemTask(false)
///             .location("eastus")
///             .logTemplate("acr/tasks:{{.Run.OS}}")
///             .platform(PlatformPropertiesArgs.builder()
///                 .architecture("amd64")
///                 .os("Linux")
///                 .build())
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .status("Enabled")
///             .step(DockerBuildStepArgs.builder()
///                 .arguments(
///                     ArgumentArgs.builder()
///                         .isSecret(false)
///                         .name("mytestargument")
///                         .value("mytestvalue")
///                         .build(),
///                     ArgumentArgs.builder()
///                         .isSecret(true)
///                         .name("mysecrettestargument")
///                         .value("mysecrettestvalue")
///                         .build())
///                 .contextPath("src")
///                 .dockerFilePath("src/DockerFile")
///                 .imageNames("azurerest:testtag")
///                 .isPushEnabled(true)
///                 .noCache(false)
///                 .type("Docker")
///                 .build())
///             .tags(Map.of("testkey", "value"))
///             .taskName("mytTask")
///             .trigger(TriggerPropertiesArgs.builder()
///                 .baseImageTrigger(BaseImageTriggerArgs.builder()
///                     .baseImageTriggerType("Runtime")
///                     .name("myBaseImageTrigger")
///                     .updateTriggerEndpoint("https://user:pass@mycicd.webhook.com?token=foo")
///                     .updateTriggerPayloadType("Token")
///                     .build())
///                 .sourceTriggers(SourceTriggerArgs.builder()
///                     .name("mySourceTrigger")
///                     .sourceRepository(SourcePropertiesArgs.builder()
///                         .branch("master")
///                         .repositoryUrl("https://github.com/Azure/azure-rest-api-specs")
///                         .sourceControlAuthProperties(AuthInfoArgs.builder()
///                             .token("xxxxx")
///                             .tokenType("PAT")
///                             .build())
///                         .sourceControlType("Github")
///                         .build())
///                     .sourceTriggerEvents("commit")
///                     .build())
///                 .timerTriggers(TimerTriggerArgs.builder()
///                     .name("myTimerTrigger")
///                     .schedule("30 9 * * 1-5")
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
/// const task = new azure_native.containerregistry.Task("task", {
///     agentConfiguration: {
///         cpu: 2,
///     },
///     identity: {
///         type: azure_native.containerregistry.ResourceIdentityType.SystemAssigned,
///     },
///     isSystemTask: false,
///     location: "eastus",
///     logTemplate: "acr/tasks:{{.Run.OS}}",
///     platform: {
///         architecture: azure_native.containerregistry.Architecture.Amd64,
///         os: azure_native.containerregistry.OS.Linux,
///     },
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     status: azure_native.containerregistry.TaskStatus.Enabled,
///     step: {
///         arguments: [
///             {
///                 isSecret: false,
///                 name: "mytestargument",
///                 value: "mytestvalue",
///             },
///             {
///                 isSecret: true,
///                 name: "mysecrettestargument",
///                 value: "mysecrettestvalue",
///             },
///         ],
///         contextPath: "src",
///         dockerFilePath: "src/DockerFile",
///         imageNames: ["azurerest:testtag"],
///         isPushEnabled: true,
///         noCache: false,
///         type: "Docker",
///     },
///     tags: {
///         testkey: "value",
///     },
///     taskName: "mytTask",
///     trigger: {
///         baseImageTrigger: {
///             baseImageTriggerType: azure_native.containerregistry.BaseImageTriggerType.Runtime,
///             name: "myBaseImageTrigger",
///             updateTriggerEndpoint: "https://user:pass@mycicd.webhook.com?token=foo",
///             updateTriggerPayloadType: azure_native.containerregistry.UpdateTriggerPayloadType.Token,
///         },
///         sourceTriggers: [{
///             name: "mySourceTrigger",
///             sourceRepository: {
///                 branch: "master",
///                 repositoryUrl: "https://github.com/Azure/azure-rest-api-specs",
///                 sourceControlAuthProperties: {
///                     token: "xxxxx",
///                     tokenType: azure_native.containerregistry.TokenType.PAT,
///                 },
///                 sourceControlType: azure_native.containerregistry.SourceControlType.Github,
///             },
///             sourceTriggerEvents: [azure_native.containerregistry.SourceTriggerEvent.Commit],
///         }],
///         timerTriggers: [{
///             name: "myTimerTrigger",
///             schedule: "30 9 * * 1-5",
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
/// task = azure_native.containerregistry.Task("task",
///     agent_configuration={
///         "cpu": 2,
///     },
///     identity={
///         "type": azure_native.containerregistry.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     is_system_task=False,
///     location="eastus",
///     log_template="acr/tasks:{{.Run.OS}}",
///     platform={
///         "architecture": azure_native.containerregistry.Architecture.AMD64,
///         "os": azure_native.containerregistry.OS.LINUX,
///     },
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     status=azure_native.containerregistry.TaskStatus.ENABLED,
///     step={
///         "arguments": [
///             {
///                 "is_secret": False,
///                 "name": "mytestargument",
///                 "value": "mytestvalue",
///             },
///             {
///                 "is_secret": True,
///                 "name": "mysecrettestargument",
///                 "value": "mysecrettestvalue",
///             },
///         ],
///         "context_path": "src",
///         "docker_file_path": "src/DockerFile",
///         "image_names": ["azurerest:testtag"],
///         "is_push_enabled": True,
///         "no_cache": False,
///         "type": "Docker",
///     },
///     tags={
///         "testkey": "value",
///     },
///     task_name="mytTask",
///     trigger={
///         "base_image_trigger": {
///             "base_image_trigger_type": azure_native.containerregistry.BaseImageTriggerType.RUNTIME,
///             "name": "myBaseImageTrigger",
///             "update_trigger_endpoint": "https://user:pass@mycicd.webhook.com?token=foo",
///             "update_trigger_payload_type": azure_native.containerregistry.UpdateTriggerPayloadType.TOKEN,
///         },
///         "source_triggers": [{
///             "name": "mySourceTrigger",
///             "source_repository": {
///                 "branch": "master",
///                 "repository_url": "https://github.com/Azure/azure-rest-api-specs",
///                 "source_control_auth_properties": {
///                     "token": "xxxxx",
///                     "token_type": azure_native.containerregistry.TokenType.PAT,
///                 },
///                 "source_control_type": azure_native.containerregistry.SourceControlType.GITHUB,
///             },
///             "source_trigger_events": [azure_native.containerregistry.SourceTriggerEvent.COMMIT],
///         }],
///         "timer_triggers": [{
///             "name": "myTimerTrigger",
///             "schedule": "30 9 * * 1-5",
///         }],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   task:
///     type: azure-native:containerregistry:Task
///     properties:
///       agentConfiguration:
///         cpu: 2
///       identity:
///         type: SystemAssigned
///       isSystemTask: false
///       location: eastus
///       logTemplate: acr/tasks:{{.Run.OS}}
///       platform:
///         architecture: amd64
///         os: Linux
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       status: Enabled
///       step:
///         arguments:
///           - isSecret: false
///             name: mytestargument
///             value: mytestvalue
///           - isSecret: true
///             name: mysecrettestargument
///             value: mysecrettestvalue
///         contextPath: src
///         dockerFilePath: src/DockerFile
///         imageNames:
///           - azurerest:testtag
///         isPushEnabled: true
///         noCache: false
///         type: Docker
///       tags:
///         testkey: value
///       taskName: mytTask
///       trigger:
///         baseImageTrigger:
///           baseImageTriggerType: Runtime
///           name: myBaseImageTrigger
///           updateTriggerEndpoint: https://user:pass@mycicd.webhook.com?token=foo
///           updateTriggerPayloadType: Token
///         sourceTriggers:
///           - name: mySourceTrigger
///             sourceRepository:
///               branch: master
///               repositoryUrl: https://github.com/Azure/azure-rest-api-specs
///               sourceControlAuthProperties:
///                 token: xxxxx
///                 tokenType: PAT
///               sourceControlType: Github
///             sourceTriggerEvents:
///               - commit
///         timerTriggers:
///           - name: myTimerTrigger
///             schedule: 30 9 * * 1-5
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Tasks_Create_QuickTask
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new AzureNative.ContainerRegistry.Task("task", new()
///     {
///         IsSystemTask = true,
///         Location = "eastus",
///         LogTemplate = "acr/tasks:{{.Run.OS}}",
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Status = AzureNative.ContainerRegistry.TaskStatus.Enabled,
///         Tags =
///         {
///             { "testkey", "value" },
///         },
///         TaskName = "quicktask",
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
/// 		_, err := containerregistry.NewTask(ctx, "task", &containerregistry.TaskArgs{
/// 			IsSystemTask:      pulumi.Bool(true),
/// 			Location:          pulumi.String("eastus"),
/// 			LogTemplate:       pulumi.String("acr/tasks:{{.Run.OS}}"),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Status:            pulumi.String(containerregistry.TaskStatusEnabled),
/// 			Tags: pulumi.StringMap{
/// 				"testkey": pulumi.String("value"),
/// 			},
/// 			TaskName: pulumi.String("quicktask"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerregistry_task" "task" {
///   is_system_task      = true
///   location            = "eastus"
///   log_template        = "acr/tasks:{{.Run.OS}}"
///   registry_name       = "myRegistry"
///   resource_group_name = "myResourceGroup"
///   status              = "Enabled"
///   tags = {
///     "testkey" = "value"
///   }
///   task_name = "quicktask"
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
/// import com.pulumi.azurenative.containerregistry.Task;
/// import com.pulumi.azurenative.containerregistry.TaskArgs;
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
///         var task = new Task("task", TaskArgs.builder()
///             .isSystemTask(true)
///             .location("eastus")
///             .logTemplate("acr/tasks:{{.Run.OS}}")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .status("Enabled")
///             .tags(Map.of("testkey", "value"))
///             .taskName("quicktask")
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
/// const task = new azure_native.containerregistry.Task("task", {
///     isSystemTask: true,
///     location: "eastus",
///     logTemplate: "acr/tasks:{{.Run.OS}}",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     status: azure_native.containerregistry.TaskStatus.Enabled,
///     tags: {
///         testkey: "value",
///     },
///     taskName: "quicktask",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// task = azure_native.containerregistry.Task("task",
///     is_system_task=True,
///     location="eastus",
///     log_template="acr/tasks:{{.Run.OS}}",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     status=azure_native.containerregistry.TaskStatus.ENABLED,
///     tags={
///         "testkey": "value",
///     },
///     task_name="quicktask")
///
/// ```
///
/// ```yaml
/// resources:
///   task:
///     type: azure-native:containerregistry:Task
///     properties:
///       isSystemTask: true
///       location: eastus
///       logTemplate: acr/tasks:{{.Run.OS}}
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       status: Enabled
///       tags:
///         testkey: value
///       taskName: quicktask
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Tasks_Create_WithSystemAndUserIdentities
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new AzureNative.ContainerRegistry.Task("task", new()
///     {
///         AgentConfiguration = new AzureNative.ContainerRegistry.Inputs.AgentPropertiesArgs
///         {
///             Cpu = 2,
///         },
///         Identity = new AzureNative.ContainerRegistry.Inputs.IdentityPropertiesArgs
///         {
///             Type = AzureNative.ContainerRegistry.ResourceIdentityType.SystemAssigned_UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2", null },
///             },
///         },
///         IsSystemTask = false,
///         Location = "eastus",
///         Platform = new AzureNative.ContainerRegistry.Inputs.PlatformPropertiesArgs
///         {
///             Architecture = AzureNative.ContainerRegistry.Architecture.Amd64,
///             Os = AzureNative.ContainerRegistry.OS.Linux,
///         },
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Status = AzureNative.ContainerRegistry.TaskStatus.Enabled,
///         Step = new AzureNative.ContainerRegistry.Inputs.DockerBuildStepArgs
///         {
///             Arguments = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.ArgumentArgs
///                 {
///                     IsSecret = false,
///                     Name = "mytestargument",
///                     Value = "mytestvalue",
///                 },
///                 new AzureNative.ContainerRegistry.Inputs.ArgumentArgs
///                 {
///                     IsSecret = true,
///                     Name = "mysecrettestargument",
///                     Value = "mysecrettestvalue",
///                 },
///             },
///             ContextPath = "src",
///             DockerFilePath = "src/DockerFile",
///             ImageNames = new[]
///             {
///                 "azurerest:testtag",
///             },
///             IsPushEnabled = true,
///             NoCache = false,
///             Type = "Docker",
///         },
///         Tags =
///         {
///             { "testkey", "value" },
///         },
///         TaskName = "mytTask",
///         Trigger = new AzureNative.ContainerRegistry.Inputs.TriggerPropertiesArgs
///         {
///             BaseImageTrigger = new AzureNative.ContainerRegistry.Inputs.BaseImageTriggerArgs
///             {
///                 BaseImageTriggerType = AzureNative.ContainerRegistry.BaseImageTriggerType.Runtime,
///                 Name = "myBaseImageTrigger",
///                 UpdateTriggerEndpoint = "https://user:pass@mycicd.webhook.com?token=foo",
///                 UpdateTriggerPayloadType = AzureNative.ContainerRegistry.UpdateTriggerPayloadType.Default,
///             },
///             SourceTriggers = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.SourceTriggerArgs
///                 {
///                     Name = "mySourceTrigger",
///                     SourceRepository = new AzureNative.ContainerRegistry.Inputs.SourcePropertiesArgs
///                     {
///                         Branch = "master",
///                         RepositoryUrl = "https://github.com/Azure/azure-rest-api-specs",
///                         SourceControlAuthProperties = new AzureNative.ContainerRegistry.Inputs.AuthInfoArgs
///                         {
///                             Token = "xxxxx",
///                             TokenType = AzureNative.ContainerRegistry.TokenType.PAT,
///                         },
///                         SourceControlType = AzureNative.ContainerRegistry.SourceControlType.Github,
///                     },
///                     SourceTriggerEvents = new[]
///                     {
///                         AzureNative.ContainerRegistry.SourceTriggerEvent.Commit,
///                     },
///                 },
///             },
///             TimerTriggers = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.TimerTriggerArgs
///                 {
///                     Name = "myTimerTrigger",
///                     Schedule = "30 9 * * 1-5",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewTask(ctx, "task", &containerregistry.TaskArgs{
/// 			AgentConfiguration: &containerregistry.AgentPropertiesArgs{
/// 				Cpu: pulumi.Int(2),
/// 			},
/// 			Identity: &containerregistry.IdentityPropertiesArgs{
/// 				Type: containerregistry.ResourceIdentityType_SystemAssigned_UserAssigned,
/// 				UserAssignedIdentities: containerregistry.UserIdentityPropertiesMap{
/// 					"/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": &containerregistry.UserIdentityPropertiesArgs{},
/// 				},
/// 			},
/// 			IsSystemTask: pulumi.Bool(false),
/// 			Location:     pulumi.String("eastus"),
/// 			Platform: &containerregistry.PlatformPropertiesArgs{
/// 				Architecture: pulumi.String(containerregistry.ArchitectureAmd64),
/// 				Os:           pulumi.String(containerregistry.OSLinux),
/// 			},
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Status:            pulumi.String(containerregistry.TaskStatusEnabled),
/// 			Step: &containerregistry.DockerBuildStepArgs{
/// 				Arguments: containerregistry.ArgumentArray{
/// 					&containerregistry.ArgumentArgs{
/// 						IsSecret: pulumi.Bool(false),
/// 						Name:     pulumi.String("mytestargument"),
/// 						Value:    pulumi.String("mytestvalue"),
/// 					},
/// 					&containerregistry.ArgumentArgs{
/// 						IsSecret: pulumi.Bool(true),
/// 						Name:     pulumi.String("mysecrettestargument"),
/// 						Value:    pulumi.String("mysecrettestvalue"),
/// 					},
/// 				},
/// 				ContextPath:    pulumi.String("src"),
/// 				DockerFilePath: pulumi.String("src/DockerFile"),
/// 				ImageNames: pulumi.StringArray{
/// 					pulumi.String("azurerest:testtag"),
/// 				},
/// 				IsPushEnabled: pulumi.Bool(true),
/// 				NoCache:       pulumi.Bool(false),
/// 				Type:          pulumi.String("Docker"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"testkey": pulumi.String("value"),
/// 			},
/// 			TaskName: pulumi.String("mytTask"),
/// 			Trigger: &containerregistry.TriggerPropertiesArgs{
/// 				BaseImageTrigger: &containerregistry.BaseImageTriggerArgs{
/// 					BaseImageTriggerType:     pulumi.String(containerregistry.BaseImageTriggerTypeRuntime),
/// 					Name:                     pulumi.String("myBaseImageTrigger"),
/// 					UpdateTriggerEndpoint:    pulumi.String("https://user:pass@mycicd.webhook.com?token=foo"),
/// 					UpdateTriggerPayloadType: pulumi.String(containerregistry.UpdateTriggerPayloadTypeDefault),
/// 				},
/// 				SourceTriggers: containerregistry.SourceTriggerArray{
/// 					&containerregistry.SourceTriggerArgs{
/// 						Name: pulumi.String("mySourceTrigger"),
/// 						SourceRepository: &containerregistry.SourcePropertiesArgs{
/// 							Branch:        pulumi.String("master"),
/// 							RepositoryUrl: pulumi.String("https://github.com/Azure/azure-rest-api-specs"),
/// 							SourceControlAuthProperties: &containerregistry.AuthInfoArgs{
/// 								Token:     pulumi.String("xxxxx"),
/// 								TokenType: pulumi.String(containerregistry.TokenTypePAT),
/// 							},
/// 							SourceControlType: pulumi.String(containerregistry.SourceControlTypeGithub),
/// 						},
/// 						SourceTriggerEvents: pulumi.StringArray{
/// 							pulumi.String(containerregistry.SourceTriggerEventCommit),
/// 						},
/// 					},
/// 				},
/// 				TimerTriggers: containerregistry.TimerTriggerArray{
/// 					&containerregistry.TimerTriggerArgs{
/// 						Name:     pulumi.String("myTimerTrigger"),
/// 						Schedule: pulumi.String("30 9 * * 1-5"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerregistry_task" "task" {
///   agent_configuration = {
///     cpu = 2
///   }
///   identity = {
///     type = "SystemAssigned, UserAssigned"
///     user_assigned_identities = {
///       "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2" = {}
///     }
///   }
///   is_system_task = false
///   location       = "eastus"
///   platform = {
///     architecture = "amd64"
///     os           = "Linux"
///   }
///   registry_name       = "myRegistry"
///   resource_group_name = "myResourceGroup"
///   status              = "Enabled"
///   step = {
///     "arguments" = [{
///       "isSecret" = false
///       "name"     = "mytestargument"
///       "value"    = "mytestvalue"
///       }, {
///       "isSecret" = true
///       "name"     = "mysecrettestargument"
///       "value"    = "mysecrettestvalue"
///     }]
///     "contextPath"    = "src"
///     "dockerFilePath" = "src/DockerFile"
///     "imageNames"     = ["azurerest:testtag"]
///     "isPushEnabled"  = true
///     "noCache"        = false
///     "type"           = "Docker"
///   }
///   tags = {
///     "testkey" = "value"
///   }
///   task_name = "mytTask"
///   trigger = {
///     base_image_trigger = {
///       base_image_trigger_type     = "Runtime"
///       name                        = "myBaseImageTrigger"
///       update_trigger_endpoint     = "https://user:pass@mycicd.webhook.com?token=foo"
///       update_trigger_payload_type = "Default"
///     }
///     source_triggers = [{
///       "name" = "mySourceTrigger"
///       "sourceRepository" = {
///         "branch"        = "master"
///         "repositoryUrl" = "https://github.com/Azure/azure-rest-api-specs"
///         "sourceControlAuthProperties" = {
///           "token"     = "xxxxx"
///           "tokenType" = "PAT"
///         }
///         "sourceControlType" = "Github"
///       }
///       "sourceTriggerEvents" = ["commit"]
///     }]
///     timer_triggers = [{
///       "name"     = "myTimerTrigger"
///       "schedule" = "30 9 * * 1-5"
///     }]
///   }
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
/// import com.pulumi.azurenative.containerregistry.Task;
/// import com.pulumi.azurenative.containerregistry.TaskArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.AgentPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.IdentityPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.PlatformPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.TriggerPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.BaseImageTriggerArgs;
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
///         var task = new Task("task", TaskArgs.builder()
///             .agentConfiguration(AgentPropertiesArgs.builder()
///                 .cpu(2)
///                 .build())
///             .identity(IdentityPropertiesArgs.builder()
///                 .type("SystemAssigned, UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2", UserIdentityPropertiesArgs.builder()
///                     .build()))
///                 .build())
///             .isSystemTask(false)
///             .location("eastus")
///             .platform(PlatformPropertiesArgs.builder()
///                 .architecture("amd64")
///                 .os("Linux")
///                 .build())
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .status("Enabled")
///             .step(DockerBuildStepArgs.builder()
///                 .arguments(
///                     ArgumentArgs.builder()
///                         .isSecret(false)
///                         .name("mytestargument")
///                         .value("mytestvalue")
///                         .build(),
///                     ArgumentArgs.builder()
///                         .isSecret(true)
///                         .name("mysecrettestargument")
///                         .value("mysecrettestvalue")
///                         .build())
///                 .contextPath("src")
///                 .dockerFilePath("src/DockerFile")
///                 .imageNames("azurerest:testtag")
///                 .isPushEnabled(true)
///                 .noCache(false)
///                 .type("Docker")
///                 .build())
///             .tags(Map.of("testkey", "value"))
///             .taskName("mytTask")
///             .trigger(TriggerPropertiesArgs.builder()
///                 .baseImageTrigger(BaseImageTriggerArgs.builder()
///                     .baseImageTriggerType("Runtime")
///                     .name("myBaseImageTrigger")
///                     .updateTriggerEndpoint("https://user:pass@mycicd.webhook.com?token=foo")
///                     .updateTriggerPayloadType("Default")
///                     .build())
///                 .sourceTriggers(SourceTriggerArgs.builder()
///                     .name("mySourceTrigger")
///                     .sourceRepository(SourcePropertiesArgs.builder()
///                         .branch("master")
///                         .repositoryUrl("https://github.com/Azure/azure-rest-api-specs")
///                         .sourceControlAuthProperties(AuthInfoArgs.builder()
///                             .token("xxxxx")
///                             .tokenType("PAT")
///                             .build())
///                         .sourceControlType("Github")
///                         .build())
///                     .sourceTriggerEvents("commit")
///                     .build())
///                 .timerTriggers(TimerTriggerArgs.builder()
///                     .name("myTimerTrigger")
///                     .schedule("30 9 * * 1-5")
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
/// const task = new azure_native.containerregistry.Task("task", {
///     agentConfiguration: {
///         cpu: 2,
///     },
///     identity: {
///         type: azure_native.containerregistry.ResourceIdentityType.SystemAssigned_UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": {},
///         },
///     },
///     isSystemTask: false,
///     location: "eastus",
///     platform: {
///         architecture: azure_native.containerregistry.Architecture.Amd64,
///         os: azure_native.containerregistry.OS.Linux,
///     },
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     status: azure_native.containerregistry.TaskStatus.Enabled,
///     step: {
///         arguments: [
///             {
///                 isSecret: false,
///                 name: "mytestargument",
///                 value: "mytestvalue",
///             },
///             {
///                 isSecret: true,
///                 name: "mysecrettestargument",
///                 value: "mysecrettestvalue",
///             },
///         ],
///         contextPath: "src",
///         dockerFilePath: "src/DockerFile",
///         imageNames: ["azurerest:testtag"],
///         isPushEnabled: true,
///         noCache: false,
///         type: "Docker",
///     },
///     tags: {
///         testkey: "value",
///     },
///     taskName: "mytTask",
///     trigger: {
///         baseImageTrigger: {
///             baseImageTriggerType: azure_native.containerregistry.BaseImageTriggerType.Runtime,
///             name: "myBaseImageTrigger",
///             updateTriggerEndpoint: "https://user:pass@mycicd.webhook.com?token=foo",
///             updateTriggerPayloadType: azure_native.containerregistry.UpdateTriggerPayloadType.Default,
///         },
///         sourceTriggers: [{
///             name: "mySourceTrigger",
///             sourceRepository: {
///                 branch: "master",
///                 repositoryUrl: "https://github.com/Azure/azure-rest-api-specs",
///                 sourceControlAuthProperties: {
///                     token: "xxxxx",
///                     tokenType: azure_native.containerregistry.TokenType.PAT,
///                 },
///                 sourceControlType: azure_native.containerregistry.SourceControlType.Github,
///             },
///             sourceTriggerEvents: [azure_native.containerregistry.SourceTriggerEvent.Commit],
///         }],
///         timerTriggers: [{
///             name: "myTimerTrigger",
///             schedule: "30 9 * * 1-5",
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
/// task = azure_native.containerregistry.Task("task",
///     agent_configuration={
///         "cpu": 2,
///     },
///     identity={
///         "type": azure_native.containerregistry.ResourceIdentityType.SYSTEM_ASSIGNED_USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": {},
///         },
///     },
///     is_system_task=False,
///     location="eastus",
///     platform={
///         "architecture": azure_native.containerregistry.Architecture.AMD64,
///         "os": azure_native.containerregistry.OS.LINUX,
///     },
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     status=azure_native.containerregistry.TaskStatus.ENABLED,
///     step={
///         "arguments": [
///             {
///                 "is_secret": False,
///                 "name": "mytestargument",
///                 "value": "mytestvalue",
///             },
///             {
///                 "is_secret": True,
///                 "name": "mysecrettestargument",
///                 "value": "mysecrettestvalue",
///             },
///         ],
///         "context_path": "src",
///         "docker_file_path": "src/DockerFile",
///         "image_names": ["azurerest:testtag"],
///         "is_push_enabled": True,
///         "no_cache": False,
///         "type": "Docker",
///     },
///     tags={
///         "testkey": "value",
///     },
///     task_name="mytTask",
///     trigger={
///         "base_image_trigger": {
///             "base_image_trigger_type": azure_native.containerregistry.BaseImageTriggerType.RUNTIME,
///             "name": "myBaseImageTrigger",
///             "update_trigger_endpoint": "https://user:pass@mycicd.webhook.com?token=foo",
///             "update_trigger_payload_type": azure_native.containerregistry.UpdateTriggerPayloadType.DEFAULT,
///         },
///         "source_triggers": [{
///             "name": "mySourceTrigger",
///             "source_repository": {
///                 "branch": "master",
///                 "repository_url": "https://github.com/Azure/azure-rest-api-specs",
///                 "source_control_auth_properties": {
///                     "token": "xxxxx",
///                     "token_type": azure_native.containerregistry.TokenType.PAT,
///                 },
///                 "source_control_type": azure_native.containerregistry.SourceControlType.GITHUB,
///             },
///             "source_trigger_events": [azure_native.containerregistry.SourceTriggerEvent.COMMIT],
///         }],
///         "timer_triggers": [{
///             "name": "myTimerTrigger",
///             "schedule": "30 9 * * 1-5",
///         }],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   task:
///     type: azure-native:containerregistry:Task
///     properties:
///       agentConfiguration:
///         cpu: 2
///       identity:
///         type: SystemAssigned, UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2
///           : {}
///       isSystemTask: false
///       location: eastus
///       platform:
///         architecture: amd64
///         os: Linux
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       status: Enabled
///       step:
///         arguments:
///           - isSecret: false
///             name: mytestargument
///             value: mytestvalue
///           - isSecret: true
///             name: mysecrettestargument
///             value: mysecrettestvalue
///         contextPath: src
///         dockerFilePath: src/DockerFile
///         imageNames:
///           - azurerest:testtag
///         isPushEnabled: true
///         noCache: false
///         type: Docker
///       tags:
///         testkey: value
///       taskName: mytTask
///       trigger:
///         baseImageTrigger:
///           baseImageTriggerType: Runtime
///           name: myBaseImageTrigger
///           updateTriggerEndpoint: https://user:pass@mycicd.webhook.com?token=foo
///           updateTriggerPayloadType: Default
///         sourceTriggers:
///           - name: mySourceTrigger
///             sourceRepository:
///               branch: master
///               repositoryUrl: https://github.com/Azure/azure-rest-api-specs
///               sourceControlAuthProperties:
///                 token: xxxxx
///                 tokenType: PAT
///               sourceControlType: Github
///             sourceTriggerEvents:
///               - commit
///         timerTriggers:
///           - name: myTimerTrigger
///             schedule: 30 9 * * 1-5
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Tasks_Create_WithUserIdentities
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new AzureNative.ContainerRegistry.Task("task", new()
///     {
///         AgentConfiguration = new AzureNative.ContainerRegistry.Inputs.AgentPropertiesArgs
///         {
///             Cpu = 2,
///         },
///         Identity = new AzureNative.ContainerRegistry.Inputs.IdentityPropertiesArgs
///         {
///             Type = AzureNative.ContainerRegistry.ResourceIdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1", null },
///                 { "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2", null },
///             },
///         },
///         IsSystemTask = false,
///         Location = "eastus",
///         Platform = new AzureNative.ContainerRegistry.Inputs.PlatformPropertiesArgs
///         {
///             Architecture = AzureNative.ContainerRegistry.Architecture.Amd64,
///             Os = AzureNative.ContainerRegistry.OS.Linux,
///         },
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Status = AzureNative.ContainerRegistry.TaskStatus.Enabled,
///         Step = new AzureNative.ContainerRegistry.Inputs.DockerBuildStepArgs
///         {
///             Arguments = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.ArgumentArgs
///                 {
///                     IsSecret = false,
///                     Name = "mytestargument",
///                     Value = "mytestvalue",
///                 },
///                 new AzureNative.ContainerRegistry.Inputs.ArgumentArgs
///                 {
///                     IsSecret = true,
///                     Name = "mysecrettestargument",
///                     Value = "mysecrettestvalue",
///                 },
///             },
///             ContextPath = "src",
///             DockerFilePath = "src/DockerFile",
///             ImageNames = new[]
///             {
///                 "azurerest:testtag",
///             },
///             IsPushEnabled = true,
///             NoCache = false,
///             Type = "Docker",
///         },
///         Tags =
///         {
///             { "testkey", "value" },
///         },
///         TaskName = "mytTask",
///         Trigger = new AzureNative.ContainerRegistry.Inputs.TriggerPropertiesArgs
///         {
///             BaseImageTrigger = new AzureNative.ContainerRegistry.Inputs.BaseImageTriggerArgs
///             {
///                 BaseImageTriggerType = AzureNative.ContainerRegistry.BaseImageTriggerType.Runtime,
///                 Name = "myBaseImageTrigger",
///                 UpdateTriggerEndpoint = "https://user:pass@mycicd.webhook.com?token=foo",
///                 UpdateTriggerPayloadType = AzureNative.ContainerRegistry.UpdateTriggerPayloadType.Default,
///             },
///             SourceTriggers = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.SourceTriggerArgs
///                 {
///                     Name = "mySourceTrigger",
///                     SourceRepository = new AzureNative.ContainerRegistry.Inputs.SourcePropertiesArgs
///                     {
///                         Branch = "master",
///                         RepositoryUrl = "https://github.com/Azure/azure-rest-api-specs",
///                         SourceControlAuthProperties = new AzureNative.ContainerRegistry.Inputs.AuthInfoArgs
///                         {
///                             Token = "xxxxx",
///                             TokenType = AzureNative.ContainerRegistry.TokenType.PAT,
///                         },
///                         SourceControlType = AzureNative.ContainerRegistry.SourceControlType.Github,
///                     },
///                     SourceTriggerEvents = new[]
///                     {
///                         AzureNative.ContainerRegistry.SourceTriggerEvent.Commit,
///                     },
///                 },
///             },
///             TimerTriggers = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.TimerTriggerArgs
///                 {
///                     Name = "myTimerTrigger",
///                     Schedule = "30 9 * * 1-5",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewTask(ctx, "task", &containerregistry.TaskArgs{
/// 			AgentConfiguration: &containerregistry.AgentPropertiesArgs{
/// 				Cpu: pulumi.Int(2),
/// 			},
/// 			Identity: &containerregistry.IdentityPropertiesArgs{
/// 				Type: containerregistry.ResourceIdentityTypeUserAssigned,
/// 				UserAssignedIdentities: containerregistry.UserIdentityPropertiesMap{
/// 					"/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1":  &containerregistry.UserIdentityPropertiesArgs{},
/// 					"/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": &containerregistry.UserIdentityPropertiesArgs{},
/// 				},
/// 			},
/// 			IsSystemTask: pulumi.Bool(false),
/// 			Location:     pulumi.String("eastus"),
/// 			Platform: &containerregistry.PlatformPropertiesArgs{
/// 				Architecture: pulumi.String(containerregistry.ArchitectureAmd64),
/// 				Os:           pulumi.String(containerregistry.OSLinux),
/// 			},
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Status:            pulumi.String(containerregistry.TaskStatusEnabled),
/// 			Step: &containerregistry.DockerBuildStepArgs{
/// 				Arguments: containerregistry.ArgumentArray{
/// 					&containerregistry.ArgumentArgs{
/// 						IsSecret: pulumi.Bool(false),
/// 						Name:     pulumi.String("mytestargument"),
/// 						Value:    pulumi.String("mytestvalue"),
/// 					},
/// 					&containerregistry.ArgumentArgs{
/// 						IsSecret: pulumi.Bool(true),
/// 						Name:     pulumi.String("mysecrettestargument"),
/// 						Value:    pulumi.String("mysecrettestvalue"),
/// 					},
/// 				},
/// 				ContextPath:    pulumi.String("src"),
/// 				DockerFilePath: pulumi.String("src/DockerFile"),
/// 				ImageNames: pulumi.StringArray{
/// 					pulumi.String("azurerest:testtag"),
/// 				},
/// 				IsPushEnabled: pulumi.Bool(true),
/// 				NoCache:       pulumi.Bool(false),
/// 				Type:          pulumi.String("Docker"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"testkey": pulumi.String("value"),
/// 			},
/// 			TaskName: pulumi.String("mytTask"),
/// 			Trigger: &containerregistry.TriggerPropertiesArgs{
/// 				BaseImageTrigger: &containerregistry.BaseImageTriggerArgs{
/// 					BaseImageTriggerType:     pulumi.String(containerregistry.BaseImageTriggerTypeRuntime),
/// 					Name:                     pulumi.String("myBaseImageTrigger"),
/// 					UpdateTriggerEndpoint:    pulumi.String("https://user:pass@mycicd.webhook.com?token=foo"),
/// 					UpdateTriggerPayloadType: pulumi.String(containerregistry.UpdateTriggerPayloadTypeDefault),
/// 				},
/// 				SourceTriggers: containerregistry.SourceTriggerArray{
/// 					&containerregistry.SourceTriggerArgs{
/// 						Name: pulumi.String("mySourceTrigger"),
/// 						SourceRepository: &containerregistry.SourcePropertiesArgs{
/// 							Branch:        pulumi.String("master"),
/// 							RepositoryUrl: pulumi.String("https://github.com/Azure/azure-rest-api-specs"),
/// 							SourceControlAuthProperties: &containerregistry.AuthInfoArgs{
/// 								Token:     pulumi.String("xxxxx"),
/// 								TokenType: pulumi.String(containerregistry.TokenTypePAT),
/// 							},
/// 							SourceControlType: pulumi.String(containerregistry.SourceControlTypeGithub),
/// 						},
/// 						SourceTriggerEvents: pulumi.StringArray{
/// 							pulumi.String(containerregistry.SourceTriggerEventCommit),
/// 						},
/// 					},
/// 				},
/// 				TimerTriggers: containerregistry.TimerTriggerArray{
/// 					&containerregistry.TimerTriggerArgs{
/// 						Name:     pulumi.String("myTimerTrigger"),
/// 						Schedule: pulumi.String("30 9 * * 1-5"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerregistry_task" "task" {
///   agent_configuration = {
///     cpu = 2
///   }
///   identity = {
///     type = "UserAssigned"
///     user_assigned_identities = {
///       "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1"  = {}
///       "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2" = {}
///     }
///   }
///   is_system_task = false
///   location       = "eastus"
///   platform = {
///     architecture = "amd64"
///     os           = "Linux"
///   }
///   registry_name       = "myRegistry"
///   resource_group_name = "myResourceGroup"
///   status              = "Enabled"
///   step = {
///     "arguments" = [{
///       "isSecret" = false
///       "name"     = "mytestargument"
///       "value"    = "mytestvalue"
///       }, {
///       "isSecret" = true
///       "name"     = "mysecrettestargument"
///       "value"    = "mysecrettestvalue"
///     }]
///     "contextPath"    = "src"
///     "dockerFilePath" = "src/DockerFile"
///     "imageNames"     = ["azurerest:testtag"]
///     "isPushEnabled"  = true
///     "noCache"        = false
///     "type"           = "Docker"
///   }
///   tags = {
///     "testkey" = "value"
///   }
///   task_name = "mytTask"
///   trigger = {
///     base_image_trigger = {
///       base_image_trigger_type     = "Runtime"
///       name                        = "myBaseImageTrigger"
///       update_trigger_endpoint     = "https://user:pass@mycicd.webhook.com?token=foo"
///       update_trigger_payload_type = "Default"
///     }
///     source_triggers = [{
///       "name" = "mySourceTrigger"
///       "sourceRepository" = {
///         "branch"        = "master"
///         "repositoryUrl" = "https://github.com/Azure/azure-rest-api-specs"
///         "sourceControlAuthProperties" = {
///           "token"     = "xxxxx"
///           "tokenType" = "PAT"
///         }
///         "sourceControlType" = "Github"
///       }
///       "sourceTriggerEvents" = ["commit"]
///     }]
///     timer_triggers = [{
///       "name"     = "myTimerTrigger"
///       "schedule" = "30 9 * * 1-5"
///     }]
///   }
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
/// import com.pulumi.azurenative.containerregistry.Task;
/// import com.pulumi.azurenative.containerregistry.TaskArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.AgentPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.IdentityPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.PlatformPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.TriggerPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.BaseImageTriggerArgs;
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
///         var task = new Task("task", TaskArgs.builder()
///             .agentConfiguration(AgentPropertiesArgs.builder()
///                 .cpu(2)
///                 .build())
///             .identity(IdentityPropertiesArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.ofEntries(
///                     Map.entry("/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1", UserIdentityPropertiesArgs.builder()
///                         .build()),
///                     Map.entry("/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2", UserIdentityPropertiesArgs.builder()
///                         .build())
///                 ))
///                 .build())
///             .isSystemTask(false)
///             .location("eastus")
///             .platform(PlatformPropertiesArgs.builder()
///                 .architecture("amd64")
///                 .os("Linux")
///                 .build())
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .status("Enabled")
///             .step(DockerBuildStepArgs.builder()
///                 .arguments(
///                     ArgumentArgs.builder()
///                         .isSecret(false)
///                         .name("mytestargument")
///                         .value("mytestvalue")
///                         .build(),
///                     ArgumentArgs.builder()
///                         .isSecret(true)
///                         .name("mysecrettestargument")
///                         .value("mysecrettestvalue")
///                         .build())
///                 .contextPath("src")
///                 .dockerFilePath("src/DockerFile")
///                 .imageNames("azurerest:testtag")
///                 .isPushEnabled(true)
///                 .noCache(false)
///                 .type("Docker")
///                 .build())
///             .tags(Map.of("testkey", "value"))
///             .taskName("mytTask")
///             .trigger(TriggerPropertiesArgs.builder()
///                 .baseImageTrigger(BaseImageTriggerArgs.builder()
///                     .baseImageTriggerType("Runtime")
///                     .name("myBaseImageTrigger")
///                     .updateTriggerEndpoint("https://user:pass@mycicd.webhook.com?token=foo")
///                     .updateTriggerPayloadType("Default")
///                     .build())
///                 .sourceTriggers(SourceTriggerArgs.builder()
///                     .name("mySourceTrigger")
///                     .sourceRepository(SourcePropertiesArgs.builder()
///                         .branch("master")
///                         .repositoryUrl("https://github.com/Azure/azure-rest-api-specs")
///                         .sourceControlAuthProperties(AuthInfoArgs.builder()
///                             .token("xxxxx")
///                             .tokenType("PAT")
///                             .build())
///                         .sourceControlType("Github")
///                         .build())
///                     .sourceTriggerEvents("commit")
///                     .build())
///                 .timerTriggers(TimerTriggerArgs.builder()
///                     .name("myTimerTrigger")
///                     .schedule("30 9 * * 1-5")
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
/// const task = new azure_native.containerregistry.Task("task", {
///     agentConfiguration: {
///         cpu: 2,
///     },
///     identity: {
///         type: azure_native.containerregistry.ResourceIdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1": {},
///             "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": {},
///         },
///     },
///     isSystemTask: false,
///     location: "eastus",
///     platform: {
///         architecture: azure_native.containerregistry.Architecture.Amd64,
///         os: azure_native.containerregistry.OS.Linux,
///     },
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     status: azure_native.containerregistry.TaskStatus.Enabled,
///     step: {
///         arguments: [
///             {
///                 isSecret: false,
///                 name: "mytestargument",
///                 value: "mytestvalue",
///             },
///             {
///                 isSecret: true,
///                 name: "mysecrettestargument",
///                 value: "mysecrettestvalue",
///             },
///         ],
///         contextPath: "src",
///         dockerFilePath: "src/DockerFile",
///         imageNames: ["azurerest:testtag"],
///         isPushEnabled: true,
///         noCache: false,
///         type: "Docker",
///     },
///     tags: {
///         testkey: "value",
///     },
///     taskName: "mytTask",
///     trigger: {
///         baseImageTrigger: {
///             baseImageTriggerType: azure_native.containerregistry.BaseImageTriggerType.Runtime,
///             name: "myBaseImageTrigger",
///             updateTriggerEndpoint: "https://user:pass@mycicd.webhook.com?token=foo",
///             updateTriggerPayloadType: azure_native.containerregistry.UpdateTriggerPayloadType.Default,
///         },
///         sourceTriggers: [{
///             name: "mySourceTrigger",
///             sourceRepository: {
///                 branch: "master",
///                 repositoryUrl: "https://github.com/Azure/azure-rest-api-specs",
///                 sourceControlAuthProperties: {
///                     token: "xxxxx",
///                     tokenType: azure_native.containerregistry.TokenType.PAT,
///                 },
///                 sourceControlType: azure_native.containerregistry.SourceControlType.Github,
///             },
///             sourceTriggerEvents: [azure_native.containerregistry.SourceTriggerEvent.Commit],
///         }],
///         timerTriggers: [{
///             name: "myTimerTrigger",
///             schedule: "30 9 * * 1-5",
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
/// task = azure_native.containerregistry.Task("task",
///     agent_configuration={
///         "cpu": 2,
///     },
///     identity={
///         "type": azure_native.containerregistry.ResourceIdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1": {},
///             "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": {},
///         },
///     },
///     is_system_task=False,
///     location="eastus",
///     platform={
///         "architecture": azure_native.containerregistry.Architecture.AMD64,
///         "os": azure_native.containerregistry.OS.LINUX,
///     },
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     status=azure_native.containerregistry.TaskStatus.ENABLED,
///     step={
///         "arguments": [
///             {
///                 "is_secret": False,
///                 "name": "mytestargument",
///                 "value": "mytestvalue",
///             },
///             {
///                 "is_secret": True,
///                 "name": "mysecrettestargument",
///                 "value": "mysecrettestvalue",
///             },
///         ],
///         "context_path": "src",
///         "docker_file_path": "src/DockerFile",
///         "image_names": ["azurerest:testtag"],
///         "is_push_enabled": True,
///         "no_cache": False,
///         "type": "Docker",
///     },
///     tags={
///         "testkey": "value",
///     },
///     task_name="mytTask",
///     trigger={
///         "base_image_trigger": {
///             "base_image_trigger_type": azure_native.containerregistry.BaseImageTriggerType.RUNTIME,
///             "name": "myBaseImageTrigger",
///             "update_trigger_endpoint": "https://user:pass@mycicd.webhook.com?token=foo",
///             "update_trigger_payload_type": azure_native.containerregistry.UpdateTriggerPayloadType.DEFAULT,
///         },
///         "source_triggers": [{
///             "name": "mySourceTrigger",
///             "source_repository": {
///                 "branch": "master",
///                 "repository_url": "https://github.com/Azure/azure-rest-api-specs",
///                 "source_control_auth_properties": {
///                     "token": "xxxxx",
///                     "token_type": azure_native.containerregistry.TokenType.PAT,
///                 },
///                 "source_control_type": azure_native.containerregistry.SourceControlType.GITHUB,
///             },
///             "source_trigger_events": [azure_native.containerregistry.SourceTriggerEvent.COMMIT],
///         }],
///         "timer_triggers": [{
///             "name": "myTimerTrigger",
///             "schedule": "30 9 * * 1-5",
///         }],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   task:
///     type: azure-native:containerregistry:Task
///     properties:
///       agentConfiguration:
///         cpu: 2
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1
///           : {}
///           ? /subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2
///           : {}
///       isSystemTask: false
///       location: eastus
///       platform:
///         architecture: amd64
///         os: Linux
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       status: Enabled
///       step:
///         arguments:
///           - isSecret: false
///             name: mytestargument
///             value: mytestvalue
///           - isSecret: true
///             name: mysecrettestargument
///             value: mysecrettestvalue
///         contextPath: src
///         dockerFilePath: src/DockerFile
///         imageNames:
///           - azurerest:testtag
///         isPushEnabled: true
///         noCache: false
///         type: Docker
///       tags:
///         testkey: value
///       taskName: mytTask
///       trigger:
///         baseImageTrigger:
///           baseImageTriggerType: Runtime
///           name: myBaseImageTrigger
///           updateTriggerEndpoint: https://user:pass@mycicd.webhook.com?token=foo
///           updateTriggerPayloadType: Default
///         sourceTriggers:
///           - name: mySourceTrigger
///             sourceRepository:
///               branch: master
///               repositoryUrl: https://github.com/Azure/azure-rest-api-specs
///               sourceControlAuthProperties:
///                 token: xxxxx
///                 tokenType: PAT
///               sourceControlType: Github
///             sourceTriggerEvents:
///               - commit
///         timerTriggers:
///           - name: myTimerTrigger
///             schedule: 30 9 * * 1-5
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Tasks_Create_WithUserIdentities_WithSystemIdentity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new AzureNative.ContainerRegistry.Task("task", new()
///     {
///         AgentConfiguration = new AzureNative.ContainerRegistry.Inputs.AgentPropertiesArgs
///         {
///             Cpu = 2,
///         },
///         Identity = new AzureNative.ContainerRegistry.Inputs.IdentityPropertiesArgs
///         {
///             Type = AzureNative.ContainerRegistry.ResourceIdentityType.SystemAssigned,
///         },
///         IsSystemTask = false,
///         Location = "eastus",
///         Platform = new AzureNative.ContainerRegistry.Inputs.PlatformPropertiesArgs
///         {
///             Architecture = AzureNative.ContainerRegistry.Architecture.Amd64,
///             Os = AzureNative.ContainerRegistry.OS.Linux,
///         },
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Status = AzureNative.ContainerRegistry.TaskStatus.Enabled,
///         Step = new AzureNative.ContainerRegistry.Inputs.DockerBuildStepArgs
///         {
///             Arguments = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.ArgumentArgs
///                 {
///                     IsSecret = false,
///                     Name = "mytestargument",
///                     Value = "mytestvalue",
///                 },
///                 new AzureNative.ContainerRegistry.Inputs.ArgumentArgs
///                 {
///                     IsSecret = true,
///                     Name = "mysecrettestargument",
///                     Value = "mysecrettestvalue",
///                 },
///             },
///             ContextPath = "src",
///             DockerFilePath = "src/DockerFile",
///             ImageNames = new[]
///             {
///                 "azurerest:testtag",
///             },
///             IsPushEnabled = true,
///             NoCache = false,
///             Type = "Docker",
///         },
///         Tags =
///         {
///             { "testkey", "value" },
///         },
///         TaskName = "mytTask",
///         Trigger = new AzureNative.ContainerRegistry.Inputs.TriggerPropertiesArgs
///         {
///             BaseImageTrigger = new AzureNative.ContainerRegistry.Inputs.BaseImageTriggerArgs
///             {
///                 BaseImageTriggerType = AzureNative.ContainerRegistry.BaseImageTriggerType.Runtime,
///                 Name = "myBaseImageTrigger",
///             },
///             SourceTriggers = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.SourceTriggerArgs
///                 {
///                     Name = "mySourceTrigger",
///                     SourceRepository = new AzureNative.ContainerRegistry.Inputs.SourcePropertiesArgs
///                     {
///                         Branch = "master",
///                         RepositoryUrl = "https://github.com/Azure/azure-rest-api-specs",
///                         SourceControlAuthProperties = new AzureNative.ContainerRegistry.Inputs.AuthInfoArgs
///                         {
///                             Token = "xxxxx",
///                             TokenType = AzureNative.ContainerRegistry.TokenType.PAT,
///                         },
///                         SourceControlType = AzureNative.ContainerRegistry.SourceControlType.Github,
///                     },
///                     SourceTriggerEvents = new[]
///                     {
///                         AzureNative.ContainerRegistry.SourceTriggerEvent.Commit,
///                     },
///                 },
///             },
///             TimerTriggers = new[]
///             {
///                 new AzureNative.ContainerRegistry.Inputs.TimerTriggerArgs
///                 {
///                     Name = "myTimerTrigger",
///                     Schedule = "30 9 * * 1-5",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewTask(ctx, "task", &containerregistry.TaskArgs{
/// 			AgentConfiguration: &containerregistry.AgentPropertiesArgs{
/// 				Cpu: pulumi.Int(2),
/// 			},
/// 			Identity: &containerregistry.IdentityPropertiesArgs{
/// 				Type: containerregistry.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			IsSystemTask: pulumi.Bool(false),
/// 			Location:     pulumi.String("eastus"),
/// 			Platform: &containerregistry.PlatformPropertiesArgs{
/// 				Architecture: pulumi.String(containerregistry.ArchitectureAmd64),
/// 				Os:           pulumi.String(containerregistry.OSLinux),
/// 			},
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Status:            pulumi.String(containerregistry.TaskStatusEnabled),
/// 			Step: &containerregistry.DockerBuildStepArgs{
/// 				Arguments: containerregistry.ArgumentArray{
/// 					&containerregistry.ArgumentArgs{
/// 						IsSecret: pulumi.Bool(false),
/// 						Name:     pulumi.String("mytestargument"),
/// 						Value:    pulumi.String("mytestvalue"),
/// 					},
/// 					&containerregistry.ArgumentArgs{
/// 						IsSecret: pulumi.Bool(true),
/// 						Name:     pulumi.String("mysecrettestargument"),
/// 						Value:    pulumi.String("mysecrettestvalue"),
/// 					},
/// 				},
/// 				ContextPath:    pulumi.String("src"),
/// 				DockerFilePath: pulumi.String("src/DockerFile"),
/// 				ImageNames: pulumi.StringArray{
/// 					pulumi.String("azurerest:testtag"),
/// 				},
/// 				IsPushEnabled: pulumi.Bool(true),
/// 				NoCache:       pulumi.Bool(false),
/// 				Type:          pulumi.String("Docker"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"testkey": pulumi.String("value"),
/// 			},
/// 			TaskName: pulumi.String("mytTask"),
/// 			Trigger: &containerregistry.TriggerPropertiesArgs{
/// 				BaseImageTrigger: &containerregistry.BaseImageTriggerArgs{
/// 					BaseImageTriggerType: pulumi.String(containerregistry.BaseImageTriggerTypeRuntime),
/// 					Name:                 pulumi.String("myBaseImageTrigger"),
/// 				},
/// 				SourceTriggers: containerregistry.SourceTriggerArray{
/// 					&containerregistry.SourceTriggerArgs{
/// 						Name: pulumi.String("mySourceTrigger"),
/// 						SourceRepository: &containerregistry.SourcePropertiesArgs{
/// 							Branch:        pulumi.String("master"),
/// 							RepositoryUrl: pulumi.String("https://github.com/Azure/azure-rest-api-specs"),
/// 							SourceControlAuthProperties: &containerregistry.AuthInfoArgs{
/// 								Token:     pulumi.String("xxxxx"),
/// 								TokenType: pulumi.String(containerregistry.TokenTypePAT),
/// 							},
/// 							SourceControlType: pulumi.String(containerregistry.SourceControlTypeGithub),
/// 						},
/// 						SourceTriggerEvents: pulumi.StringArray{
/// 							pulumi.String(containerregistry.SourceTriggerEventCommit),
/// 						},
/// 					},
/// 				},
/// 				TimerTriggers: containerregistry.TimerTriggerArray{
/// 					&containerregistry.TimerTriggerArgs{
/// 						Name:     pulumi.String("myTimerTrigger"),
/// 						Schedule: pulumi.String("30 9 * * 1-5"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerregistry_task" "task" {
///   agent_configuration = {
///     cpu = 2
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
///   is_system_task = false
///   location       = "eastus"
///   platform = {
///     architecture = "amd64"
///     os           = "Linux"
///   }
///   registry_name       = "myRegistry"
///   resource_group_name = "myResourceGroup"
///   status              = "Enabled"
///   step = {
///     "arguments" = [{
///       "isSecret" = false
///       "name"     = "mytestargument"
///       "value"    = "mytestvalue"
///       }, {
///       "isSecret" = true
///       "name"     = "mysecrettestargument"
///       "value"    = "mysecrettestvalue"
///     }]
///     "contextPath"    = "src"
///     "dockerFilePath" = "src/DockerFile"
///     "imageNames"     = ["azurerest:testtag"]
///     "isPushEnabled"  = true
///     "noCache"        = false
///     "type"           = "Docker"
///   }
///   tags = {
///     "testkey" = "value"
///   }
///   task_name = "mytTask"
///   trigger = {
///     base_image_trigger = {
///       base_image_trigger_type = "Runtime"
///       name                    = "myBaseImageTrigger"
///     }
///     source_triggers = [{
///       "name" = "mySourceTrigger"
///       "sourceRepository" = {
///         "branch"        = "master"
///         "repositoryUrl" = "https://github.com/Azure/azure-rest-api-specs"
///         "sourceControlAuthProperties" = {
///           "token"     = "xxxxx"
///           "tokenType" = "PAT"
///         }
///         "sourceControlType" = "Github"
///       }
///       "sourceTriggerEvents" = ["commit"]
///     }]
///     timer_triggers = [{
///       "name"     = "myTimerTrigger"
///       "schedule" = "30 9 * * 1-5"
///     }]
///   }
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
/// import com.pulumi.azurenative.containerregistry.Task;
/// import com.pulumi.azurenative.containerregistry.TaskArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.AgentPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.IdentityPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.PlatformPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.TriggerPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.BaseImageTriggerArgs;
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
///         var task = new Task("task", TaskArgs.builder()
///             .agentConfiguration(AgentPropertiesArgs.builder()
///                 .cpu(2)
///                 .build())
///             .identity(IdentityPropertiesArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .isSystemTask(false)
///             .location("eastus")
///             .platform(PlatformPropertiesArgs.builder()
///                 .architecture("amd64")
///                 .os("Linux")
///                 .build())
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .status("Enabled")
///             .step(DockerBuildStepArgs.builder()
///                 .arguments(
///                     ArgumentArgs.builder()
///                         .isSecret(false)
///                         .name("mytestargument")
///                         .value("mytestvalue")
///                         .build(),
///                     ArgumentArgs.builder()
///                         .isSecret(true)
///                         .name("mysecrettestargument")
///                         .value("mysecrettestvalue")
///                         .build())
///                 .contextPath("src")
///                 .dockerFilePath("src/DockerFile")
///                 .imageNames("azurerest:testtag")
///                 .isPushEnabled(true)
///                 .noCache(false)
///                 .type("Docker")
///                 .build())
///             .tags(Map.of("testkey", "value"))
///             .taskName("mytTask")
///             .trigger(TriggerPropertiesArgs.builder()
///                 .baseImageTrigger(BaseImageTriggerArgs.builder()
///                     .baseImageTriggerType("Runtime")
///                     .name("myBaseImageTrigger")
///                     .build())
///                 .sourceTriggers(SourceTriggerArgs.builder()
///                     .name("mySourceTrigger")
///                     .sourceRepository(SourcePropertiesArgs.builder()
///                         .branch("master")
///                         .repositoryUrl("https://github.com/Azure/azure-rest-api-specs")
///                         .sourceControlAuthProperties(AuthInfoArgs.builder()
///                             .token("xxxxx")
///                             .tokenType("PAT")
///                             .build())
///                         .sourceControlType("Github")
///                         .build())
///                     .sourceTriggerEvents("commit")
///                     .build())
///                 .timerTriggers(TimerTriggerArgs.builder()
///                     .name("myTimerTrigger")
///                     .schedule("30 9 * * 1-5")
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
/// const task = new azure_native.containerregistry.Task("task", {
///     agentConfiguration: {
///         cpu: 2,
///     },
///     identity: {
///         type: azure_native.containerregistry.ResourceIdentityType.SystemAssigned,
///     },
///     isSystemTask: false,
///     location: "eastus",
///     platform: {
///         architecture: azure_native.containerregistry.Architecture.Amd64,
///         os: azure_native.containerregistry.OS.Linux,
///     },
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     status: azure_native.containerregistry.TaskStatus.Enabled,
///     step: {
///         arguments: [
///             {
///                 isSecret: false,
///                 name: "mytestargument",
///                 value: "mytestvalue",
///             },
///             {
///                 isSecret: true,
///                 name: "mysecrettestargument",
///                 value: "mysecrettestvalue",
///             },
///         ],
///         contextPath: "src",
///         dockerFilePath: "src/DockerFile",
///         imageNames: ["azurerest:testtag"],
///         isPushEnabled: true,
///         noCache: false,
///         type: "Docker",
///     },
///     tags: {
///         testkey: "value",
///     },
///     taskName: "mytTask",
///     trigger: {
///         baseImageTrigger: {
///             baseImageTriggerType: azure_native.containerregistry.BaseImageTriggerType.Runtime,
///             name: "myBaseImageTrigger",
///         },
///         sourceTriggers: [{
///             name: "mySourceTrigger",
///             sourceRepository: {
///                 branch: "master",
///                 repositoryUrl: "https://github.com/Azure/azure-rest-api-specs",
///                 sourceControlAuthProperties: {
///                     token: "xxxxx",
///                     tokenType: azure_native.containerregistry.TokenType.PAT,
///                 },
///                 sourceControlType: azure_native.containerregistry.SourceControlType.Github,
///             },
///             sourceTriggerEvents: [azure_native.containerregistry.SourceTriggerEvent.Commit],
///         }],
///         timerTriggers: [{
///             name: "myTimerTrigger",
///             schedule: "30 9 * * 1-5",
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
/// task = azure_native.containerregistry.Task("task",
///     agent_configuration={
///         "cpu": 2,
///     },
///     identity={
///         "type": azure_native.containerregistry.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     is_system_task=False,
///     location="eastus",
///     platform={
///         "architecture": azure_native.containerregistry.Architecture.AMD64,
///         "os": azure_native.containerregistry.OS.LINUX,
///     },
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     status=azure_native.containerregistry.TaskStatus.ENABLED,
///     step={
///         "arguments": [
///             {
///                 "is_secret": False,
///                 "name": "mytestargument",
///                 "value": "mytestvalue",
///             },
///             {
///                 "is_secret": True,
///                 "name": "mysecrettestargument",
///                 "value": "mysecrettestvalue",
///             },
///         ],
///         "context_path": "src",
///         "docker_file_path": "src/DockerFile",
///         "image_names": ["azurerest:testtag"],
///         "is_push_enabled": True,
///         "no_cache": False,
///         "type": "Docker",
///     },
///     tags={
///         "testkey": "value",
///     },
///     task_name="mytTask",
///     trigger={
///         "base_image_trigger": {
///             "base_image_trigger_type": azure_native.containerregistry.BaseImageTriggerType.RUNTIME,
///             "name": "myBaseImageTrigger",
///         },
///         "source_triggers": [{
///             "name": "mySourceTrigger",
///             "source_repository": {
///                 "branch": "master",
///                 "repository_url": "https://github.com/Azure/azure-rest-api-specs",
///                 "source_control_auth_properties": {
///                     "token": "xxxxx",
///                     "token_type": azure_native.containerregistry.TokenType.PAT,
///                 },
///                 "source_control_type": azure_native.containerregistry.SourceControlType.GITHUB,
///             },
///             "source_trigger_events": [azure_native.containerregistry.SourceTriggerEvent.COMMIT],
///         }],
///         "timer_triggers": [{
///             "name": "myTimerTrigger",
///             "schedule": "30 9 * * 1-5",
///         }],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   task:
///     type: azure-native:containerregistry:Task
///     properties:
///       agentConfiguration:
///         cpu: 2
///       identity:
///         type: SystemAssigned
///       isSystemTask: false
///       location: eastus
///       platform:
///         architecture: amd64
///         os: Linux
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       status: Enabled
///       step:
///         arguments:
///           - isSecret: false
///             name: mytestargument
///             value: mytestvalue
///           - isSecret: true
///             name: mysecrettestargument
///             value: mysecrettestvalue
///         contextPath: src
///         dockerFilePath: src/DockerFile
///         imageNames:
///           - azurerest:testtag
///         isPushEnabled: true
///         noCache: false
///         type: Docker
///       tags:
///         testkey: value
///       taskName: mytTask
///       trigger:
///         baseImageTrigger:
///           baseImageTriggerType: Runtime
///           name: myBaseImageTrigger
///         sourceTriggers:
///           - name: mySourceTrigger
///             sourceRepository:
///               branch: master
///               repositoryUrl: https://github.com/Azure/azure-rest-api-specs
///               sourceControlAuthProperties:
///                 token: xxxxx
///                 tokenType: PAT
///               sourceControlType: Github
///             sourceTriggerEvents:
///               - commit
///         timerTriggers:
///           - name: myTimerTrigger
///             schedule: 30 9 * * 1-5
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
/// $ pulumi import azure-native:containerregistry:Task myTask /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/tasks/{taskName}
/// ```
class Task extends pulumi.CustomResource {
  /// The machine configuration of the run agent.
  late final pulumi.Output<AgentPropertiesResponse?> agentConfiguration;
  /// The dedicated agent pool for the task.
  late final pulumi.Output<String?> agentPoolName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of task.
  late final pulumi.Output<String> creationDate;
  /// The properties that describes a set of credentials that will be used when this run is invoked.
  late final pulumi.Output<CredentialsResponse?> credentials;
  /// Identity for the resource.
  late final pulumi.Output<IdentityPropertiesResponse?> identity;
  /// The value of this property indicates whether the task resource is system task or not.
  late final pulumi.Output<bool?> isSystemTask;
  /// The location of the resource. This cannot be changed after the resource is created.
  late final pulumi.Output<String> location;
  /// The template that describes the repository and tag information for run log artifact.
  late final pulumi.Output<String?> logTemplate;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The platform properties against which the run has to happen.
  late final pulumi.Output<PlatformPropertiesResponse?> platform;
  /// The provisioning state of the task.
  late final pulumi.Output<String> provisioningState;
  /// The current status of task.
  late final pulumi.Output<String?> status;
  /// The properties of a task step.
  late final pulumi.Output<dynamic> step;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Run timeout in seconds.
  late final pulumi.Output<int?> timeout;
  /// The properties that describe all triggers for the task.
  late final pulumi.Output<TriggerPropertiesResponse?> trigger;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Task].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Task]. {@macro pulumi_containerregistry_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Task(
    String name, {
    TaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:Task',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentConfiguration = registerOutput<AgentPropertiesResponse?>('agentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    agentPoolName = registerOutput<String?>('agentPoolName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    credentials = registerOutput<CredentialsResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<IdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isSystemTask = registerOutput<bool?>('isSystemTask');
    location = registerOutput<String>('location');
    logTemplate = registerOutput<String?>('logTemplate');
    this.name = registerOutput<String>('name');
    platform = registerOutput<PlatformPropertiesResponse?>('platform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlatformPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String?>('status');
    step = registerOutput<dynamic>('step');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeout = registerOutput<int?>('timeout');
    trigger = registerOutput<TriggerPropertiesResponse?>('trigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Task] resource.
  Task.reference(String urn)
    : super(
        'azure-native:containerregistry:Task',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentConfiguration = registerOutput<AgentPropertiesResponse?>('agentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    agentPoolName = registerOutput<String?>('agentPoolName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    credentials = registerOutput<CredentialsResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<IdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isSystemTask = registerOutput<bool?>('isSystemTask');
    location = registerOutput<String>('location');
    logTemplate = registerOutput<String?>('logTemplate');
    this.name = registerOutput<String>('name');
    platform = registerOutput<PlatformPropertiesResponse?>('platform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlatformPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String?>('status');
    step = registerOutput<dynamic>('step');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeout = registerOutput<int?>('timeout');
    trigger = registerOutput<TriggerPropertiesResponse?>('trigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
