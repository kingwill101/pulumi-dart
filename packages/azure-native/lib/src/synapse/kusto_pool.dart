import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_sku_response.dart';
import 'kusto_pool_args.dart';
import 'language_extensions_list_response.dart';
import 'optimized_autoscale_response.dart';
import 'system_data_response.dart';

/// Class representing a Kusto kusto pool.
///
/// Uses Azure REST API version 2021-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01-preview.
///
/// Other available API versions: 2021-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### kustoPoolsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoPool = new AzureNative.Synapse.KustoPool("kustoPool", new()
///     {
///         EnablePurge = true,
///         EnableStreamingIngest = true,
///         KustoPoolName = "kustoclusterrptest4",
///         Location = "westus",
///         ResourceGroupName = "kustorptest",
///         Sku = new AzureNative.Synapse.Inputs.AzureSkuArgs
///         {
///             Capacity = 2,
///             Name = AzureNative.Synapse.SkuName.Storage_optimized,
///             Size = AzureNative.Synapse.SkuSize.Medium,
///         },
///         WorkspaceName = "synapseWorkspaceName",
///         WorkspaceUID = "11111111-2222-3333-444444444444",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewKustoPool(ctx, "kustoPool", &synapse.KustoPoolArgs{
/// 			EnablePurge:           pulumi.Bool(true),
/// 			EnableStreamingIngest: pulumi.Bool(true),
/// 			KustoPoolName:         pulumi.String("kustoclusterrptest4"),
/// 			Location:              pulumi.String("westus"),
/// 			ResourceGroupName:     pulumi.String("kustorptest"),
/// 			Sku: &synapse.AzureSkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String(synapse.SkuName_Storage_optimized),
/// 				Size:     pulumi.String(synapse.SkuSizeMedium),
/// 			},
/// 			WorkspaceName: pulumi.String("synapseWorkspaceName"),
/// 			WorkspaceUID:  pulumi.String("11111111-2222-3333-444444444444"),
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
/// import com.pulumi.azurenative.synapse.KustoPool;
/// import com.pulumi.azurenative.synapse.KustoPoolArgs;
/// import com.pulumi.azurenative.synapse.inputs.AzureSkuArgs;
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
///         var kustoPool = new KustoPool("kustoPool", KustoPoolArgs.builder()
///             .enablePurge(true)
///             .enableStreamingIngest(true)
///             .kustoPoolName("kustoclusterrptest4")
///             .location("westus")
///             .resourceGroupName("kustorptest")
///             .sku(AzureSkuArgs.builder()
///                 .capacity(2)
///                 .name("Storage optimized")
///                 .size("Medium")
///                 .build())
///             .workspaceName("synapseWorkspaceName")
///             .workspaceUID("11111111-2222-3333-444444444444")
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
/// const kustoPool = new azure_native.synapse.KustoPool("kustoPool", {
///     enablePurge: true,
///     enableStreamingIngest: true,
///     kustoPoolName: "kustoclusterrptest4",
///     location: "westus",
///     resourceGroupName: "kustorptest",
///     sku: {
///         capacity: 2,
///         name: azure_native.synapse.SkuName.Storage_optimized,
///         size: azure_native.synapse.SkuSize.Medium,
///     },
///     workspaceName: "synapseWorkspaceName",
///     workspaceUID: "11111111-2222-3333-444444444444",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_pool = azure_native.synapse.KustoPool("kustoPool",
///     enable_purge=True,
///     enable_streaming_ingest=True,
///     kusto_pool_name="kustoclusterrptest4",
///     location="westus",
///     resource_group_name="kustorptest",
///     sku={
///         "capacity": 2,
///         "name": azure_native.synapse.SkuName.STORAGE_OPTIMIZED,
///         "size": azure_native.synapse.SkuSize.MEDIUM,
///     },
///     workspace_name="synapseWorkspaceName",
///     workspace_uid="11111111-2222-3333-444444444444")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoPool:
///     type: azure-native:synapse:KustoPool
///     properties:
///       enablePurge: true
///       enableStreamingIngest: true
///       kustoPoolName: kustoclusterrptest4
///       location: westus
///       resourceGroupName: kustorptest
///       sku:
///         capacity: 2
///         name: Storage optimized
///         size: Medium
///       workspaceName: synapseWorkspaceName
///       workspaceUID: 11111111-2222-3333-444444444444
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
/// $ pulumi import azure-native:synapse:KustoPool KustoClusterRPTest4 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/kustoPools/{kustoPoolName}
/// ```
class KustoPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Kusto Pool data ingestion URI.
  late final pulumi.Output<String> dataIngestionUri;
  /// A boolean value that indicates if the purge operations are enabled.
  late final pulumi.Output<bool?> enablePurge;
  /// A boolean value that indicates if the streaming ingest is enabled.
  late final pulumi.Output<bool?> enableStreamingIngest;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// List of the Kusto Pool's language extensions.
  late final pulumi.Output<LanguageExtensionsListResponse> languageExtensions;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Optimized auto scale definition.
  late final pulumi.Output<OptimizedAutoscaleResponse?> optimizedAutoscale;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The SKU of the kusto pool.
  late final pulumi.Output<AzureSkuResponse> sku;
  /// The state of the resource.
  late final pulumi.Output<String> state;
  /// The reason for the Kusto Pool's current state.
  late final pulumi.Output<String> stateReason;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The Kusto Pool URI.
  late final pulumi.Output<String> uri;
  /// The workspace unique identifier.
  late final pulumi.Output<String?> workspaceUID;

  /// Creates a new [KustoPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KustoPool]. {@macro pulumi_synapse_kusto_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KustoPool(
    String name, {
    KustoPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:KustoPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.dataIngestionUri = registerOutput<String>('dataIngestionUri');
    this.enablePurge = registerOutput<bool?>('enablePurge');
    this.enableStreamingIngest = registerOutput<bool?>('enableStreamingIngest');
    this.etag = registerOutput<String>('etag');
    this.languageExtensions = registerOutput<LanguageExtensionsListResponse>('languageExtensions');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.optimizedAutoscale = registerOutput<OptimizedAutoscaleResponse?>('optimizedAutoscale');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sku = registerOutput<AzureSkuResponse>('sku');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.uri = registerOutput<String>('uri');
    this.workspaceUID = registerOutput<String?>('workspaceUID');
  }
}
