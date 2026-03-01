import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_args.dart';
import 'build_configuration_response.dart';
import 'container_registry_with_custom_image_response.dart';
import 'system_data_response.dart';

/// Information pertaining to an individual build.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-08-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Builds_CreateOrUpdate_NoConfig
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var build = new AzureNative.App.Build("build", new()
///     {
///         BuildName = "testBuild",
///         BuilderName = "testBuilder",
///         ResourceGroupName = "rg",
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
/// 		_, err := app.NewBuild(ctx, "build", &app.BuildArgs{
/// 			BuildName:         pulumi.String("testBuild"),
/// 			BuilderName:       pulumi.String("testBuilder"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.app.Build;
/// import com.pulumi.azurenative.app.BuildArgs;
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
///         var build = new Build("build", BuildArgs.builder()
///             .buildName("testBuild")
///             .builderName("testBuilder")
///             .resourceGroupName("rg")
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
/// const build = new azure_native.app.Build("build", {
///     buildName: "testBuild",
///     builderName: "testBuilder",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// build = azure_native.app.Build("build",
///     build_name="testBuild",
///     builder_name="testBuilder",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   build:
///     type: azure-native:app:Build
///     properties:
///       buildName: testBuild
///       builderName: testBuilder
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Builds_CreateOrUpdate_WithConfig
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var build = new AzureNative.App.Build("build", new()
///     {
///         BuildName = "testBuild-123456789az",
///         BuilderName = "testBuilder",
///         Configuration = new AzureNative.App.Inputs.BuildConfigurationArgs
///         {
///             BaseOs = "DebianBullseye",
///             EnvironmentVariables = new[]
///             {
///                 new AzureNative.App.Inputs.EnvironmentVariableArgs
///                 {
///                     Name = "foo1",
///                     Value = "bar1",
///                 },
///                 new AzureNative.App.Inputs.EnvironmentVariableArgs
///                 {
///                     Name = "foo2",
///                     Value = "bar2",
///                 },
///             },
///             Platform = "dotnetcore",
///             PlatformVersion = "7.0",
///             PreBuildSteps = new[]
///             {
///                 new AzureNative.App.Inputs.PreBuildStepArgs
///                 {
///                     Description = "First pre build step.",
///                     HttpGet = new AzureNative.App.Inputs.HttpGetArgs
///                     {
///                         FileName = "output.txt",
///                         Headers = new[]
///                         {
///                             "foo",
///                             "bar",
///                         },
///                         Url = "https://microsoft.com",
///                     },
///                     Scripts = new[]
///                     {
///                         "echo 'hello'",
///                         "echo 'world'",
///                     },
///                 },
///                 new AzureNative.App.Inputs.PreBuildStepArgs
///                 {
///                     Description = "Second pre build step.",
///                     HttpGet = new AzureNative.App.Inputs.HttpGetArgs
///                     {
///                         FileName = "output.txt",
///                         Headers = new[]
///                         {
///                             "foo",
///                         },
///                         Url = "https://microsoft.com",
///                     },
///                     Scripts = new[]
///                     {
///                         "echo 'hello'",
///                         "echo 'again'",
///                     },
///                 },
///             },
///         },
///         DestinationContainerRegistry = new AzureNative.App.Inputs.ContainerRegistryWithCustomImageArgs
///         {
///             Image = "test.azurecr.io/repo:tag",
///             Server = "test.azurecr.io",
///         },
///         ResourceGroupName = "rg",
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
/// 		_, err := app.NewBuild(ctx, "build", &app.BuildArgs{
/// 			BuildName:   pulumi.String("testBuild-123456789az"),
/// 			BuilderName: pulumi.String("testBuilder"),
/// 			Configuration: &app.BuildConfigurationArgs{
/// 				BaseOs: pulumi.String("DebianBullseye"),
/// 				EnvironmentVariables: app.EnvironmentVariableArray{
/// 					&app.EnvironmentVariableArgs{
/// 						Name:  pulumi.String("foo1"),
/// 						Value: pulumi.String("bar1"),
/// 					},
/// 					&app.EnvironmentVariableArgs{
/// 						Name:  pulumi.String("foo2"),
/// 						Value: pulumi.String("bar2"),
/// 					},
/// 				},
/// 				Platform:        pulumi.String("dotnetcore"),
/// 				PlatformVersion: pulumi.String("7.0"),
/// 				PreBuildSteps: app.PreBuildStepArray{
/// 					&app.PreBuildStepArgs{
/// 						Description: pulumi.String("First pre build step."),
/// 						HttpGet: &app.HttpGetArgs{
/// 							FileName: pulumi.String("output.txt"),
/// 							Headers: pulumi.StringArray{
/// 								pulumi.String("foo"),
/// 								pulumi.String("bar"),
/// 							},
/// 							Url: pulumi.String("https://microsoft.com"),
/// 						},
/// 						Scripts: pulumi.StringArray{
/// 							pulumi.String("echo 'hello'"),
/// 							pulumi.String("echo 'world'"),
/// 						},
/// 					},
/// 					&app.PreBuildStepArgs{
/// 						Description: pulumi.String("Second pre build step."),
/// 						HttpGet: &app.HttpGetArgs{
/// 							FileName: pulumi.String("output.txt"),
/// 							Headers: pulumi.StringArray{
/// 								pulumi.String("foo"),
/// 							},
/// 							Url: pulumi.String("https://microsoft.com"),
/// 						},
/// 						Scripts: pulumi.StringArray{
/// 							pulumi.String("echo 'hello'"),
/// 							pulumi.String("echo 'again'"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DestinationContainerRegistry: &app.ContainerRegistryWithCustomImageArgs{
/// 				Image:  pulumi.String("test.azurecr.io/repo:tag"),
/// 				Server: pulumi.String("test.azurecr.io"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.app.Build;
/// import com.pulumi.azurenative.app.BuildArgs;
/// import com.pulumi.azurenative.app.inputs.BuildConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.ContainerRegistryWithCustomImageArgs;
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
///         var build = new Build("build", BuildArgs.builder()
///             .buildName("testBuild-123456789az")
///             .builderName("testBuilder")
///             .configuration(BuildConfigurationArgs.builder()
///                 .baseOs("DebianBullseye")
///                 .environmentVariables(
///                     EnvironmentVariableArgs.builder()
///                         .name("foo1")
///                         .value("bar1")
///                         .build(),
///                     EnvironmentVariableArgs.builder()
///                         .name("foo2")
///                         .value("bar2")
///                         .build())
///                 .platform("dotnetcore")
///                 .platformVersion("7.0")
///                 .preBuildSteps(
///                     PreBuildStepArgs.builder()
///                         .description("First pre build step.")
///                         .httpGet(HttpGetArgs.builder()
///                             .fileName("output.txt")
///                             .headers(
///                                 "foo",
///                                 "bar")
///                             .url("https://microsoft.com")
///                             .build())
///                         .scripts(
///                             "echo 'hello'",
///                             "echo 'world'")
///                         .build(),
///                     PreBuildStepArgs.builder()
///                         .description("Second pre build step.")
///                         .httpGet(HttpGetArgs.builder()
///                             .fileName("output.txt")
///                             .headers("foo")
///                             .url("https://microsoft.com")
///                             .build())
///                         .scripts(
///                             "echo 'hello'",
///                             "echo 'again'")
///                         .build())
///                 .build())
///             .destinationContainerRegistry(ContainerRegistryWithCustomImageArgs.builder()
///                 .image("test.azurecr.io/repo:tag")
///                 .server("test.azurecr.io")
///                 .build())
///             .resourceGroupName("rg")
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
/// const build = new azure_native.app.Build("build", {
///     buildName: "testBuild-123456789az",
///     builderName: "testBuilder",
///     configuration: {
///         baseOs: "DebianBullseye",
///         environmentVariables: [
///             {
///                 name: "foo1",
///                 value: "bar1",
///             },
///             {
///                 name: "foo2",
///                 value: "bar2",
///             },
///         ],
///         platform: "dotnetcore",
///         platformVersion: "7.0",
///         preBuildSteps: [
///             {
///                 description: "First pre build step.",
///                 httpGet: {
///                     fileName: "output.txt",
///                     headers: [
///                         "foo",
///                         "bar",
///                     ],
///                     url: "https://microsoft.com",
///                 },
///                 scripts: [
///                     "echo 'hello'",
///                     "echo 'world'",
///                 ],
///             },
///             {
///                 description: "Second pre build step.",
///                 httpGet: {
///                     fileName: "output.txt",
///                     headers: ["foo"],
///                     url: "https://microsoft.com",
///                 },
///                 scripts: [
///                     "echo 'hello'",
///                     "echo 'again'",
///                 ],
///             },
///         ],
///     },
///     destinationContainerRegistry: {
///         image: "test.azurecr.io/repo:tag",
///         server: "test.azurecr.io",
///     },
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// build = azure_native.app.Build("build",
///     build_name="testBuild-123456789az",
///     builder_name="testBuilder",
///     configuration={
///         "base_os": "DebianBullseye",
///         "environment_variables": [
///             {
///                 "name": "foo1",
///                 "value": "bar1",
///             },
///             {
///                 "name": "foo2",
///                 "value": "bar2",
///             },
///         ],
///         "platform": "dotnetcore",
///         "platform_version": "7.0",
///         "pre_build_steps": [
///             {
///                 "description": "First pre build step.",
///                 "http_get": {
///                     "file_name": "output.txt",
///                     "headers": [
///                         "foo",
///                         "bar",
///                     ],
///                     "url": "https://microsoft.com",
///                 },
///                 "scripts": [
///                     "echo 'hello'",
///                     "echo 'world'",
///                 ],
///             },
///             {
///                 "description": "Second pre build step.",
///                 "http_get": {
///                     "file_name": "output.txt",
///                     "headers": ["foo"],
///                     "url": "https://microsoft.com",
///                 },
///                 "scripts": [
///                     "echo 'hello'",
///                     "echo 'again'",
///                 ],
///             },
///         ],
///     },
///     destination_container_registry={
///         "image": "test.azurecr.io/repo:tag",
///         "server": "test.azurecr.io",
///     },
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   build:
///     type: azure-native:app:Build
///     properties:
///       buildName: testBuild-123456789az
///       builderName: testBuilder
///       configuration:
///         baseOs: DebianBullseye
///         environmentVariables:
///           - name: foo1
///             value: bar1
///           - name: foo2
///             value: bar2
///         platform: dotnetcore
///         platformVersion: '7.0'
///         preBuildSteps:
///           - description: First pre build step.
///             httpGet:
///               fileName: output.txt
///               headers:
///                 - foo
///                 - bar
///               url: https://microsoft.com
///             scripts:
///               - echo 'hello'
///               - echo 'world'
///           - description: Second pre build step.
///             httpGet:
///               fileName: output.txt
///               headers:
///                 - foo
///               url: https://microsoft.com
///             scripts:
///               - echo 'hello'
///               - echo 'again'
///       destinationContainerRegistry:
///         image: test.azurecr.io/repo:tag
///         server: test.azurecr.io
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:app:Build testBuild-123456789az /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/builders/{builderName}/builds/{buildName}
/// ```
class Build extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Status of the build once it has been provisioned.
  late final pulumi.Output<String> buildStatus;
  /// Configuration of the build.
  late final pulumi.Output<BuildConfigurationResponse?> configuration;
  /// Container registry that the final image will be uploaded to.
  late final pulumi.Output<ContainerRegistryWithCustomImageResponse?> destinationContainerRegistry;
  /// Endpoint from which the build logs can be streamed.
  late final pulumi.Output<String> logStreamEndpoint;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Build provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Endpoint to use to retrieve an authentication token for log streaming and uploading source code.
  late final pulumi.Output<String> tokenEndpoint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Endpoint to which the source code should be uploaded.
  late final pulumi.Output<String> uploadEndpoint;

  /// Creates a new [Build].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Build]. {@macro pulumi_app_build_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Build(
    String name, {
    BuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:Build',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.buildStatus = registerOutput<String>('buildStatus');
    this.configuration = registerOutput<BuildConfigurationResponse?>('configuration');
    this.destinationContainerRegistry = registerOutput<ContainerRegistryWithCustomImageResponse?>('destinationContainerRegistry');
    this.logStreamEndpoint = registerOutput<String>('logStreamEndpoint');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tokenEndpoint = registerOutput<String>('tokenEndpoint');
    this.type = registerOutput<String>('type');
    this.uploadEndpoint = registerOutput<String>('uploadEndpoint');
  }
}
