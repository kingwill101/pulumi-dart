import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_san_args.dart';
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Response for ElasticSan request.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2021-11-20-preview.
///
/// Other available API versions: 2021-11-20-preview, 2022-12-01-preview, 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticSans_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticSan = new AzureNative.ElasticSan.ElasticSan("elasticSan", new()
///     {
///         AvailabilityZones = new[]
///         {
///             "1",
///         },
///         BaseSizeTiB = 5,
///         ElasticSanName = "elasticsanname",
///         ExtendedCapacitySizeTiB = 25,
///         Location = "France Central",
///         PublicNetworkAccess = AzureNative.ElasticSan.PublicNetworkAccess.Enabled,
///         ResourceGroupName = "resourcegroupname",
///         Sku = new AzureNative.ElasticSan.Inputs.SkuArgs
///         {
///             Name = AzureNative.ElasticSan.SkuName.Premium_LRS,
///             Tier = AzureNative.ElasticSan.SkuTier.Premium,
///         },
///         Tags =
///         {
///             { "key9316", "ihndtieqibtob" },
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
/// 	elasticsan "github.com/pulumi/pulumi-azure-native-sdk/elasticsan/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsan.NewElasticSan(ctx, "elasticSan", &elasticsan.ElasticSanArgs{
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 			BaseSizeTiB:             pulumi.Float64(5),
/// 			ElasticSanName:          pulumi.String("elasticsanname"),
/// 			ExtendedCapacitySizeTiB: pulumi.Float64(25),
/// 			Location:                pulumi.String("France Central"),
/// 			PublicNetworkAccess:     pulumi.String(elasticsan.PublicNetworkAccessEnabled),
/// 			ResourceGroupName:       pulumi.String("resourcegroupname"),
/// 			Sku: &elasticsan.SkuArgs{
/// 				Name: pulumi.String(elasticsan.SkuName_Premium_LRS),
/// 				Tier: pulumi.String(elasticsan.SkuTierPremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key9316": pulumi.String("ihndtieqibtob"),
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
/// import com.pulumi.azurenative.elasticsan.ElasticSan;
/// import com.pulumi.azurenative.elasticsan.ElasticSanArgs;
/// import com.pulumi.azurenative.elasticsan.inputs.SkuArgs;
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
///         var elasticSan = new ElasticSan("elasticSan", ElasticSanArgs.builder()
///             .availabilityZones("1")
///             .baseSizeTiB(5.0)
///             .elasticSanName("elasticsanname")
///             .extendedCapacitySizeTiB(25.0)
///             .location("France Central")
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("resourcegroupname")
///             .sku(SkuArgs.builder()
///                 .name("Premium_LRS")
///                 .tier("Premium")
///                 .build())
///             .tags(Map.of("key9316", "ihndtieqibtob"))
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
/// const elasticSan = new azure_native.elasticsan.ElasticSan("elasticSan", {
///     availabilityZones: ["1"],
///     baseSizeTiB: 5,
///     elasticSanName: "elasticsanname",
///     extendedCapacitySizeTiB: 25,
///     location: "France Central",
///     publicNetworkAccess: azure_native.elasticsan.PublicNetworkAccess.Enabled,
///     resourceGroupName: "resourcegroupname",
///     sku: {
///         name: azure_native.elasticsan.SkuName.Premium_LRS,
///         tier: azure_native.elasticsan.SkuTier.Premium,
///     },
///     tags: {
///         key9316: "ihndtieqibtob",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_san = azure_native.elasticsan.ElasticSan("elasticSan",
///     availability_zones=["1"],
///     base_size_ti_b=5,
///     elastic_san_name="elasticsanname",
///     extended_capacity_size_ti_b=25,
///     location="France Central",
///     public_network_access=azure_native.elasticsan.PublicNetworkAccess.ENABLED,
///     resource_group_name="resourcegroupname",
///     sku={
///         "name": azure_native.elasticsan.SkuName.PREMIUM_LRS,
///         "tier": azure_native.elasticsan.SkuTier.PREMIUM,
///     },
///     tags={
///         "key9316": "ihndtieqibtob",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticSan:
///     type: azure-native:elasticsan:ElasticSan
///     properties:
///       availabilityZones:
///         - '1'
///       baseSizeTiB: 5
///       elasticSanName: elasticsanname
///       extendedCapacitySizeTiB: 25
///       location: France Central
///       publicNetworkAccess: Enabled
///       resourceGroupName: resourcegroupname
///       sku:
///         name: Premium_LRS
///         tier: Premium
///       tags:
///         key9316: ihndtieqibtob
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ElasticSans_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticSan = new AzureNative.ElasticSan.ElasticSan("elasticSan", new()
///     {
///         BaseSizeTiB = 15,
///         ElasticSanName = "elasticsanname",
///         ExtendedCapacitySizeTiB = 27,
///         Location = "France Central",
///         ResourceGroupName = "resourcegroupname",
///         Sku = new AzureNative.ElasticSan.Inputs.SkuArgs
///         {
///             Name = AzureNative.ElasticSan.SkuName.Premium_LRS,
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
/// 	elasticsan "github.com/pulumi/pulumi-azure-native-sdk/elasticsan/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsan.NewElasticSan(ctx, "elasticSan", &elasticsan.ElasticSanArgs{
/// 			BaseSizeTiB:             pulumi.Float64(15),
/// 			ElasticSanName:          pulumi.String("elasticsanname"),
/// 			ExtendedCapacitySizeTiB: pulumi.Float64(27),
/// 			Location:                pulumi.String("France Central"),
/// 			ResourceGroupName:       pulumi.String("resourcegroupname"),
/// 			Sku: &elasticsan.SkuArgs{
/// 				Name: pulumi.String(elasticsan.SkuName_Premium_LRS),
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
/// import com.pulumi.azurenative.elasticsan.ElasticSan;
/// import com.pulumi.azurenative.elasticsan.ElasticSanArgs;
/// import com.pulumi.azurenative.elasticsan.inputs.SkuArgs;
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
///         var elasticSan = new ElasticSan("elasticSan", ElasticSanArgs.builder()
///             .baseSizeTiB(15.0)
///             .elasticSanName("elasticsanname")
///             .extendedCapacitySizeTiB(27.0)
///             .location("France Central")
///             .resourceGroupName("resourcegroupname")
///             .sku(SkuArgs.builder()
///                 .name("Premium_LRS")
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
/// const elasticSan = new azure_native.elasticsan.ElasticSan("elasticSan", {
///     baseSizeTiB: 15,
///     elasticSanName: "elasticsanname",
///     extendedCapacitySizeTiB: 27,
///     location: "France Central",
///     resourceGroupName: "resourcegroupname",
///     sku: {
///         name: azure_native.elasticsan.SkuName.Premium_LRS,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_san = azure_native.elasticsan.ElasticSan("elasticSan",
///     base_size_ti_b=15,
///     elastic_san_name="elasticsanname",
///     extended_capacity_size_ti_b=27,
///     location="France Central",
///     resource_group_name="resourcegroupname",
///     sku={
///         "name": azure_native.elasticsan.SkuName.PREMIUM_LRS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticSan:
///     type: azure-native:elasticsan:ElasticSan
///     properties:
///       baseSizeTiB: 15
///       elasticSanName: elasticsanname
///       extendedCapacitySizeTiB: 27
///       location: France Central
///       resourceGroupName: resourcegroupname
///       sku:
///         name: Premium_LRS
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
/// $ pulumi import azure-native:elasticsan:ElasticSan vfoatmakv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}
/// ```
class ElasticSan extends pulumi.CustomResource {
  /// Logical zone for Elastic San resource; example: ["1"].
  late final pulumi.Output<List<String>?> availabilityZones;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Base size of the Elastic San appliance in TiB.
  late final pulumi.Output<double> baseSizeTiB;
  /// Extended size of the Elastic San appliance in TiB.
  late final pulumi.Output<double> extendedCapacitySizeTiB;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of Private Endpoint Connections.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// State of the operation on the resource.
  late final pulumi.Output<String> provisioningState;
  /// Allow or disallow public network access to ElasticSan. Value is optional but if passed in, must be 'Enabled' or 'Disabled'.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// resource sku
  late final pulumi.Output<SkuResponse> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Total Provisioned IOPS of the Elastic San appliance.
  late final pulumi.Output<double> totalIops;
  /// Total Provisioned MBps Elastic San appliance.
  late final pulumi.Output<double> totalMBps;
  /// Total size of the Elastic San appliance in TB.
  late final pulumi.Output<double> totalSizeTiB;
  /// Total size of the provisioned Volumes in GiB.
  late final pulumi.Output<double> totalVolumeSizeGiB;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Total number of volume groups in this Elastic San appliance.
  late final pulumi.Output<double> volumeGroupCount;

  /// Creates a new [ElasticSan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticSan]. {@macro pulumi_elasticsan_elastic_san_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticSan(
    String name, {
    ElasticSanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:elasticsan:ElasticSan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityZones = registerOutput<List<String>?>('availabilityZones');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.baseSizeTiB = registerOutput<double>('baseSizeTiB');
    this.extendedCapacitySizeTiB = registerOutput<double>('extendedCapacitySizeTiB');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.sku = registerOutput<SkuResponse>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.totalIops = registerOutput<double>('totalIops');
    this.totalMBps = registerOutput<double>('totalMBps');
    this.totalSizeTiB = registerOutput<double>('totalSizeTiB');
    this.totalVolumeSizeGiB = registerOutput<double>('totalVolumeSizeGiB');
    this.type = registerOutput<String>('type');
    this.volumeGroupCount = registerOutput<double>('volumeGroupCount');
  }
}
