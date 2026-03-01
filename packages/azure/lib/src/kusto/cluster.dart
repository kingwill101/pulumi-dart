import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_identity.dart';
import 'cluster_language_extension.dart';
import 'cluster_optimized_auto_scale.dart';
import 'cluster_sku.dart';
import 'cluster_virtual_network_configuration.dart';

/// Manages a Kusto (also known as Azure Data Explorer) Cluster
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Standard_D13_v2",
///         capacity: 2,
///     },
///     tags: {
///         Environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_cluster = azure.kusto.Cluster("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_D13_v2",
///         "capacity": 2,
///     },
///     tags={
///         "Environment": "Production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Standard_D13_v2",
///             Capacity = 2,
///         },
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Standard_D13_v2"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Standard_D13_v2")
///                 .capacity(2)
///                 .build())
///             .tags(Map.of("Environment", "Production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example
///       location: West Europe
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Standard_D13_v2
///         capacity: 2
///       tags:
///         Environment: Production
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Kusto Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/cluster:Cluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1
/// ```
class Cluster extends pulumi.CustomResource {
  /// List of allowed FQDNs (Fully Qualified Domain Name) for egress from Cluster.
  late final pulumi.Output<List<String>?> allowedFqdns;
  /// The list of ips in the format of CIDR allowed to connect to the cluster.
  late final pulumi.Output<List<String>?> allowedIpRanges;
  /// Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to `true`.
  late final pulumi.Output<bool?> autoStopEnabled;
  /// The Kusto Cluster URI to be used for data ingestion.
  late final pulumi.Output<String> dataIngestionUri;
  /// Specifies if the cluster's disks are encrypted. Defaults to `false`.
  late final pulumi.Output<bool?> diskEncryptionEnabled;
  /// Is the cluster's double encryption enabled? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> doubleEncryptionEnabled;
  /// An `identity` block as defined below.
  late final pulumi.Output<ClusterIdentity?> identity;
  /// A `language_extension` block as defined below.
  late final pulumi.Output<List<ClusterLanguageExtension>> languageExtension;
  late final pulumi.Output<List<ClusterLanguageExtension>> languageExtensions;
  /// The location where the Kusto Cluster should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// An `optimized_auto_scale` block as defined below.
  late final pulumi.Output<ClusterOptimizedAutoScale?> optimizedAutoScale;
  /// Whether to restrict outbound network access. Defaults to `false`.
  late final pulumi.Output<bool?> outboundNetworkAccessRestricted;
  /// Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6). Defaults to `IPv4`.
  late final pulumi.Output<String?> publicIpType;
  /// Is the public network access enabled? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// Specifies if the purge operations are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> purgeEnabled;
  /// Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `sku` block as defined below.
  late final pulumi.Output<ClusterSku> sku;
  /// Specifies if the streaming ingest is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> streamingIngestionEnabled;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies a list of tenant IDs that are trusted by the cluster. Default setting trusts all other tenants. Use `trusted_external_tenants = ["*"]` to explicitly allow all other tenants, `trusted_external_tenants = ["MyTenantOnly"]` for only your tenant or `trusted_external_tenants = ["<tenantId1>", "<tenantIdx>"]` to allow specific other tenants.
  ///
  /// > **Note:** In v3.0 of `azurerm` a new or updated Kusto Cluster will only allow your own tenant by default. Explicit configuration of this setting will change from `trusted_external_tenants = ["MyTenantOnly"]` to `trusted_external_tenants = []`.
  late final pulumi.Output<List<String>> trustedExternalTenants;
  /// The FQDN of the Azure Kusto Cluster.
  late final pulumi.Output<String> uri;
  late final pulumi.Output<ClusterVirtualNetworkConfiguration?> virtualNetworkConfiguration;
  /// Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_kusto_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedFqdns = registerOutput<List<String>?>('allowedFqdns');
    this.allowedIpRanges = registerOutput<List<String>?>('allowedIpRanges');
    this.autoStopEnabled = registerOutput<bool?>('autoStopEnabled');
    this.dataIngestionUri = registerOutput<String>('dataIngestionUri');
    this.diskEncryptionEnabled = registerOutput<bool?>('diskEncryptionEnabled');
    this.doubleEncryptionEnabled = registerOutput<bool?>('doubleEncryptionEnabled');
    this.identity = registerOutput<ClusterIdentity?>('identity');
    this.languageExtension = registerOutput<List<ClusterLanguageExtension>>('languageExtension');
    this.languageExtensions = registerOutput<List<ClusterLanguageExtension>>('languageExtensions');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.optimizedAutoScale = registerOutput<ClusterOptimizedAutoScale?>('optimizedAutoScale');
    this.outboundNetworkAccessRestricted = registerOutput<bool?>('outboundNetworkAccessRestricted');
    this.publicIpType = registerOutput<String?>('publicIpType');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.purgeEnabled = registerOutput<bool?>('purgeEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<ClusterSku>('sku');
    this.streamingIngestionEnabled = registerOutput<bool?>('streamingIngestionEnabled');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trustedExternalTenants = registerOutput<List<String>>('trustedExternalTenants');
    this.uri = registerOutput<String>('uri');
    this.virtualNetworkConfiguration = registerOutput<ClusterVirtualNetworkConfiguration?>('virtualNetworkConfiguration');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
