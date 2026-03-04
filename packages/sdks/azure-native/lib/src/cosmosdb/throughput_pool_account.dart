import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'throughput_pool_account_args.dart';

/// An Azure Cosmos DB Throughputpool Account
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDB ThroughputPool Account Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var throughputPoolAccount = new AzureNative.CosmosDB.ThroughputPoolAccount("throughputPoolAccount", new()
///     {
///         AccountLocation = "West US",
///         AccountResourceIdentifier = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1/",
///         ResourceGroupName = "rg1",
///         ThroughputPoolAccountName = "db1",
///         ThroughputPoolName = "tp1",
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
/// 		_, err := cosmosdb.NewThroughputPoolAccount(ctx, "throughputPoolAccount", &cosmosdb.ThroughputPoolAccountArgs{
/// 			AccountLocation:           pulumi.String("West US"),
/// 			AccountResourceIdentifier: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1/"),
/// 			ResourceGroupName:         pulumi.String("rg1"),
/// 			ThroughputPoolAccountName: pulumi.String("db1"),
/// 			ThroughputPoolName:        pulumi.String("tp1"),
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
/// import com.pulumi.azurenative.cosmosdb.ThroughputPoolAccount;
/// import com.pulumi.azurenative.cosmosdb.ThroughputPoolAccountArgs;
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
///         var throughputPoolAccount = new ThroughputPoolAccount("throughputPoolAccount", ThroughputPoolAccountArgs.builder()
///             .accountLocation("West US")
///             .accountResourceIdentifier("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1/")
///             .resourceGroupName("rg1")
///             .throughputPoolAccountName("db1")
///             .throughputPoolName("tp1")
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
/// const throughputPoolAccount = new azure_native.cosmosdb.ThroughputPoolAccount("throughputPoolAccount", {
///     accountLocation: "West US",
///     accountResourceIdentifier: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1/",
///     resourceGroupName: "rg1",
///     throughputPoolAccountName: "db1",
///     throughputPoolName: "tp1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// throughput_pool_account = azure_native.cosmosdb.ThroughputPoolAccount("throughputPoolAccount",
///     account_location="West US",
///     account_resource_identifier="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1/",
///     resource_group_name="rg1",
///     throughput_pool_account_name="db1",
///     throughput_pool_name="tp1")
///
/// ```
///
/// ```yaml
/// resources:
///   throughputPoolAccount:
///     type: azure-native:cosmosdb:ThroughputPoolAccount
///     properties:
///       accountLocation: West US
///       accountResourceIdentifier: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/providers/Microsoft.DocumentDB/resourceGroup/rg1/databaseAccounts/db1/
///       resourceGroupName: rg1
///       throughputPoolAccountName: db1
///       throughputPoolName: tp1
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
/// $ pulumi import azure-native:cosmosdb:ThroughputPoolAccount myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/throughputPools/{throughputPoolName}/throughputPoolAccounts/{throughputPoolAccountName}
/// ```
class ThroughputPoolAccount extends pulumi.CustomResource {
  /// The instance id of global database account in the throughputPool.
  late final pulumi.Output<String> accountInstanceId;

  /// The location of  global database account in the throughputPool.
  late final pulumi.Output<String?> accountLocation;

  /// The resource identifier of global database account in the throughputPool.
  late final pulumi.Output<String?> accountResourceIdentifier;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// A provisioning state of the ThroughputPool Account.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ThroughputPoolAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThroughputPoolAccount]. {@macro pulumi_cosmosdb_throughput_pool_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThroughputPoolAccount(
    String name, {
    ThroughputPoolAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:ThroughputPoolAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountInstanceId = registerOutput<String>('accountInstanceId');
    accountLocation = registerOutput<String?>('accountLocation');
    accountResourceIdentifier = registerOutput<String?>(
      'accountResourceIdentifier',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
