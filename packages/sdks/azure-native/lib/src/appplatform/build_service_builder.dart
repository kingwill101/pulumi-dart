import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_service_builder_args.dart';
import 'builder_properties_response.dart';
import 'system_data_response.dart';

/// KPack Builder resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BuildServiceBuilder_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var buildServiceBuilder = new AzureNative.AppPlatform.BuildServiceBuilder("buildServiceBuilder", new()
///     {
///         BuildServiceName = "default",
///         BuilderName = "mybuilder",
///         Properties = new AzureNative.AppPlatform.Inputs.BuilderPropertiesArgs
///         {
///             BuildpackGroups = new[]
///             {
///                 new AzureNative.AppPlatform.Inputs.BuildpacksGroupPropertiesArgs
///                 {
///                     Buildpacks = new[]
///                     {
///                         new AzureNative.AppPlatform.Inputs.BuildpackPropertiesArgs
///                         {
///                             Id = "tanzu-buildpacks/java-azure",
///                         },
///                     },
///                     Name = "mix",
///                 },
///             },
///             Stack = new AzureNative.AppPlatform.Inputs.StackPropertiesArgs
///             {
///                 Id = "io.buildpacks.stacks.bionic",
///                 Version = "base",
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
/// 		_, err := appplatform.NewBuildServiceBuilder(ctx, "buildServiceBuilder", &appplatform.BuildServiceBuilderArgs{
/// 			BuildServiceName: pulumi.String("default"),
/// 			BuilderName:      pulumi.String("mybuilder"),
/// 			Properties: &appplatform.BuilderPropertiesArgs{
/// 				BuildpackGroups: appplatform.BuildpacksGroupPropertiesArray{
/// 					&appplatform.BuildpacksGroupPropertiesArgs{
/// 						Buildpacks: appplatform.BuildpackPropertiesArray{
/// 							&appplatform.BuildpackPropertiesArgs{
/// 								Id: pulumi.String("tanzu-buildpacks/java-azure"),
/// 							},
/// 						},
/// 						Name: pulumi.String("mix"),
/// 					},
/// 				},
/// 				Stack: &appplatform.StackPropertiesArgs{
/// 					Id:      pulumi.String("io.buildpacks.stacks.bionic"),
/// 					Version: pulumi.String("base"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_appplatform_buildservicebuilder" "buildServiceBuilder" {
///   build_service_name = "default"
///   builder_name       = "mybuilder"
///   properties = {
///     buildpack_groups = [{
///       "buildpacks" = [{
///         "id" = "tanzu-buildpacks/java-azure"
///       }]
///       "name" = "mix"
///     }]
///     stack = {
///       id      = "io.buildpacks.stacks.bionic"
///       version = "base"
///     }
///   }
///   resource_group_name = "myResourceGroup"
///   service_name        = "myservice"
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
/// import com.pulumi.azurenative.appplatform.BuildServiceBuilder;
/// import com.pulumi.azurenative.appplatform.BuildServiceBuilderArgs;
/// import com.pulumi.azurenative.appplatform.inputs.BuilderPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.StackPropertiesArgs;
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
///         var buildServiceBuilder = new BuildServiceBuilder("buildServiceBuilder", BuildServiceBuilderArgs.builder()
///             .buildServiceName("default")
///             .builderName("mybuilder")
///             .properties(BuilderPropertiesArgs.builder()
///                 .buildpackGroups(BuildpacksGroupPropertiesArgs.builder()
///                     .buildpacks(BuildpackPropertiesArgs.builder()
///                         .id("tanzu-buildpacks/java-azure")
///                         .build())
///                     .name("mix")
///                     .build())
///                 .stack(StackPropertiesArgs.builder()
///                     .id("io.buildpacks.stacks.bionic")
///                     .version("base")
///                     .build())
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
/// const buildServiceBuilder = new azure_native.appplatform.BuildServiceBuilder("buildServiceBuilder", {
///     buildServiceName: "default",
///     builderName: "mybuilder",
///     properties: {
///         buildpackGroups: [{
///             buildpacks: [{
///                 id: "tanzu-buildpacks/java-azure",
///             }],
///             name: "mix",
///         }],
///         stack: {
///             id: "io.buildpacks.stacks.bionic",
///             version: "base",
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
/// build_service_builder = azure_native.appplatform.BuildServiceBuilder("buildServiceBuilder",
///     build_service_name="default",
///     builder_name="mybuilder",
///     properties={
///         "buildpack_groups": [{
///             "buildpacks": [{
///                 "id": "tanzu-buildpacks/java-azure",
///             }],
///             "name": "mix",
///         }],
///         "stack": {
///             "id": "io.buildpacks.stacks.bionic",
///             "version": "base",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   buildServiceBuilder:
///     type: azure-native:appplatform:BuildServiceBuilder
///     properties:
///       buildServiceName: default
///       builderName: mybuilder
///       properties:
///         buildpackGroups:
///           - buildpacks:
///               - id: tanzu-buildpacks/java-azure
///             name: mix
///         stack:
///           id: io.buildpacks.stacks.bionic
///           version: base
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
/// $ pulumi import azure-native:appplatform:BuildServiceBuilder mybuilder /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/buildServices/{buildServiceName}/builders/{builderName}
/// ```
class BuildServiceBuilder extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Property of the Builder resource.
  late final pulumi.Output<BuilderPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [BuildServiceBuilder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BuildServiceBuilder]. {@macro pulumi_appplatform_build_service_builder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BuildServiceBuilder(
    String name, {
    BuildServiceBuilderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:BuildServiceBuilder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BuilderPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuilderPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
