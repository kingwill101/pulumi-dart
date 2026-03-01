import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_fabric_args.dart';
import 'integration_fabric_properties_response.dart';
import 'system_data_response.dart';

/// The integration fabric resource type.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2023-10-01-preview, 2024-11-01-preview, 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IntegrationFabrics_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationFabric = new AzureNative.Dashboard.IntegrationFabric("integrationFabric", new()
///     {
///         IntegrationFabricName = "sampleIntegration",
///         Location = "West US",
///         Properties = new AzureNative.Dashboard.Inputs.IntegrationFabricPropertiesArgs
///         {
///             DataSourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/myAmw",
///             Scenarios = new[]
///             {
///                 "scenario1",
///                 "scenario2",
///             },
///             TargetResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myAks",
///         },
///         ResourceGroupName = "myResourceGroup",
///         WorkspaceName = "myWorkspace",
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
/// 	dashboard "github.com/pulumi/pulumi-azure-native-sdk/dashboard/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dashboard.NewIntegrationFabric(ctx, "integrationFabric", &dashboard.IntegrationFabricArgs{
/// 			IntegrationFabricName: pulumi.String("sampleIntegration"),
/// 			Location:              pulumi.String("West US"),
/// 			Properties: &dashboard.IntegrationFabricPropertiesArgs{
/// 				DataSourceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/myAmw"),
/// 				Scenarios: pulumi.StringArray{
/// 					pulumi.String("scenario1"),
/// 					pulumi.String("scenario2"),
/// 				},
/// 				TargetResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myAks"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.dashboard.IntegrationFabric;
/// import com.pulumi.azurenative.dashboard.IntegrationFabricArgs;
/// import com.pulumi.azurenative.dashboard.inputs.IntegrationFabricPropertiesArgs;
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
///         var integrationFabric = new IntegrationFabric("integrationFabric", IntegrationFabricArgs.builder()
///             .integrationFabricName("sampleIntegration")
///             .location("West US")
///             .properties(IntegrationFabricPropertiesArgs.builder()
///                 .dataSourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/myAmw")
///                 .scenarios(
///                     "scenario1",
///                     "scenario2")
///                 .targetResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myAks")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .workspaceName("myWorkspace")
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
/// const integrationFabric = new azure_native.dashboard.IntegrationFabric("integrationFabric", {
///     integrationFabricName: "sampleIntegration",
///     location: "West US",
///     properties: {
///         dataSourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/myAmw",
///         scenarios: [
///             "scenario1",
///             "scenario2",
///         ],
///         targetResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myAks",
///     },
///     resourceGroupName: "myResourceGroup",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_fabric = azure_native.dashboard.IntegrationFabric("integrationFabric",
///     integration_fabric_name="sampleIntegration",
///     location="West US",
///     properties={
///         "data_source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/myAmw",
///         "scenarios": [
///             "scenario1",
///             "scenario2",
///         ],
///         "target_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myAks",
///     },
///     resource_group_name="myResourceGroup",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationFabric:
///     type: azure-native:dashboard:IntegrationFabric
///     properties:
///       integrationFabricName: sampleIntegration
///       location: West US
///       properties:
///         dataSourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/myAmw
///         scenarios:
///           - scenario1
///           - scenario2
///         targetResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myAks
///       resourceGroupName: myResourceGroup
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:dashboard:IntegrationFabric sampleIntegration /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Dashboard/grafana/{workspaceName}/integrationFabrics/{integrationFabricName}
/// ```
class IntegrationFabric extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<IntegrationFabricPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationFabric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationFabric]. {@macro pulumi_dashboard_integration_fabric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationFabric(
    String name, {
    IntegrationFabricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dashboard:IntegrationFabric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<IntegrationFabricPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
