import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_analytic_args.dart';
import 'system_data_response.dart';

/// An Azure Cosmos DB FleetAnalytics.
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDB FleetAnalytics Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fleetAnalytic = new AzureNative.CosmosDB.FleetAnalytic("fleetAnalytic", new()
///     {
///         FleetAnalyticsName = "storageAccount",
///         FleetName = "fleet1",
///         ResourceGroupName = "rg1",
///         StorageLocationType = AzureNative.CosmosDB.StorageLocationType.StorageAccount,
///         StorageLocationUri = "/subscriptions/d1eb41bc-1b7f-4404-bd2a-868c222852d/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/testStorageAccount1",
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewFleetAnalytic(ctx, "fleetAnalytic", &cosmosdb.FleetAnalyticArgs{
/// 			FleetAnalyticsName:  pulumi.String("storageAccount"),
/// 			FleetName:           pulumi.String("fleet1"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			StorageLocationType: pulumi.String(cosmosdb.StorageLocationTypeStorageAccount),
/// 			StorageLocationUri:  pulumi.String("/subscriptions/d1eb41bc-1b7f-4404-bd2a-868c222852d/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/testStorageAccount1"),
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
/// import com.pulumi.azurenative.cosmosdb.FleetAnalytic;
/// import com.pulumi.azurenative.cosmosdb.FleetAnalyticArgs;
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
///         var fleetAnalytic = new FleetAnalytic("fleetAnalytic", FleetAnalyticArgs.builder()
///             .fleetAnalyticsName("storageAccount")
///             .fleetName("fleet1")
///             .resourceGroupName("rg1")
///             .storageLocationType("StorageAccount")
///             .storageLocationUri("/subscriptions/d1eb41bc-1b7f-4404-bd2a-868c222852d/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/testStorageAccount1")
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
/// const fleetAnalytic = new azure_native.cosmosdb.FleetAnalytic("fleetAnalytic", {
///     fleetAnalyticsName: "storageAccount",
///     fleetName: "fleet1",
///     resourceGroupName: "rg1",
///     storageLocationType: azure_native.cosmosdb.StorageLocationType.StorageAccount,
///     storageLocationUri: "/subscriptions/d1eb41bc-1b7f-4404-bd2a-868c222852d/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/testStorageAccount1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fleet_analytic = azure_native.cosmosdb.FleetAnalytic("fleetAnalytic",
///     fleet_analytics_name="storageAccount",
///     fleet_name="fleet1",
///     resource_group_name="rg1",
///     storage_location_type=azure_native.cosmosdb.StorageLocationType.STORAGE_ACCOUNT,
///     storage_location_uri="/subscriptions/d1eb41bc-1b7f-4404-bd2a-868c222852d/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/testStorageAccount1")
///
/// ```
///
/// ```yaml
/// resources:
///   fleetAnalytic:
///     type: azure-native:cosmosdb:FleetAnalytic
///     properties:
///       fleetAnalyticsName: storageAccount
///       fleetName: fleet1
///       resourceGroupName: rg1
///       storageLocationType: StorageAccount
///       storageLocationUri: /subscriptions/d1eb41bc-1b7f-4404-bd2a-868c222852d/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/testStorageAccount1
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
/// $ pulumi import azure-native:cosmosdb:FleetAnalytic storageAccount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/fleets/{fleetName}/fleetAnalytics/{fleetAnalyticsName}
/// ```
class FleetAnalytic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A provisioning state of the FleetAnalytics.
  late final pulumi.Output<String> provisioningState;
  /// The type of the fleet analytics resource.
  late final pulumi.Output<String?> storageLocationType;
  /// The unique identifier of the fleet analytics resource.
  late final pulumi.Output<String?> storageLocationUri;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FleetAnalytic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FleetAnalytic]. {@macro pulumi_cosmosdb_fleet_analytic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FleetAnalytic(
    String name, {
    FleetAnalyticArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:FleetAnalytic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storageLocationType = registerOutput<String?>('storageLocationType');
    storageLocationUri = registerOutput<String?>('storageLocationUri');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
