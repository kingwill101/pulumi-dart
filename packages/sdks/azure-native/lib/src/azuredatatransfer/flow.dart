import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_args.dart';
import 'flow_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'system_data_response.dart';

/// The flow resource definition.
///
/// Uses Azure REST API version 2024-09-27. In version 2.x of the Azure Native provider, it used API version 2023-10-11-preview.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the flow resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var flow = new AzureNative.AzureDataTransfer.Flow("flow", new()
///     {
///         ConnectionName = "testConnection",
///         FlowName = "testFlow",
///         Location = "East US",
///         Properties = new AzureNative.AzureDataTransfer.Inputs.FlowPropertiesArgs
///         {
///             Connection = new AzureNative.AzureDataTransfer.Inputs.SelectedResourceArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testRG/providers/Microsoft.AzureDataTransfer/connections/testConnection",
///             },
///             FlowType = AzureNative.AzureDataTransfer.FlowType.Standard,
///             StorageAccountName = "testsa",
///             StorageContainerName = "testcontainer",
///         },
///         ResourceGroupName = "testRG",
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
/// 	azuredatatransfer "github.com/pulumi/pulumi-azure-native-sdk/azuredatatransfer/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuredatatransfer.NewFlow(ctx, "flow", &azuredatatransfer.FlowArgs{
/// 			ConnectionName: pulumi.String("testConnection"),
/// 			FlowName:       pulumi.String("testFlow"),
/// 			Location:       pulumi.String("East US"),
/// 			Properties: &azuredatatransfer.FlowPropertiesArgs{
/// 				Connection: &azuredatatransfer.SelectedResourceArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testRG/providers/Microsoft.AzureDataTransfer/connections/testConnection"),
/// 				},
/// 				FlowType:             pulumi.String(azuredatatransfer.FlowTypeStandard),
/// 				StorageAccountName:   pulumi.String("testsa"),
/// 				StorageContainerName: pulumi.String("testcontainer"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testRG"),
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
/// import com.pulumi.azurenative.azuredatatransfer.Flow;
/// import com.pulumi.azurenative.azuredatatransfer.FlowArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.FlowPropertiesArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.SelectedResourceArgs;
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
///         var flow = new Flow("flow", FlowArgs.builder()
///             .connectionName("testConnection")
///             .flowName("testFlow")
///             .location("East US")
///             .properties(FlowPropertiesArgs.builder()
///                 .connection(SelectedResourceArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testRG/providers/Microsoft.AzureDataTransfer/connections/testConnection")
///                     .build())
///                 .flowType("Standard")
///                 .storageAccountName("testsa")
///                 .storageContainerName("testcontainer")
///                 .build())
///             .resourceGroupName("testRG")
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
/// const flow = new azure_native.azuredatatransfer.Flow("flow", {
///     connectionName: "testConnection",
///     flowName: "testFlow",
///     location: "East US",
///     properties: {
///         connection: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testRG/providers/Microsoft.AzureDataTransfer/connections/testConnection",
///         },
///         flowType: azure_native.azuredatatransfer.FlowType.Standard,
///         storageAccountName: "testsa",
///         storageContainerName: "testcontainer",
///     },
///     resourceGroupName: "testRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// flow = azure_native.azuredatatransfer.Flow("flow",
///     connection_name="testConnection",
///     flow_name="testFlow",
///     location="East US",
///     properties={
///         "connection": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testRG/providers/Microsoft.AzureDataTransfer/connections/testConnection",
///         },
///         "flow_type": azure_native.azuredatatransfer.FlowType.STANDARD,
///         "storage_account_name": "testsa",
///         "storage_container_name": "testcontainer",
///     },
///     resource_group_name="testRG")
///
/// ```
///
/// ```yaml
/// resources:
///   flow:
///     type: azure-native:azuredatatransfer:Flow
///     properties:
///       connectionName: testConnection
///       flowName: testFlow
///       location: East US
///       properties:
///         connection:
///           id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testRG/providers/Microsoft.AzureDataTransfer/connections/testConnection
///         flowType: Standard
///         storageAccountName: testsa
///         storageContainerName: testcontainer
///       resourceGroupName: testRG
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
/// $ pulumi import azure-native:azuredatatransfer:Flow myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureDataTransfer/connections/{connectionName}/flows/{flowName}
/// ```
class Flow extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed identity of the flow resource, if configured.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Plan for the resource.
  late final pulumi.Output<PlanResponse?> plan;
  /// Properties of flow
  late final pulumi.Output<FlowPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Flow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Flow]. {@macro pulumi_azuredatatransfer_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Flow(
    String name, {
    FlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azuredatatransfer:Flow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    properties = registerOutput<FlowPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
