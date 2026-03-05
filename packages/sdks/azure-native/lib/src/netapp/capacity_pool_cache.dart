import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_properties_response.dart';
import 'capacity_pool_cache_args.dart';
import 'system_data_response.dart';

/// Cache resource
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Caches_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityPoolCache = new AzureNative.NetApp.CapacityPoolCache("capacityPoolCache", new()
///     {
///         AccountName = "account1",
///         CacheName = "cache1",
///         Location = "eastus",
///         PoolName = "pool1",
///         Properties = new AzureNative.NetApp.Inputs.CachePropertiesArgs
///         {
///             CacheSubnetResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/cacheVnet/subnets/cacheSubnet1",
///             EncryptionKeySource = AzureNative.NetApp.EncryptionKeySource.Microsoft_NetApp,
///             Filepath = "cache-west-us2-01",
///             Ldap = AzureNative.NetApp.LdapState.Enabled,
///             LdapServerType = AzureNative.NetApp.LdapServerType.OpenLDAP,
///             OriginClusterInformation = new AzureNative.NetApp.Inputs.OriginClusterInformationArgs
///             {
///                 PeerAddresses = new[]
///                 {
///                     "192.0.2.10",
///                     "192.0.2.11",
///                 },
///                 PeerClusterName = "cluster1",
///                 PeerVolumeName = "originvol1",
///                 PeerVserverName = "vserver1",
///             },
///             PeeringSubnetResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/icLifVnet/subnets/peeringSubnet1",
///             Size = 107374182400,
///         },
///         ResourceGroupName = "myRG",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewCapacityPoolCache(ctx, "capacityPoolCache", &netapp.CapacityPoolCacheArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			CacheName:   pulumi.String("cache1"),
/// 			Location:    pulumi.String("eastus"),
/// 			PoolName:    pulumi.String("pool1"),
/// 			Properties: &netapp.CachePropertiesArgs{
/// 				CacheSubnetResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/cacheVnet/subnets/cacheSubnet1"),
/// 				EncryptionKeySource:   pulumi.String(netapp.EncryptionKeySource_Microsoft_NetApp),
/// 				Filepath:              pulumi.String("cache-west-us2-01"),
/// 				Ldap:                  pulumi.String(netapp.LdapStateEnabled),
/// 				LdapServerType:        pulumi.String(netapp.LdapServerTypeOpenLDAP),
/// 				OriginClusterInformation: &netapp.OriginClusterInformationArgs{
/// 					PeerAddresses: pulumi.StringArray{
/// 						pulumi.String("192.0.2.10"),
/// 						pulumi.String("192.0.2.11"),
/// 					},
/// 					PeerClusterName: pulumi.String("cluster1"),
/// 					PeerVolumeName:  pulumi.String("originvol1"),
/// 					PeerVserverName: pulumi.String("vserver1"),
/// 				},
/// 				PeeringSubnetResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/icLifVnet/subnets/peeringSubnet1"),
/// 				Size:                    pulumi.Float64(107374182400),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRG"),
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
/// import com.pulumi.azurenative.netapp.CapacityPoolCache;
/// import com.pulumi.azurenative.netapp.CapacityPoolCacheArgs;
/// import com.pulumi.azurenative.netapp.inputs.CachePropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.OriginClusterInformationArgs;
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
///         var capacityPoolCache = new CapacityPoolCache("capacityPoolCache", CapacityPoolCacheArgs.builder()
///             .accountName("account1")
///             .cacheName("cache1")
///             .location("eastus")
///             .poolName("pool1")
///             .properties(CachePropertiesArgs.builder()
///                 .cacheSubnetResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/cacheVnet/subnets/cacheSubnet1")
///                 .encryptionKeySource("Microsoft.NetApp")
///                 .filepath("cache-west-us2-01")
///                 .ldap("Enabled")
///                 .ldapServerType("OpenLDAP")
///                 .originClusterInformation(OriginClusterInformationArgs.builder()
///                     .peerAddresses(
///                         "192.0.2.10",
///                         "192.0.2.11")
///                     .peerClusterName("cluster1")
///                     .peerVolumeName("originvol1")
///                     .peerVserverName("vserver1")
///                     .build())
///                 .peeringSubnetResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/icLifVnet/subnets/peeringSubnet1")
///                 .size(107374182400.0)
///                 .build())
///             .resourceGroupName("myRG")
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
/// const capacityPoolCache = new azure_native.netapp.CapacityPoolCache("capacityPoolCache", {
///     accountName: "account1",
///     cacheName: "cache1",
///     location: "eastus",
///     poolName: "pool1",
///     properties: {
///         cacheSubnetResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/cacheVnet/subnets/cacheSubnet1",
///         encryptionKeySource: azure_native.netapp.EncryptionKeySource.Microsoft_NetApp,
///         filepath: "cache-west-us2-01",
///         ldap: azure_native.netapp.LdapState.Enabled,
///         ldapServerType: azure_native.netapp.LdapServerType.OpenLDAP,
///         originClusterInformation: {
///             peerAddresses: [
///                 "192.0.2.10",
///                 "192.0.2.11",
///             ],
///             peerClusterName: "cluster1",
///             peerVolumeName: "originvol1",
///             peerVserverName: "vserver1",
///         },
///         peeringSubnetResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/icLifVnet/subnets/peeringSubnet1",
///         size: 107374182400,
///     },
///     resourceGroupName: "myRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_pool_cache = azure_native.netapp.CapacityPoolCache("capacityPoolCache",
///     account_name="account1",
///     cache_name="cache1",
///     location="eastus",
///     pool_name="pool1",
///     properties={
///         "cache_subnet_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/cacheVnet/subnets/cacheSubnet1",
///         "encryption_key_source": azure_native.netapp.EncryptionKeySource.MICROSOFT_NET_APP,
///         "filepath": "cache-west-us2-01",
///         "ldap": azure_native.netapp.LdapState.ENABLED,
///         "ldap_server_type": azure_native.netapp.LdapServerType.OPEN_LDAP,
///         "origin_cluster_information": {
///             "peer_addresses": [
///                 "192.0.2.10",
///                 "192.0.2.11",
///             ],
///             "peer_cluster_name": "cluster1",
///             "peer_volume_name": "originvol1",
///             "peer_vserver_name": "vserver1",
///         },
///         "peering_subnet_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/icLifVnet/subnets/peeringSubnet1",
///         "size": 107374182400,
///     },
///     resource_group_name="myRG")
///
/// ```
///
/// ```yaml
/// resources:
///   capacityPoolCache:
///     type: azure-native:netapp:CapacityPoolCache
///     properties:
///       accountName: account1
///       cacheName: cache1
///       location: eastus
///       poolName: pool1
///       properties:
///         cacheSubnetResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/cacheVnet/subnets/cacheSubnet1
///         encryptionKeySource: Microsoft.NetApp
///         filepath: cache-west-us2-01
///         ldap: Enabled
///         ldapServerType: OpenLDAP
///         originClusterInformation:
///           peerAddresses:
///             - 192.0.2.10
///             - 192.0.2.11
///           peerClusterName: cluster1
///           peerVolumeName: originvol1
///           peerVserverName: vserver1
///         peeringSubnetResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/icLifVnet/subnets/peeringSubnet1
///         size: 1.073741824e+11
///       resourceGroupName: myRG
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
/// $ pulumi import azure-native:netapp:CapacityPoolCache account1/pool1/cache1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/capacityPools/{poolName}/caches/{cacheName}
/// ```
class CapacityPoolCache extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Cache properties
  late final pulumi.Output<CachePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [CapacityPoolCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityPoolCache]. {@macro pulumi_netapp_capacity_pool_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityPoolCache(
    String name, {
    CapacityPoolCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:CapacityPoolCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CachePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CachePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones');
  }
}
