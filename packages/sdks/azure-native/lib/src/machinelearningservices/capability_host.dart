import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_host_args.dart';
import 'capability_host_properties_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2024-10-01-preview.
///
/// Other available API versions: 2024-10-01-preview, 2025-01-01-preview, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate CapabilityHost.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capabilityHost = new AzureNative.MachineLearningServices.CapabilityHost("capabilityHost", new()
///     {
///         Name = "capabilityHostName",
///         Properties = new AzureNative.MachineLearningServices.Inputs.CapabilityHostPropertiesArgs
///         {
///             AcaEnvironmentConnections = new[]
///             {
///                 "sampleAcaEnvironmentConnection",
///             },
///             AiServicesConnections = new[]
///             {
///                 "sampleAIServiceConnection",
///             },
///             CustomerSubnet = "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///             StorageConnections = new[]
///             {
///                 "sampleStorageConnection",
///             },
///             ThreadStorageConnections = new[]
///             {
///                 "sampleThreadStorageConnection",
///             },
///             VectorStoreConnections = new[]
///             {
///                 "sampleVectorStoreConnection",
///             },
///         },
///         ResourceGroupName = "test-rg",
///         WorkspaceName = "my-aml-workspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewCapabilityHost(ctx, "capabilityHost", &machinelearningservices.CapabilityHostArgs{
/// 			Name: pulumi.String("capabilityHostName"),
/// 			Properties: &machinelearningservices.CapabilityHostPropertiesArgs{
/// 				AcaEnvironmentConnections: pulumi.StringArray{
/// 					pulumi.String("sampleAcaEnvironmentConnection"),
/// 				},
/// 				AiServicesConnections: pulumi.StringArray{
/// 					pulumi.String("sampleAIServiceConnection"),
/// 				},
/// 				CustomerSubnet: pulumi.String("subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"),
/// 				StorageConnections: pulumi.StringArray{
/// 					pulumi.String("sampleStorageConnection"),
/// 				},
/// 				ThreadStorageConnections: pulumi.StringArray{
/// 					pulumi.String("sampleThreadStorageConnection"),
/// 				},
/// 				VectorStoreConnections: pulumi.StringArray{
/// 					pulumi.String("sampleVectorStoreConnection"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			WorkspaceName:     pulumi.String("my-aml-workspace"),
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
/// resource "azure-native_machinelearningservices_capabilityhost" "capabilityHost" {
///   name = "capabilityHostName"
///   properties = {
///     aca_environment_connections = ["sampleAcaEnvironmentConnection"]
///     ai_services_connections     = ["sampleAIServiceConnection"]
///     customer_subnet             = "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"
///     storage_connections         = ["sampleStorageConnection"]
///     thread_storage_connections  = ["sampleThreadStorageConnection"]
///     vector_store_connections    = ["sampleVectorStoreConnection"]
///   }
///   resource_group_name = "test-rg"
///   workspace_name      = "my-aml-workspace"
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
/// import com.pulumi.azurenative.machinelearningservices.CapabilityHost;
/// import com.pulumi.azurenative.machinelearningservices.CapabilityHostArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.CapabilityHostPropertiesArgs;
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
///         var capabilityHost = new CapabilityHost("capabilityHost", CapabilityHostArgs.builder()
///             .name("capabilityHostName")
///             .properties(CapabilityHostPropertiesArgs.builder()
///                 .acaEnvironmentConnections("sampleAcaEnvironmentConnection")
///                 .aiServicesConnections("sampleAIServiceConnection")
///                 .customerSubnet("subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet")
///                 .storageConnections("sampleStorageConnection")
///                 .threadStorageConnections("sampleThreadStorageConnection")
///                 .vectorStoreConnections("sampleVectorStoreConnection")
///                 .build())
///             .resourceGroupName("test-rg")
///             .workspaceName("my-aml-workspace")
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
/// const capabilityHost = new azure_native.machinelearningservices.CapabilityHost("capabilityHost", {
///     name: "capabilityHostName",
///     properties: {
///         acaEnvironmentConnections: ["sampleAcaEnvironmentConnection"],
///         aiServicesConnections: ["sampleAIServiceConnection"],
///         customerSubnet: "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///         storageConnections: ["sampleStorageConnection"],
///         threadStorageConnections: ["sampleThreadStorageConnection"],
///         vectorStoreConnections: ["sampleVectorStoreConnection"],
///     },
///     resourceGroupName: "test-rg",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capability_host = azure_native.machinelearningservices.CapabilityHost("capabilityHost",
///     name="capabilityHostName",
///     properties={
///         "aca_environment_connections": ["sampleAcaEnvironmentConnection"],
///         "ai_services_connections": ["sampleAIServiceConnection"],
///         "customer_subnet": "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///         "storage_connections": ["sampleStorageConnection"],
///         "thread_storage_connections": ["sampleThreadStorageConnection"],
///         "vector_store_connections": ["sampleVectorStoreConnection"],
///     },
///     resource_group_name="test-rg",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   capabilityHost:
///     type: azure-native:machinelearningservices:CapabilityHost
///     properties:
///       name: capabilityHostName
///       properties:
///         acaEnvironmentConnections:
///           - sampleAcaEnvironmentConnection
///         aiServicesConnections:
///           - sampleAIServiceConnection
///         customerSubnet: subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/myResourceGroups/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet
///         storageConnections:
///           - sampleStorageConnection
///         threadStorageConnections:
///           - sampleThreadStorageConnection
///         vectorStoreConnections:
///           - sampleVectorStoreConnection
///       resourceGroupName: test-rg
///       workspaceName: my-aml-workspace
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
/// $ pulumi import azure-native:machinelearningservices:CapabilityHost capabilityHostName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/capabilityHosts/{name}
/// ```
class CapabilityHost extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<CapabilityHostPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CapabilityHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapabilityHost]. {@macro pulumi_machinelearningservices_capability_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapabilityHost(
    String name, {
    CapabilityHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:CapabilityHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CapabilityHostPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapabilityHostPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CapabilityHost] resource.
  CapabilityHost.reference(String urn)
    : super(
        'azure-native:machinelearningservices:CapabilityHost',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CapabilityHostPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapabilityHostPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
