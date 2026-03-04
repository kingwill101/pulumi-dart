import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_service_agent_pool_args.dart';
import 'build_service_agent_pool_properties_response.dart';
import 'system_data_response.dart';

/// The build service agent pool resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BuildServiceAgentPool_UpdatePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var buildServiceAgentPool = new AzureNative.AppPlatform.BuildServiceAgentPool("buildServiceAgentPool", new()
///     {
///         AgentPoolName = "default",
///         BuildServiceName = "default",
///         Properties = new AzureNative.AppPlatform.Inputs.BuildServiceAgentPoolPropertiesArgs
///         {
///             PoolSize = new AzureNative.AppPlatform.Inputs.BuildServiceAgentPoolSizePropertiesArgs
///             {
///                 Name = "S3",
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
/// 		_, err := appplatform.NewBuildServiceAgentPool(ctx, "buildServiceAgentPool", &appplatform.BuildServiceAgentPoolArgs{
/// 			AgentPoolName:    pulumi.String("default"),
/// 			BuildServiceName: pulumi.String("default"),
/// 			Properties: &appplatform.BuildServiceAgentPoolPropertiesArgs{
/// 				PoolSize: &appplatform.BuildServiceAgentPoolSizePropertiesArgs{
/// 					Name: pulumi.String("S3"),
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
/// import com.pulumi.azurenative.appplatform.BuildServiceAgentPool;
/// import com.pulumi.azurenative.appplatform.BuildServiceAgentPoolArgs;
/// import com.pulumi.azurenative.appplatform.inputs.BuildServiceAgentPoolPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.BuildServiceAgentPoolSizePropertiesArgs;
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
///         var buildServiceAgentPool = new BuildServiceAgentPool("buildServiceAgentPool", BuildServiceAgentPoolArgs.builder()
///             .agentPoolName("default")
///             .buildServiceName("default")
///             .properties(BuildServiceAgentPoolPropertiesArgs.builder()
///                 .poolSize(BuildServiceAgentPoolSizePropertiesArgs.builder()
///                     .name("S3")
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
/// const buildServiceAgentPool = new azure_native.appplatform.BuildServiceAgentPool("buildServiceAgentPool", {
///     agentPoolName: "default",
///     buildServiceName: "default",
///     properties: {
///         poolSize: {
///             name: "S3",
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
/// build_service_agent_pool = azure_native.appplatform.BuildServiceAgentPool("buildServiceAgentPool",
///     agent_pool_name="default",
///     build_service_name="default",
///     properties={
///         "pool_size": {
///             "name": "S3",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   buildServiceAgentPool:
///     type: azure-native:appplatform:BuildServiceAgentPool
///     properties:
///       agentPoolName: default
///       buildServiceName: default
///       properties:
///         poolSize:
///           name: S3
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
/// $ pulumi import azure-native:appplatform:BuildServiceAgentPool default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/buildServices/{buildServiceName}/agentPools/{agentPoolName}
/// ```
class BuildServiceAgentPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// build service agent pool properties
  late final pulumi.Output<BuildServiceAgentPoolPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [BuildServiceAgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BuildServiceAgentPool]. {@macro pulumi_appplatform_build_service_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BuildServiceAgentPool(
    String name, {
    BuildServiceAgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appplatform:BuildServiceAgentPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BuildServiceAgentPoolPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
