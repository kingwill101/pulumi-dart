import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry_args.dart';
import 'container_registry_properties_response.dart';
import 'system_data_response.dart';

/// Container registry resource payload.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ContainerRegistries_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerRegistry = new AzureNative.AppPlatform.ContainerRegistry("containerRegistry", new()
///     {
///         ContainerRegistryName = "my-container-registry",
///         Properties = new AzureNative.AppPlatform.Inputs.ContainerRegistryPropertiesArgs
///         {
///             Credentials = new AzureNative.AppPlatform.Inputs.ContainerRegistryBasicCredentialsArgs
///             {
///                 Password = "myPassword",
///                 Server = "myServer",
///                 Type = "BasicAuth",
///                 Username = "myUsername",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "my-service",
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
/// 		_, err := appplatform.NewContainerRegistry(ctx, "containerRegistry", &appplatform.ContainerRegistryArgs{
/// 			ContainerRegistryName: pulumi.String("my-container-registry"),
/// 			Properties: &appplatform.ContainerRegistryPropertiesArgs{
/// 				Credentials: &appplatform.ContainerRegistryBasicCredentialsArgs{
/// 					Password: pulumi.String("myPassword"),
/// 					Server:   pulumi.String("myServer"),
/// 					Type:     pulumi.String("BasicAuth"),
/// 					Username: pulumi.String("myUsername"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("my-service"),
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
/// resource "azure-native_appplatform_containerregistry" "containerRegistry" {
///   container_registry_name = "my-container-registry"
///   properties = {
///     credentials = {
///       password = "myPassword"
///       server   = "myServer"
///       type     = "BasicAuth"
///       username = "myUsername"
///     }
///   }
///   resource_group_name = "myResourceGroup"
///   service_name        = "my-service"
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
/// import com.pulumi.azurenative.appplatform.ContainerRegistry;
/// import com.pulumi.azurenative.appplatform.ContainerRegistryArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ContainerRegistryPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ContainerRegistryBasicCredentialsArgs;
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
///         var containerRegistry = new ContainerRegistry("containerRegistry", ContainerRegistryArgs.builder()
///             .containerRegistryName("my-container-registry")
///             .properties(ContainerRegistryPropertiesArgs.builder()
///                 .credentials(Map.ofEntries(
///                     Map.entry("password", "myPassword"),
///                     Map.entry("server", "myServer"),
///                     Map.entry("type", "BasicAuth"),
///                     Map.entry("username", "myUsername")
///                 ))
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("my-service")
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
/// const containerRegistry = new azure_native.appplatform.ContainerRegistry("containerRegistry", {
///     containerRegistryName: "my-container-registry",
///     properties: {
///         credentials: {
///             password: "myPassword",
///             server: "myServer",
///             type: "BasicAuth",
///             username: "myUsername",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "my-service",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_registry = azure_native.appplatform.ContainerRegistry("containerRegistry",
///     container_registry_name="my-container-registry",
///     properties={
///         "credentials": {
///             "password": "myPassword",
///             "server": "myServer",
///             "type": "BasicAuth",
///             "username": "myUsername",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="my-service")
///
/// ```
///
/// ```yaml
/// resources:
///   containerRegistry:
///     type: azure-native:appplatform:ContainerRegistry
///     properties:
///       containerRegistryName: my-container-registry
///       properties:
///         credentials:
///           password: myPassword
///           server: myServer
///           type: BasicAuth
///           username: myUsername
///       resourceGroupName: myResourceGroup
///       serviceName: my-service
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
/// $ pulumi import azure-native:appplatform:ContainerRegistry my-container-registry /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/containerRegistries/{containerRegistryName}
/// ```
class ContainerRegistry extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the container registry resource payload.
  late final pulumi.Output<ContainerRegistryPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ContainerRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerRegistry]. {@macro pulumi_appplatform_container_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerRegistry(
    String name, {
    ContainerRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:ContainerRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ContainerRegistryPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerRegistryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ContainerRegistry] resource.
  ContainerRegistry.reference(String urn)
    : super(
        'azure-native:appplatform:ContainerRegistry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ContainerRegistryPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerRegistryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
