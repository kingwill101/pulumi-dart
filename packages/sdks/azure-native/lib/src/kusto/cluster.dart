import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_sku_response.dart';
import 'cluster_args.dart';
import 'identity_response.dart';
import 'key_vault_properties_response.dart';
import 'language_extensions_list_response.dart';
import 'migration_cluster_properties_response.dart';
import 'optimized_autoscale_response.dart';
import 'system_data_response.dart';
import 'virtual_network_configuration_response.dart';

/// Class representing a Kusto cluster.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// Other available API versions: 2018-09-07-preview, 2019-01-21, 2019-05-15, 2019-09-07, 2019-11-09, 2020-02-15, 2020-06-14, 2020-09-18, 2021-01-01, 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15, 2025-02-14. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoClustersCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.Kusto.Cluster("cluster", new()
///     {
///         AllowedIpRangeList = new[]
///         {
///             "0.0.0.0/0",
///         },
///         ClusterName = "kustoCluster",
///         EnableAutoStop = true,
///         EnableDoubleEncryption = false,
///         EnablePurge = true,
///         EnableStreamingIngest = true,
///         Identity = new AzureNative.Kusto.Inputs.IdentityArgs
///         {
///             Type = AzureNative.Kusto.IdentityType.SystemAssigned,
///         },
///         LanguageExtensions = new AzureNative.Kusto.Inputs.LanguageExtensionsListArgs
///         {
///             Value = new[]
///             {
///                 new AzureNative.Kusto.Inputs.LanguageExtensionArgs
///                 {
///                     LanguageExtensionImageName = AzureNative.Kusto.LanguageExtensionImageName.Python3_10_8,
///                     LanguageExtensionName = AzureNative.Kusto.LanguageExtensionName.PYTHON,
///                 },
///                 new AzureNative.Kusto.Inputs.LanguageExtensionArgs
///                 {
///                     LanguageExtensionImageName = AzureNative.Kusto.LanguageExtensionImageName.R,
///                     LanguageExtensionName = AzureNative.Kusto.LanguageExtensionName.R,
///                 },
///             },
///         },
///         Location = "westus",
///         PublicIPType = AzureNative.Kusto.PublicIPType.DualStack,
///         PublicNetworkAccess = AzureNative.Kusto.PublicNetworkAccess.Enabled,
///         ResourceGroupName = "kustorptest",
///         Sku = new AzureNative.Kusto.Inputs.AzureSkuArgs
///         {
///             Capacity = 2,
///             Name = AzureNative.Kusto.AzureSkuName.Standard_L16as_v3,
///             Tier = AzureNative.Kusto.AzureSkuTier.Standard,
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewCluster(ctx, "cluster", &kusto.ClusterArgs{
/// 			AllowedIpRangeList: pulumi.StringArray{
/// 				pulumi.String("0.0.0.0/0"),
/// 			},
/// 			ClusterName:            pulumi.String("kustoCluster"),
/// 			EnableAutoStop:         pulumi.Bool(true),
/// 			EnableDoubleEncryption: pulumi.Bool(false),
/// 			EnablePurge:            pulumi.Bool(true),
/// 			EnableStreamingIngest:  pulumi.Bool(true),
/// 			Identity: &kusto.IdentityArgs{
/// 				Type: pulumi.String(kusto.IdentityTypeSystemAssigned),
/// 			},
/// 			LanguageExtensions: &kusto.LanguageExtensionsListArgs{
/// 				Value: kusto.LanguageExtensionArray{
/// 					&kusto.LanguageExtensionArgs{
/// 						LanguageExtensionImageName: pulumi.String(kusto.LanguageExtensionImageName_Python3_10_8),
/// 						LanguageExtensionName:      pulumi.String(kusto.LanguageExtensionNamePYTHON),
/// 					},
/// 					&kusto.LanguageExtensionArgs{
/// 						LanguageExtensionImageName: pulumi.String(kusto.LanguageExtensionImageNameR),
/// 						LanguageExtensionName:      pulumi.String(kusto.LanguageExtensionNameR),
/// 					},
/// 				},
/// 			},
/// 			Location:            pulumi.String("westus"),
/// 			PublicIPType:        pulumi.String(kusto.PublicIPTypeDualStack),
/// 			PublicNetworkAccess: pulumi.String(kusto.PublicNetworkAccessEnabled),
/// 			ResourceGroupName:   pulumi.String("kustorptest"),
/// 			Sku: &kusto.AzureSkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String(kusto.AzureSkuName_Standard_L16as_v3),
/// 				Tier:     pulumi.String(kusto.AzureSkuTierStandard),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_kusto_cluster" "cluster" {
///   allowed_ip_range_list    = ["0.0.0.0/0"]
///   cluster_name             = "kustoCluster"
///   enable_auto_stop         = true
///   enable_double_encryption = false
///   enable_purge             = true
///   enable_streaming_ingest  = true
///   identity = {
///     type = "SystemAssigned"
///   }
///   language_extensions = {
///     value = [{
///       "languageExtensionImageName" = "Python3_10_8"
///       "languageExtensionName"      = "PYTHON"
///       }, {
///       "languageExtensionImageName" = "R"
///       "languageExtensionName"      = "R"
///     }]
///   }
///   location              = "westus"
///   public_ip_type        = "DualStack"
///   public_network_access = "Enabled"
///   resource_group_name   = "kustorptest"
///   sku = {
///     capacity = 2
///     name     = "Standard_L16as_v3"
///     tier     = "Standard"
///   }
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
/// import com.pulumi.azurenative.kusto.Cluster;
/// import com.pulumi.azurenative.kusto.ClusterArgs;
/// import com.pulumi.azurenative.kusto.inputs.IdentityArgs;
/// import com.pulumi.azurenative.kusto.inputs.LanguageExtensionsListArgs;
/// import com.pulumi.azurenative.kusto.inputs.AzureSkuArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .allowedIpRangeList("0.0.0.0/0")
///             .clusterName("kustoCluster")
///             .enableAutoStop(true)
///             .enableDoubleEncryption(false)
///             .enablePurge(true)
///             .enableStreamingIngest(true)
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .languageExtensions(LanguageExtensionsListArgs.builder()
///                 .value(
///                     LanguageExtensionArgs.builder()
///                         .languageExtensionImageName("Python3_10_8")
///                         .languageExtensionName("PYTHON")
///                         .build(),
///                     LanguageExtensionArgs.builder()
///                         .languageExtensionImageName("R")
///                         .languageExtensionName("R")
///                         .build())
///                 .build())
///             .location("westus")
///             .publicIPType("DualStack")
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("kustorptest")
///             .sku(AzureSkuArgs.builder()
///                 .capacity(2)
///                 .name("Standard_L16as_v3")
///                 .tier("Standard")
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
/// const cluster = new azure_native.kusto.Cluster("cluster", {
///     allowedIpRangeList: ["0.0.0.0/0"],
///     clusterName: "kustoCluster",
///     enableAutoStop: true,
///     enableDoubleEncryption: false,
///     enablePurge: true,
///     enableStreamingIngest: true,
///     identity: {
///         type: azure_native.kusto.IdentityType.SystemAssigned,
///     },
///     languageExtensions: {
///         value: [
///             {
///                 languageExtensionImageName: azure_native.kusto.LanguageExtensionImageName.Python3_10_8,
///                 languageExtensionName: azure_native.kusto.LanguageExtensionName.PYTHON,
///             },
///             {
///                 languageExtensionImageName: azure_native.kusto.LanguageExtensionImageName.R,
///                 languageExtensionName: azure_native.kusto.LanguageExtensionName.R,
///             },
///         ],
///     },
///     location: "westus",
///     publicIPType: azure_native.kusto.PublicIPType.DualStack,
///     publicNetworkAccess: azure_native.kusto.PublicNetworkAccess.Enabled,
///     resourceGroupName: "kustorptest",
///     sku: {
///         capacity: 2,
///         name: azure_native.kusto.AzureSkuName.Standard_L16as_v3,
///         tier: azure_native.kusto.AzureSkuTier.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.kusto.Cluster("cluster",
///     allowed_ip_range_list=["0.0.0.0/0"],
///     cluster_name="kustoCluster",
///     enable_auto_stop=True,
///     enable_double_encryption=False,
///     enable_purge=True,
///     enable_streaming_ingest=True,
///     identity={
///         "type": azure_native.kusto.IdentityType.SYSTEM_ASSIGNED,
///     },
///     language_extensions={
///         "value": [
///             {
///                 "language_extension_image_name": azure_native.kusto.LanguageExtensionImageName.PYTHON3_10_8,
///                 "language_extension_name": azure_native.kusto.LanguageExtensionName.PYTHON,
///             },
///             {
///                 "language_extension_image_name": azure_native.kusto.LanguageExtensionImageName.R,
///                 "language_extension_name": azure_native.kusto.LanguageExtensionName.R,
///             },
///         ],
///     },
///     location="westus",
///     public_ip_type=azure_native.kusto.PublicIPType.DUAL_STACK,
///     public_network_access=azure_native.kusto.PublicNetworkAccess.ENABLED,
///     resource_group_name="kustorptest",
///     sku={
///         "capacity": 2,
///         "name": azure_native.kusto.AzureSkuName.STANDARD_L16AS_V3,
///         "tier": azure_native.kusto.AzureSkuTier.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:kusto:Cluster
///     properties:
///       allowedIpRangeList:
///         - 0.0.0.0/0
///       clusterName: kustoCluster
///       enableAutoStop: true
///       enableDoubleEncryption: false
///       enablePurge: true
///       enableStreamingIngest: true
///       identity:
///         type: SystemAssigned
///       languageExtensions:
///         value:
///           - languageExtensionImageName: Python3_10_8
///             languageExtensionName: PYTHON
///           - languageExtensionImageName: R
///             languageExtensionName: R
///       location: westus
///       publicIPType: DualStack
///       publicNetworkAccess: Enabled
///       resourceGroupName: kustorptest
///       sku:
///         capacity: 2
///         name: Standard_L16as_v3
///         tier: Standard
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
/// $ pulumi import azure-native:kusto:Cluster kustoCluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}
/// ```
class Cluster extends pulumi.CustomResource {
  /// The cluster's accepted audiences.
  late final pulumi.Output<List<Map<String, dynamic>>?> acceptedAudiences;
  /// List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster.
  late final pulumi.Output<List<String>?> allowedFqdnList;
  /// The list of ips in the format of CIDR allowed to connect to the cluster.
  late final pulumi.Output<List<String>?> allowedIpRangeList;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of callout policies for egress from Cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> calloutPolicies;
  /// The cluster data ingestion URI.
  late final pulumi.Output<String> dataIngestionUri;
  /// A boolean value that indicates if the cluster could be automatically stopped (due to lack of data or no activity for many days).
  late final pulumi.Output<bool?> enableAutoStop;
  /// A boolean value that indicates if the cluster's disks are encrypted.
  late final pulumi.Output<bool?> enableDiskEncryption;
  /// A boolean value that indicates if double encryption is enabled.
  late final pulumi.Output<bool?> enableDoubleEncryption;
  /// A boolean value that indicates if the purge operations are enabled.
  late final pulumi.Output<bool?> enablePurge;
  /// A boolean value that indicates if the streaming ingest is enabled.
  late final pulumi.Output<bool?> enableStreamingIngest;
  /// The engine type
  late final pulumi.Output<String?> engineType;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The identity of the cluster, if configured.
  late final pulumi.Output<IdentityResponse?> identity;
  /// KeyVault properties for the cluster encryption.
  late final pulumi.Output<KeyVaultPropertiesResponse?> keyVaultProperties;
  /// List of the cluster's language extensions.
  late final pulumi.Output<LanguageExtensionsListResponse?> languageExtensions;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Properties of the peer cluster involved in a migration to/from this cluster.
  late final pulumi.Output<MigrationClusterPropertiesResponse> migrationCluster;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Optimized auto scale definition.
  late final pulumi.Output<OptimizedAutoscaleResponse?> optimizedAutoscale;
  /// A list of private endpoint connections.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6)
  late final pulumi.Output<String?> publicIPType;
  /// Public network access to the cluster is enabled by default. When disabled, only private endpoint connection to the cluster is allowed
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Whether or not to restrict outbound network access.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  late final pulumi.Output<String?> restrictOutboundNetworkAccess;
  /// The SKU of the cluster.
  late final pulumi.Output<AzureSkuResponse> sku;
  /// The state of the resource.
  late final pulumi.Output<String> state;
  /// The reason for the cluster's current state.
  late final pulumi.Output<String> stateReason;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The cluster's external tenants.
  late final pulumi.Output<List<Map<String, dynamic>>?> trustedExternalTenants;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The cluster URI.
  late final pulumi.Output<String> uri;
  /// Virtual network definition.
  late final pulumi.Output<VirtualNetworkConfigurationResponse?> virtualNetworkConfiguration;
  /// Indicates whether the cluster is zonal or non-zonal.
  late final pulumi.Output<String> zoneStatus;
  /// The availability zones of the cluster.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_kusto_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptedAudiences = registerOutput<List<Map<String, dynamic>>?>('acceptedAudiences');
    allowedFqdnList = registerOutput<List<String>?>('allowedFqdnList');
    allowedIpRangeList = registerOutput<List<String>?>('allowedIpRangeList');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    calloutPolicies = registerOutput<List<Map<String, dynamic>>?>('calloutPolicies');
    dataIngestionUri = registerOutput<String>('dataIngestionUri');
    enableAutoStop = registerOutput<bool?>('enableAutoStop');
    enableDiskEncryption = registerOutput<bool?>('enableDiskEncryption');
    enableDoubleEncryption = registerOutput<bool?>('enableDoubleEncryption');
    enablePurge = registerOutput<bool?>('enablePurge');
    enableStreamingIngest = registerOutput<bool?>('enableStreamingIngest');
    engineType = registerOutput<String?>('engineType');
    etag = registerOutput<String>('etag');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultProperties = registerOutput<KeyVaultPropertiesResponse?>('keyVaultProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageExtensions = registerOutput<LanguageExtensionsListResponse?>('languageExtensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LanguageExtensionsListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    migrationCluster = registerOutput<MigrationClusterPropertiesResponse>('migrationCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationClusterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    optimizedAutoscale = registerOutput<OptimizedAutoscaleResponse?>('optimizedAutoscale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OptimizedAutoscaleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicIPType = registerOutput<String?>('publicIPType');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    restrictOutboundNetworkAccess = registerOutput<String?>('restrictOutboundNetworkAccess');
    sku = registerOutput<AzureSkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    trustedExternalTenants = registerOutput<List<Map<String, dynamic>>?>('trustedExternalTenants');
    type = registerOutput<String>('type');
    uri = registerOutput<String>('uri');
    virtualNetworkConfiguration = registerOutput<VirtualNetworkConfigurationResponse?>('virtualNetworkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneStatus = registerOutput<String>('zoneStatus');
    zones = registerOutput<List<String>?>('zones');
  }
}
