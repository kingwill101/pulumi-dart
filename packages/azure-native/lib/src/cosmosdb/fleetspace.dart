import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleetspace_args.dart';
import 'fleetspace_properties_response_throughput_pool_configuration.dart';
import 'system_data_response.dart';

/// An Azure Cosmos DB Fleetspace.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDB Fleetspace Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fleetspace = new AzureNative.CosmosDB.Fleetspace("fleetspace", new()
///     {
///         DataRegions = new[]
///         {
///             "westus2",
///         },
///         FleetName = "fleet1",
///         FleetspaceApiKind = AzureNative.CosmosDB.FleetspaceApiKind.NoSQL,
///         FleetspaceName = "fleetspace1",
///         ResourceGroupName = "rg1",
///         ServiceTier = AzureNative.CosmosDB.ServiceTier.GeneralPurpose,
///         ThroughputPoolConfiguration = new AzureNative.CosmosDB.Inputs.FleetspacePropertiesThroughputPoolConfigurationArgs
///         {
///             MaxThroughput = 500000,
///             MinThroughput = 100000,
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
/// 		_, err := cosmosdb.NewFleetspace(ctx, "fleetspace", &cosmosdb.FleetspaceArgs{
/// 			DataRegions: pulumi.StringArray{
/// 				pulumi.String("westus2"),
/// 			},
/// 			FleetName:         pulumi.String("fleet1"),
/// 			FleetspaceApiKind: pulumi.String(cosmosdb.FleetspaceApiKindNoSQL),
/// 			FleetspaceName:    pulumi.String("fleetspace1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceTier:       pulumi.String(cosmosdb.ServiceTierGeneralPurpose),
/// 			ThroughputPoolConfiguration: &cosmosdb.FleetspacePropertiesThroughputPoolConfigurationArgs{
/// 				MaxThroughput: pulumi.Int(500000),
/// 				MinThroughput: pulumi.Int(100000),
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
/// import com.pulumi.azurenative.cosmosdb.Fleetspace;
/// import com.pulumi.azurenative.cosmosdb.FleetspaceArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.FleetspacePropertiesThroughputPoolConfigurationArgs;
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
///         var fleetspace = new Fleetspace("fleetspace", FleetspaceArgs.builder()
///             .dataRegions("westus2")
///             .fleetName("fleet1")
///             .fleetspaceApiKind("NoSQL")
///             .fleetspaceName("fleetspace1")
///             .resourceGroupName("rg1")
///             .serviceTier("GeneralPurpose")
///             .throughputPoolConfiguration(FleetspacePropertiesThroughputPoolConfigurationArgs.builder()
///                 .maxThroughput(500000)
///                 .minThroughput(100000)
///                 .build())
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
/// const fleetspace = new azure_native.cosmosdb.Fleetspace("fleetspace", {
///     dataRegions: ["westus2"],
///     fleetName: "fleet1",
///     fleetspaceApiKind: azure_native.cosmosdb.FleetspaceApiKind.NoSQL,
///     fleetspaceName: "fleetspace1",
///     resourceGroupName: "rg1",
///     serviceTier: azure_native.cosmosdb.ServiceTier.GeneralPurpose,
///     throughputPoolConfiguration: {
///         maxThroughput: 500000,
///         minThroughput: 100000,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fleetspace = azure_native.cosmosdb.Fleetspace("fleetspace",
///     data_regions=["westus2"],
///     fleet_name="fleet1",
///     fleetspace_api_kind=azure_native.cosmosdb.FleetspaceApiKind.NO_SQL,
///     fleetspace_name="fleetspace1",
///     resource_group_name="rg1",
///     service_tier=azure_native.cosmosdb.ServiceTier.GENERAL_PURPOSE,
///     throughput_pool_configuration={
///         "max_throughput": 500000,
///         "min_throughput": 100000,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   fleetspace:
///     type: azure-native:cosmosdb:Fleetspace
///     properties:
///       dataRegions:
///         - westus2
///       fleetName: fleet1
///       fleetspaceApiKind: NoSQL
///       fleetspaceName: fleetspace1
///       resourceGroupName: rg1
///       serviceTier: GeneralPurpose
///       throughputPoolConfiguration:
///         maxThroughput: 500000
///         minThroughput: 100000
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
/// $ pulumi import azure-native:cosmosdb:Fleetspace fleetspace1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/fleets/{fleetName}/fleetspaces/{fleetspaceName}
/// ```
class Fleetspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of data regions assigned to the fleetspace. Eg [westus2]
  late final pulumi.Output<List<String>?> dataRegions;
  /// The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
  late final pulumi.Output<String?> fleetspaceApiKind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A provisioning state of the Fleetspace.
  late final pulumi.Output<String> provisioningState;
  /// Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
  late final pulumi.Output<String?> serviceTier;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Configuration for throughput pool in the fleetspace.
  late final pulumi.Output<FleetspacePropertiesResponseThroughputPoolConfiguration?> throughputPoolConfiguration;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Fleetspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleetspace]. {@macro pulumi_cosmosdb_fleetspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleetspace(
    String name, {
    FleetspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:Fleetspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.dataRegions = registerOutput<List<String>?>('dataRegions');
    this.fleetspaceApiKind = registerOutput<String?>('fleetspaceApiKind');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.serviceTier = registerOutput<String?>('serviceTier');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.throughputPoolConfiguration = registerOutput<FleetspacePropertiesResponseThroughputPoolConfiguration?>('throughputPoolConfiguration');
    this.type = registerOutput<String>('type');
  }
}
