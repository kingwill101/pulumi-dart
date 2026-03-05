import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleetspace_account_args.dart';
import 'fleetspace_account_properties_response_global_database_account_properties.dart';
import 'system_data_response.dart';

/// An Azure Cosmos DB Fleetspace Account
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDB FleetspaceAccount Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fleetspaceAccount = new AzureNative.CosmosDB.FleetspaceAccount("fleetspaceAccount", new()
///     {
///         FleetName = "fleet1",
///         FleetspaceAccountName = "db1",
///         FleetspaceName = "fleetspace1",
///         GlobalDatabaseAccountProperties = new AzureNative.CosmosDB.Inputs.FleetspaceAccountPropertiesGlobalDatabaseAccountPropertiesArgs
///         {
///             ArmLocation = "West US",
///             ResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1",
///         },
///         ResourceGroupName = "rg1",
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
/// 		_, err := cosmosdb.NewFleetspaceAccount(ctx, "fleetspaceAccount", &cosmosdb.FleetspaceAccountArgs{
/// 			FleetName:             pulumi.String("fleet1"),
/// 			FleetspaceAccountName: pulumi.String("db1"),
/// 			FleetspaceName:        pulumi.String("fleetspace1"),
/// 			GlobalDatabaseAccountProperties: &cosmosdb.FleetspaceAccountPropertiesGlobalDatabaseAccountPropertiesArgs{
/// 				ArmLocation: pulumi.String("West US"),
/// 				ResourceId:  pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.cosmosdb.FleetspaceAccount;
/// import com.pulumi.azurenative.cosmosdb.FleetspaceAccountArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.FleetspaceAccountPropertiesGlobalDatabaseAccountPropertiesArgs;
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
///         var fleetspaceAccount = new FleetspaceAccount("fleetspaceAccount", FleetspaceAccountArgs.builder()
///             .fleetName("fleet1")
///             .fleetspaceAccountName("db1")
///             .fleetspaceName("fleetspace1")
///             .globalDatabaseAccountProperties(FleetspaceAccountPropertiesGlobalDatabaseAccountPropertiesArgs.builder()
///                 .armLocation("West US")
///                 .resourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const fleetspaceAccount = new azure_native.cosmosdb.FleetspaceAccount("fleetspaceAccount", {
///     fleetName: "fleet1",
///     fleetspaceAccountName: "db1",
///     fleetspaceName: "fleetspace1",
///     globalDatabaseAccountProperties: {
///         armLocation: "West US",
///         resourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fleetspace_account = azure_native.cosmosdb.FleetspaceAccount("fleetspaceAccount",
///     fleet_name="fleet1",
///     fleetspace_account_name="db1",
///     fleetspace_name="fleetspace1",
///     global_database_account_properties={
///         "arm_location": "West US",
///         "resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   fleetspaceAccount:
///     type: azure-native:cosmosdb:FleetspaceAccount
///     properties:
///       fleetName: fleet1
///       fleetspaceAccountName: db1
///       fleetspaceName: fleetspace1
///       globalDatabaseAccountProperties:
///         armLocation: West US
///         resourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:cosmosdb:FleetspaceAccount db1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/fleets/{fleetName}/fleetspaces/{fleetspaceName}/fleetspaceAccounts/{fleetspaceAccountName}
/// ```
class FleetspaceAccount extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration for fleetspace Account in the fleetspace.
  late final pulumi.Output<
    FleetspaceAccountPropertiesResponseGlobalDatabaseAccountProperties?
  >
  globalDatabaseAccountProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// A provisioning state of the Fleetspace Account.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FleetspaceAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FleetspaceAccount]. {@macro pulumi_cosmosdb_fleetspace_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FleetspaceAccount(
    String name, {
    FleetspaceAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:FleetspaceAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    globalDatabaseAccountProperties =
        registerOutput<
          FleetspaceAccountPropertiesResponseGlobalDatabaseAccountProperties?
        >(
          'globalDatabaseAccountProperties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return FleetspaceAccountPropertiesResponseGlobalDatabaseAccountProperties.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
