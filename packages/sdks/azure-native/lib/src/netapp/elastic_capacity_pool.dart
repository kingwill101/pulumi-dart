import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_capacity_pool_args.dart';
import 'elastic_capacity_pool_properties_response.dart';
import 'system_data_response.dart';

/// NetApp Elastic Capacity Pool resource
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticCapacityPools_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticCapacityPool = new AzureNative.NetApp.ElasticCapacityPool("elasticCapacityPool", new()
///     {
///         AccountName = "account1",
///         Location = "eastus",
///         PoolName = "pool1",
///         Properties = new AzureNative.NetApp.Inputs.ElasticCapacityPoolPropertiesArgs
///         {
///             ActiveDirectoryConfigResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1",
///             ServiceLevel = AzureNative.NetApp.ElasticServiceLevel.ZoneRedundant,
///             Size = 4398046511104,
///             SubnetResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///         },
///         ResourceGroupName = "myRG",
///         Zones = new[]
///         {
///             "1",
///             "2",
///             "3",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewElasticCapacityPool(ctx, "elasticCapacityPool", &netapp.ElasticCapacityPoolArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			Location:    pulumi.String("eastus"),
/// 			PoolName:    pulumi.String("pool1"),
/// 			Properties: &netapp.ElasticCapacityPoolPropertiesArgs{
/// 				ActiveDirectoryConfigResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1"),
/// 				ServiceLevel:                    pulumi.String(netapp.ElasticServiceLevelZoneRedundant),
/// 				Size:                            pulumi.Float64(4398046511104),
/// 				SubnetResourceId:                pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
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
/// import com.pulumi.azurenative.netapp.ElasticCapacityPool;
/// import com.pulumi.azurenative.netapp.ElasticCapacityPoolArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticCapacityPoolPropertiesArgs;
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
///         var elasticCapacityPool = new ElasticCapacityPool("elasticCapacityPool", ElasticCapacityPoolArgs.builder()
///             .accountName("account1")
///             .location("eastus")
///             .poolName("pool1")
///             .properties(ElasticCapacityPoolPropertiesArgs.builder()
///                 .activeDirectoryConfigResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1")
///                 .serviceLevel("ZoneRedundant")
///                 .size(4398046511104.0)
///                 .subnetResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                 .build())
///             .resourceGroupName("myRG")
///             .zones(
///                 "1",
///                 "2",
///                 "3")
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
/// const elasticCapacityPool = new azure_native.netapp.ElasticCapacityPool("elasticCapacityPool", {
///     accountName: "account1",
///     location: "eastus",
///     poolName: "pool1",
///     properties: {
///         activeDirectoryConfigResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1",
///         serviceLevel: azure_native.netapp.ElasticServiceLevel.ZoneRedundant,
///         size: 4398046511104,
///         subnetResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///     },
///     resourceGroupName: "myRG",
///     zones: [
///         "1",
///         "2",
///         "3",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_capacity_pool = azure_native.netapp.ElasticCapacityPool("elasticCapacityPool",
///     account_name="account1",
///     location="eastus",
///     pool_name="pool1",
///     properties={
///         "active_directory_config_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1",
///         "service_level": azure_native.netapp.ElasticServiceLevel.ZONE_REDUNDANT,
///         "size": 4398046511104,
///         "subnet_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///     },
///     resource_group_name="myRG",
///     zones=[
///         "1",
///         "2",
///         "3",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   elasticCapacityPool:
///     type: azure-native:netapp:ElasticCapacityPool
///     properties:
///       accountName: account1
///       location: eastus
///       poolName: pool1
///       properties:
///         activeDirectoryConfigResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1
///         serviceLevel: ZoneRedundant
///         size: 4.398046511104e+12
///         subnetResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///       resourceGroupName: myRG
///       zones:
///         - '1'
///         - '2'
///         - '3'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ElasticCapacityPools_CreateOrUpdateCMK
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticCapacityPool = new AzureNative.NetApp.ElasticCapacityPool("elasticCapacityPool", new()
///     {
///         AccountName = "account1",
///         Location = "eastus",
///         PoolName = "pool1",
///         Properties = new AzureNative.NetApp.Inputs.ElasticCapacityPoolPropertiesArgs
///         {
///             ActiveDirectoryConfigResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1",
///             Encryption = new AzureNative.NetApp.Inputs.ElasticEncryptionConfigurationArgs
///             {
///                 ElasticPoolEncryptionKeySource = AzureNative.NetApp.ElasticPoolEncryptionKeySource.NetApp,
///                 KeyVaultPrivateEndpointResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myKeyVault/privateEndpointConnections/myKeyVaultPec",
///             },
///             ServiceLevel = AzureNative.NetApp.ElasticServiceLevel.ZoneRedundant,
///             Size = 4398046511104,
///             SubnetResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///         },
///         ResourceGroupName = "myRG",
///         Zones = new[]
///         {
///             "1",
///             "2",
///             "3",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewElasticCapacityPool(ctx, "elasticCapacityPool", &netapp.ElasticCapacityPoolArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			Location:    pulumi.String("eastus"),
/// 			PoolName:    pulumi.String("pool1"),
/// 			Properties: &netapp.ElasticCapacityPoolPropertiesArgs{
/// 				ActiveDirectoryConfigResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1"),
/// 				Encryption: &netapp.ElasticEncryptionConfigurationArgs{
/// 					ElasticPoolEncryptionKeySource:    pulumi.String(netapp.ElasticPoolEncryptionKeySourceNetApp),
/// 					KeyVaultPrivateEndpointResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myKeyVault/privateEndpointConnections/myKeyVaultPec"),
/// 				},
/// 				ServiceLevel:     pulumi.String(netapp.ElasticServiceLevelZoneRedundant),
/// 				Size:             pulumi.Float64(4398046511104),
/// 				SubnetResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
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
/// import com.pulumi.azurenative.netapp.ElasticCapacityPool;
/// import com.pulumi.azurenative.netapp.ElasticCapacityPoolArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticCapacityPoolPropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticEncryptionConfigurationArgs;
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
///         var elasticCapacityPool = new ElasticCapacityPool("elasticCapacityPool", ElasticCapacityPoolArgs.builder()
///             .accountName("account1")
///             .location("eastus")
///             .poolName("pool1")
///             .properties(ElasticCapacityPoolPropertiesArgs.builder()
///                 .activeDirectoryConfigResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1")
///                 .encryption(ElasticEncryptionConfigurationArgs.builder()
///                     .elasticPoolEncryptionKeySource("NetApp")
///                     .keyVaultPrivateEndpointResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myKeyVault/privateEndpointConnections/myKeyVaultPec")
///                     .build())
///                 .serviceLevel("ZoneRedundant")
///                 .size(4398046511104.0)
///                 .subnetResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                 .build())
///             .resourceGroupName("myRG")
///             .zones(
///                 "1",
///                 "2",
///                 "3")
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
/// const elasticCapacityPool = new azure_native.netapp.ElasticCapacityPool("elasticCapacityPool", {
///     accountName: "account1",
///     location: "eastus",
///     poolName: "pool1",
///     properties: {
///         activeDirectoryConfigResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1",
///         encryption: {
///             elasticPoolEncryptionKeySource: azure_native.netapp.ElasticPoolEncryptionKeySource.NetApp,
///             keyVaultPrivateEndpointResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myKeyVault/privateEndpointConnections/myKeyVaultPec",
///         },
///         serviceLevel: azure_native.netapp.ElasticServiceLevel.ZoneRedundant,
///         size: 4398046511104,
///         subnetResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///     },
///     resourceGroupName: "myRG",
///     zones: [
///         "1",
///         "2",
///         "3",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_capacity_pool = azure_native.netapp.ElasticCapacityPool("elasticCapacityPool",
///     account_name="account1",
///     location="eastus",
///     pool_name="pool1",
///     properties={
///         "active_directory_config_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1",
///         "encryption": {
///             "elastic_pool_encryption_key_source": azure_native.netapp.ElasticPoolEncryptionKeySource.NET_APP,
///             "key_vault_private_endpoint_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myKeyVault/privateEndpointConnections/myKeyVaultPec",
///         },
///         "service_level": azure_native.netapp.ElasticServiceLevel.ZONE_REDUNDANT,
///         "size": 4398046511104,
///         "subnet_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///     },
///     resource_group_name="myRG",
///     zones=[
///         "1",
///         "2",
///         "3",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   elasticCapacityPool:
///     type: azure-native:netapp:ElasticCapacityPool
///     properties:
///       accountName: account1
///       location: eastus
///       poolName: pool1
///       properties:
///         activeDirectoryConfigResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/activeDirectoryConfigs/activeDirectoryConfig1
///         encryption:
///           elasticPoolEncryptionKeySource: NetApp
///           keyVaultPrivateEndpointResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.KeyVault/vaults/myKeyVault/privateEndpointConnections/myKeyVaultPec
///         serviceLevel: ZoneRedundant
///         size: 4.398046511104e+12
///         subnetResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///       resourceGroupName: myRG
///       zones:
///         - '1'
///         - '2'
///         - '3'
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
/// $ pulumi import azure-native:netapp:ElasticCapacityPool account1/pool1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/elasticAccounts/{accountName}/elasticCapacityPools/{poolName}
/// ```
class ElasticCapacityPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticCapacityPoolPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ElasticCapacityPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticCapacityPool]. {@macro pulumi_netapp_elastic_capacity_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticCapacityPool(
    String name, {
    ElasticCapacityPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:ElasticCapacityPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticCapacityPoolPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticCapacityPoolPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones');
  }
}
