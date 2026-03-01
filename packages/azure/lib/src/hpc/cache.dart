import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_args.dart';
import 'cache_default_access_policy.dart';
import 'cache_directory_active_directory.dart';
import 'cache_directory_flat_file.dart';
import 'cache_directory_ldap.dart';
import 'cache_dns.dart';
import 'cache_identity.dart';

/// Manages a HPC Cache.
///
/// !> **Note:** The `azure.hpc.Cache` resource has been deprecated because the service is retiring on 2025-09-30. This resource will be removed in v5.0 of the AzureRM Provider. See https://aka.ms/hpccacheretirement for more information.
///
/// > **Note:** By request of the service team the provider no longer automatically registers the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "examplevn",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "examplesubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const exampleCache = new azure.hpc.Cache("example", {
///     name: "examplehpccache",
///     resourceGroupName: example.name,
///     location: example.location,
///     cacheSizeInGb: 3072,
///     subnetId: exampleSubnet.id,
///     skuName: "Standard_2G",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="examplevn",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="examplesubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// example_cache = azure.hpc.Cache("example",
///     name="examplehpccache",
///     resource_group_name=example.name,
///     location=example.location,
///     cache_size_in_gb=3072,
///     subnet_id=example_subnet.id,
///     sku_name="Standard_2G")
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "examplevn",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "examplesubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var exampleCache = new Azure.Hpc.Cache("example", new()
///     {
///         Name = "examplehpccache",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CacheSizeInGb = 3072,
///         SubnetId = exampleSubnet.Id,
///         SkuName = "Standard_2G",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/hpc"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("examplevn"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("examplesubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hpc.NewCache(ctx, "example", &hpc.CacheArgs{
/// 			Name:              pulumi.String("examplehpccache"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CacheSizeInGb:     pulumi.Int(3072),
/// 			SubnetId:          exampleSubnet.ID(),
/// 			SkuName:           pulumi.String("Standard_2G"),
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.hpc.Cache;
/// import com.pulumi.azure.hpc.CacheArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("examplevn")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("examplesubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name("examplehpccache")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .cacheSizeInGb(3072)
///             .subnetId(exampleSubnet.id())
///             .skuName("Standard_2G")
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: examplevn
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: examplesubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   exampleCache:
///     type: azure:hpc:Cache
///     name: example
///     properties:
///       name: examplehpccache
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       cacheSizeInGb: 3072
///       subnetId: ${exampleSubnet.id}
///       skuName: Standard_2G
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageCache` - 2023-05-01
///
/// ## Import
///
/// HPC Caches can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hpc/cache:Cache example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroupName/providers/Microsoft.StorageCache/caches/cacheName
/// ```
class Cache extends pulumi.CustomResource {
  /// Specifies whether the HPC Cache automatically rotates Encryption Key to the latest version.
  late final pulumi.Output<bool?> automaticallyRotateKeyToLatestEnabled;
  /// The size of the HPC Cache, in GB. Possible values are `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152` and `86491`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `21623`, `43246` and `86491` sizes are restricted to read only resources.
  late final pulumi.Output<int> cacheSizeInGb;
  /// A `default_access_policy` block as defined below.
  late final pulumi.Output<CacheDefaultAccessPolicy> defaultAccessPolicy;
  /// A `directory_active_directory` block as defined below.
  late final pulumi.Output<CacheDirectoryActiveDirectory?> directoryActiveDirectory;
  /// A `directory_flat_file` block as defined below.
  late final pulumi.Output<CacheDirectoryFlatFile?> directoryFlatFile;
  /// A `directory_ldap` block as defined below.
  ///
  /// > **Note:** Only one of `directory_active_directory`, `directory_flat_file` and `directory_ldap` can be set.
  late final pulumi.Output<CacheDirectoryLdap?> directoryLdap;
  /// A `dns` block as defined below.
  late final pulumi.Output<CacheDns?> dns;
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<CacheIdentity?> identity;
  /// The ID of the Key Vault Key which should be used to encrypt the data in this HPC Cache.
  late final pulumi.Output<String?> keyVaultKeyId;
  /// Specifies the supported Azure Region where the HPC Cache should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A list of IP Addresses where the HPC Cache can be mounted.
  late final pulumi.Output<List<String>> mountAddresses;
  /// The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to `1500`.
  late final pulumi.Output<int?> mtu;
  /// The name of the HPC Cache. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The NTP server IP Address or FQDN for the HPC Cache. Defaults to `time.windows.com`.
  late final pulumi.Output<String?> ntpServer;
  /// The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU of HPC Cache to use. Possible values are (ReadWrite) - `Standard_2G`, `Standard_4G` `Standard_8G` or (ReadOnly) - `Standard_L4_5G`, `Standard_L9G`, and `Standard_L16G`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The read-only SKUs have restricted cache sizes. `Standard_L4_5G` must be set to `21623`. `Standard_L9G` to `43246` and `Standard_L16G` to `86491`.
  late final pulumi.Output<String> skuName;
  /// The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;
  /// A mapping of tags to assign to the HPC Cache.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Cache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cache]. {@macro pulumi_hpc_cache_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cache(
    String name, {
    CacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hpc/cache:Cache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automaticallyRotateKeyToLatestEnabled = registerOutput<bool?>('automaticallyRotateKeyToLatestEnabled');
    this.cacheSizeInGb = registerOutput<int>('cacheSizeInGb');
    this.defaultAccessPolicy = registerOutput<CacheDefaultAccessPolicy>('defaultAccessPolicy');
    this.directoryActiveDirectory = registerOutput<CacheDirectoryActiveDirectory?>('directoryActiveDirectory');
    this.directoryFlatFile = registerOutput<CacheDirectoryFlatFile?>('directoryFlatFile');
    this.directoryLdap = registerOutput<CacheDirectoryLdap?>('directoryLdap');
    this.dns = registerOutput<CacheDns?>('dns');
    this.identity = registerOutput<CacheIdentity?>('identity');
    this.keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    this.location = registerOutput<String>('location');
    this.mountAddresses = registerOutput<List<String>>('mountAddresses');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.ntpServer = registerOutput<String?>('ntpServer');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuName = registerOutput<String>('skuName');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
