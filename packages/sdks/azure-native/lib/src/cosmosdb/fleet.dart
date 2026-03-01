import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_args.dart';
import 'system_data_response.dart';

/// An Azure Cosmos DB FleetResource.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDB Fleet Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fleet = new AzureNative.CosmosDB.Fleet("fleet", new()
///     {
///         FleetName = "fleet1",
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "Dept", "Finance" },
///             { "Environment", "Production" },
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewFleet(ctx, "fleet", &cosmosdb.FleetArgs{
/// 			FleetName:         pulumi.String("fleet1"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"Dept":        pulumi.String("Finance"),
/// 				"Environment": pulumi.String("Production"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cosmosdb.Fleet;
/// import com.pulumi.azurenative.cosmosdb.FleetArgs;
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
///         var fleet = new Fleet("fleet", FleetArgs.builder()
///             .fleetName("fleet1")
///             .location("West US")
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///                 Map.entry("Dept", "Finance"),
///                 Map.entry("Environment", "Production")
///             ))
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
/// const fleet = new azure_native.cosmosdb.Fleet("fleet", {
///     fleetName: "fleet1",
///     location: "West US",
///     resourceGroupName: "rg1",
///     tags: {
///         Dept: "Finance",
///         Environment: "Production",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fleet = azure_native.cosmosdb.Fleet("fleet",
///     fleet_name="fleet1",
///     location="West US",
///     resource_group_name="rg1",
///     tags={
///         "Dept": "Finance",
///         "Environment": "Production",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   fleet:
///     type: azure-native:cosmosdb:Fleet
///     properties:
///       fleetName: fleet1
///       location: West US
///       resourceGroupName: rg1
///       tags:
///         Dept: Finance
///         Environment: Production
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
/// $ pulumi import azure-native:cosmosdb:Fleet fleet1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/fleets/{fleetName}
/// ```
class Fleet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A provisioning state of the Fleet.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_cosmosdb_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(
    String name, {
    FleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
