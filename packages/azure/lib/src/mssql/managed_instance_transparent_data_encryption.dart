import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_transparent_data_encryption_args.dart';

/// Manages the transparent data encryption configuration for a MSSQL Managed Instance
///
/// > **Note:** Once transparent data encryption(TDE) is enabled on a MS SQL instance, it is not possible to remove TDE. You will be able to switch between 'ServiceManaged' and 'CustomerManaged' keys, but will not be able to remove encryption. For safety when this resource is deleted, the TDE mode will automatically be set to 'ServiceManaged'. As SQL Managed Instance only supports a single configuration for encryption settings, this resource will replace the current encryption settings on the server.
///
/// > **Note:** See [documentation](https://docs.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview) for important information on how handle lifecycle management of the keys to prevent data lockout.
///
/// ## Example Usage
///
/// ### With Service Managed Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "EastUs",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "acctest-vnet1-mssql",
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
///     location: test.location,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "subnet1-mssql",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.0.0/24"],
///     delegations: [{
///         name: "managedinstancedelegation",
///         serviceDelegation: {
///             name: "Microsoft.Sql/managedInstances",
///             actions: [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///         },
///     }],
/// });
/// const exampleManagedInstance = new azure.mssql.ManagedInstance("example", {
///     name: "mssqlinstance",
///     resourceGroupName: example.name,
///     location: example.location,
///     licenseType: "BasePrice",
///     skuName: "GP_Gen5",
///     storageSizeInGb: 32,
///     subnetId: exampleSubnet.id,
///     vcores: 4,
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "NCC-1701-D",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleManagedInstanceTransparentDataEncryption = new azure.mssql.ManagedInstanceTransparentDataEncryption("example", {managedInstanceId: exampleManagedInstance.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="EastUs")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="acctest-vnet1-mssql",
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"],
///     location=test["location"])
/// example_subnet = azure.network.Subnet("example",
///     name="subnet1-mssql",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.0.0/24"],
///     delegations=[{
///         "name": "managedinstancedelegation",
///         "service_delegation": {
///             "name": "Microsoft.Sql/managedInstances",
///             "actions": [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///         },
///     }])
/// example_managed_instance = azure.mssql.ManagedInstance("example",
///     name="mssqlinstance",
///     resource_group_name=example.name,
///     location=example.location,
///     license_type="BasePrice",
///     sku_name="GP_Gen5",
///     storage_size_in_gb=32,
///     subnet_id=example_subnet.id,
///     vcores=4,
///     administrator_login="missadministrator",
///     administrator_login_password="NCC-1701-D",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_managed_instance_transparent_data_encryption = azure.mssql.ManagedInstanceTransparentDataEncryption("example", managed_instance_id=example_managed_instance.id)
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
///         Location = "EastUs",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "acctest-vnet1-mssql",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = test.Location,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "subnet1-mssql",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.0.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "managedinstancedelegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Sql/managedInstances",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleManagedInstance = new Azure.MSSql.ManagedInstance("example", new()
///     {
///         Name = "mssqlinstance",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         LicenseType = "BasePrice",
///         SkuName = "GP_Gen5",
///         StorageSizeInGb = 32,
///         SubnetId = exampleSubnet.Id,
///         Vcores = 4,
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "NCC-1701-D",
///         Identity = new Azure.MSSql.Inputs.ManagedInstanceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleManagedInstanceTransparentDataEncryption = new Azure.MSSql.ManagedInstanceTransparentDataEncryption("example", new()
///     {
///         ManagedInstanceId = exampleManagedInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("EastUs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("acctest-vnet1-mssql"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location: pulumi.Any(test.Location),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("subnet1-mssql"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("managedinstancedelegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Sql/managedInstances"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleManagedInstance, err := mssql.NewManagedInstance(ctx, "example", &mssql.ManagedInstanceArgs{
/// 			Name:                       pulumi.String("mssqlinstance"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			LicenseType:                pulumi.String("BasePrice"),
/// 			SkuName:                    pulumi.String("GP_Gen5"),
/// 			StorageSizeInGb:            pulumi.Int(32),
/// 			SubnetId:                   exampleSubnet.ID(),
/// 			Vcores:                     pulumi.Int(4),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("NCC-1701-D"),
/// 			Identity: &mssql.ManagedInstanceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewManagedInstanceTransparentDataEncryption(ctx, "example", &mssql.ManagedInstanceTransparentDataEncryptionArgs{
/// 			ManagedInstanceId: exampleManagedInstance.ID(),
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
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.mssql.ManagedInstance;
/// import com.pulumi.azure.mssql.ManagedInstanceArgs;
/// import com.pulumi.azure.mssql.inputs.ManagedInstanceIdentityArgs;
/// import com.pulumi.azure.mssql.ManagedInstanceTransparentDataEncryption;
/// import com.pulumi.azure.mssql.ManagedInstanceTransparentDataEncryptionArgs;
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
///             .location("EastUs")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("acctest-vnet1-mssql")
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .location(test.location())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("subnet1-mssql")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.0.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("managedinstancedelegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Sql/managedInstances")
///                     .actions(
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleManagedInstance = new ManagedInstance("exampleManagedInstance", ManagedInstanceArgs.builder()
///             .name("mssqlinstance")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .licenseType("BasePrice")
///             .skuName("GP_Gen5")
///             .storageSizeInGb(32)
///             .subnetId(exampleSubnet.id())
///             .vcores(4)
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("NCC-1701-D")
///             .identity(ManagedInstanceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleManagedInstanceTransparentDataEncryption = new ManagedInstanceTransparentDataEncryption("exampleManagedInstanceTransparentDataEncryption", ManagedInstanceTransparentDataEncryptionArgs.builder()
///             .managedInstanceId(exampleManagedInstance.id())
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
///       location: EastUs
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: acctest-vnet1-mssql
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${test.location}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: subnet1-mssql
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.0.0/24
///       delegations:
///         - name: managedinstancedelegation
///           serviceDelegation:
///             name: Microsoft.Sql/managedInstances
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///               - Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action
///               - Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action
///   exampleManagedInstance:
///     type: azure:mssql:ManagedInstance
///     name: example
///     properties:
///       name: mssqlinstance
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       licenseType: BasePrice
///       skuName: GP_Gen5
///       storageSizeInGb: 32
///       subnetId: ${exampleSubnet.id}
///       vcores: 4
///       administratorLogin: missadministrator
///       administratorLoginPassword: NCC-1701-D
///       identity:
///         type: SystemAssigned
///   exampleManagedInstanceTransparentDataEncryption:
///     type: azure:mssql:ManagedInstanceTransparentDataEncryption
///     name: example
///     properties:
///       managedInstanceId: ${exampleManagedInstance.id}
/// ```
///
///
///
/// ### With Customer Managed Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "EastUs",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "acctest-vnet1-mssql",
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
///     location: test.location,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "subnet1-mssql",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.0.0/24"],
///     delegations: [{
///         name: "managedinstancedelegation",
///         serviceDelegation: {
///             name: "Microsoft.Sql/managedInstances",
///             actions: [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///         },
///     }],
/// });
/// const exampleManagedInstance = new azure.mssql.ManagedInstance("example", {
///     name: "mssqlinstance",
///     resourceGroupName: example.name,
///     location: example.location,
///     licenseType: "BasePrice",
///     skuName: "GP_Gen5",
///     storageSizeInGb: 32,
///     subnetId: exampleSubnet.id,
///     vcores: 4,
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "NCC-1701-D",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// // Create a key vault with policies for the deployer to create a key & SQL Managed Instance to wrap/unwrap/get key
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     enabledForDiskEncryption: true,
///     tenantId: current.then(current => current.tenantId),
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: false,
///     skuName: "standard",
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Get",
///                 "List",
///                 "Create",
///                 "Delete",
///                 "Update",
///                 "Recover",
///                 "Purge",
///                 "GetRotationPolicy",
///             ],
///         },
///         {
///             tenantId: exampleManagedInstance.identity.apply(identity => identity?.tenantId),
///             objectId: exampleManagedInstance.identity.apply(identity => identity?.principalId),
///             keyPermissions: [
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey",
///             ],
///         },
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "byok",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "unwrapKey",
///         "wrapKey",
///     ],
/// }, {
///     dependsOn: [exampleKeyVault],
/// });
/// const exampleManagedInstanceTransparentDataEncryption = new azure.mssql.ManagedInstanceTransparentDataEncryption("example", {
///     managedInstanceId: exampleManagedInstance.id,
///     keyVaultKeyId: exampleKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="EastUs")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="acctest-vnet1-mssql",
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"],
///     location=test["location"])
/// example_subnet = azure.network.Subnet("example",
///     name="subnet1-mssql",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.0.0/24"],
///     delegations=[{
///         "name": "managedinstancedelegation",
///         "service_delegation": {
///             "name": "Microsoft.Sql/managedInstances",
///             "actions": [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///         },
///     }])
/// example_managed_instance = azure.mssql.ManagedInstance("example",
///     name="mssqlinstance",
///     resource_group_name=example.name,
///     location=example.location,
///     license_type="BasePrice",
///     sku_name="GP_Gen5",
///     storage_size_in_gb=32,
///     subnet_id=example_subnet.id,
///     vcores=4,
///     administrator_login="missadministrator",
///     administrator_login_password="NCC-1701-D",
///     identity={
///         "type": "SystemAssigned",
///     })
/// # Create a key vault with policies for the deployer to create a key & SQL Managed Instance to wrap/unwrap/get key
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     enabled_for_disk_encryption=True,
///     tenant_id=current.tenant_id,
///     soft_delete_retention_days=7,
///     purge_protection_enabled=False,
///     sku_name="standard",
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Get",
///                 "List",
///                 "Create",
///                 "Delete",
///                 "Update",
///                 "Recover",
///                 "Purge",
///                 "GetRotationPolicy",
///             ],
///         },
///         {
///             "tenant_id": example_managed_instance.identity.tenant_id,
///             "object_id": example_managed_instance.identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey",
///             ],
///         },
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="byok",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "unwrapKey",
///         "wrapKey",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example_key_vault]))
/// example_managed_instance_transparent_data_encryption = azure.mssql.ManagedInstanceTransparentDataEncryption("example",
///     managed_instance_id=example_managed_instance.id,
///     key_vault_key_id=example_key.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "EastUs",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "acctest-vnet1-mssql",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = test.Location,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "subnet1-mssql",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.0.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "managedinstancedelegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Sql/managedInstances",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleManagedInstance = new Azure.MSSql.ManagedInstance("example", new()
///     {
///         Name = "mssqlinstance",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         LicenseType = "BasePrice",
///         SkuName = "GP_Gen5",
///         StorageSizeInGb = 32,
///         SubnetId = exampleSubnet.Id,
///         Vcores = 4,
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "NCC-1701-D",
///         Identity = new Azure.MSSql.Inputs.ManagedInstanceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     // Create a key vault with policies for the deployer to create a key & SQL Managed Instance to wrap/unwrap/get key
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         EnabledForDiskEncryption = true,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = false,
///         SkuName = "standard",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "List",
///                     "Create",
///                     "Delete",
///                     "Update",
///                     "Recover",
///                     "Purge",
///                     "GetRotationPolicy",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleManagedInstance.Identity.Apply(identity => identity?.TenantId),
///                 ObjectId = exampleManagedInstance.Identity.Apply(identity => identity?.PrincipalId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "WrapKey",
///                     "UnwrapKey",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "byok",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "unwrapKey",
///             "wrapKey",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleKeyVault,
///         },
///     });
///
///     var exampleManagedInstanceTransparentDataEncryption = new Azure.MSSql.ManagedInstanceTransparentDataEncryption("example", new()
///     {
///         ManagedInstanceId = exampleManagedInstance.Id,
///         KeyVaultKeyId = exampleKey.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("EastUs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("acctest-vnet1-mssql"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location: pulumi.Any(test.Location),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("subnet1-mssql"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("managedinstancedelegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Sql/managedInstances"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleManagedInstance, err := mssql.NewManagedInstance(ctx, "example", &mssql.ManagedInstanceArgs{
/// 			Name:                       pulumi.String("mssqlinstance"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			LicenseType:                pulumi.String("BasePrice"),
/// 			SkuName:                    pulumi.String("GP_Gen5"),
/// 			StorageSizeInGb:            pulumi.Int(32),
/// 			SubnetId:                   exampleSubnet.ID(),
/// 			Vcores:                     pulumi.Int(4),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("NCC-1701-D"),
/// 			Identity: &mssql.ManagedInstanceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a key vault with policies for the deployer to create a key & SQL Managed Instance to wrap/unwrap/get key
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("example"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			PurgeProtectionEnabled:   pulumi.Bool(false),
/// 			SkuName:                  pulumi.String("standard"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Update"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("GetRotationPolicy"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleManagedInstance.Identity.ApplyT(func(identity mssql.ManagedInstanceIdentity) (*string, error) {
/// 						return &identity.TenantId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					ObjectId: exampleManagedInstance.Identity.ApplyT(func(identity mssql.ManagedInstanceIdentity) (*string, error) {
/// 						return &identity.PrincipalId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("UnwrapKey"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("byok"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleKeyVault,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewManagedInstanceTransparentDataEncryption(ctx, "example", &mssql.ManagedInstanceTransparentDataEncryptionArgs{
/// 			ManagedInstanceId: exampleManagedInstance.ID(),
/// 			KeyVaultKeyId:     exampleKey.ID(),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.mssql.ManagedInstance;
/// import com.pulumi.azure.mssql.ManagedInstanceArgs;
/// import com.pulumi.azure.mssql.inputs.ManagedInstanceIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.mssql.ManagedInstanceTransparentDataEncryption;
/// import com.pulumi.azure.mssql.ManagedInstanceTransparentDataEncryptionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("EastUs")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("acctest-vnet1-mssql")
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .location(test.location())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("subnet1-mssql")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.0.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("managedinstancedelegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Sql/managedInstances")
///                     .actions(
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleManagedInstance = new ManagedInstance("exampleManagedInstance", ManagedInstanceArgs.builder()
///             .name("mssqlinstance")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .licenseType("BasePrice")
///             .skuName("GP_Gen5")
///             .storageSizeInGb(32)
///             .subnetId(exampleSubnet.id())
///             .vcores(4)
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("NCC-1701-D")
///             .identity(ManagedInstanceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         // Create a key vault with policies for the deployer to create a key & SQL Managed Instance to wrap/unwrap/get key
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .enabledForDiskEncryption(true)
///             .tenantId(current.tenantId())
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(false)
///             .skuName("standard")
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Get",
///                         "List",
///                         "Create",
///                         "Delete",
///                         "Update",
///                         "Recover",
///                         "Purge",
///                         "GetRotationPolicy")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleManagedInstance.identity().applyValue(_identity -> _identity.tenantId()))
///                     .objectId(exampleManagedInstance.identity().applyValue(_identity -> _identity.principalId()))
///                     .keyPermissions(
///                         "Get",
///                         "WrapKey",
///                         "UnwrapKey")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("byok")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "unwrapKey",
///                 "wrapKey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleKeyVault)
///                 .build());
///
///         var exampleManagedInstanceTransparentDataEncryption = new ManagedInstanceTransparentDataEncryption("exampleManagedInstanceTransparentDataEncryption", ManagedInstanceTransparentDataEncryptionArgs.builder()
///             .managedInstanceId(exampleManagedInstance.id())
///             .keyVaultKeyId(exampleKey.id())
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
///       location: EastUs
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: acctest-vnet1-mssql
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${test.location}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: subnet1-mssql
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.0.0/24
///       delegations:
///         - name: managedinstancedelegation
///           serviceDelegation:
///             name: Microsoft.Sql/managedInstances
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///               - Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action
///               - Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action
///   exampleManagedInstance:
///     type: azure:mssql:ManagedInstance
///     name: example
///     properties:
///       name: mssqlinstance
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       licenseType: BasePrice
///       skuName: GP_Gen5
///       storageSizeInGb: 32
///       subnetId: ${exampleSubnet.id}
///       vcores: 4
///       administratorLogin: missadministrator
///       administratorLoginPassword: NCC-1701-D
///       identity:
///         type: SystemAssigned
///   # Create a key vault with policies for the deployer to create a key & SQL Managed Instance to wrap/unwrap/get key
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       enabledForDiskEncryption: true
///       tenantId: ${current.tenantId}
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: false
///       skuName: standard
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Get
///             - List
///             - Create
///             - Delete
///             - Update
///             - Recover
///             - Purge
///             - GetRotationPolicy
///         - tenantId: ${exampleManagedInstance.identity.tenantId}
///           objectId: ${exampleManagedInstance.identity.principalId}
///           keyPermissions:
///             - Get
///             - WrapKey
///             - UnwrapKey
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: byok
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - unwrapKey
///         - wrapKey
///     options:
///       dependsOn:
///         - ${exampleKeyVault}
///   exampleManagedInstanceTransparentDataEncryption:
///     type: azure:mssql:ManagedInstanceTransparentDataEncryption
///     name: example
///     properties:
///       managedInstanceId: ${exampleManagedInstance.id}
///       keyVaultKeyId: ${exampleKey.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// > **Note:** This resource does not need to be imported to manage it, however the import will work.
///
/// SQL Managed Instance Transparent Data Encryption can be imported using the resource id, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/managedInstanceTransparentDataEncryption:ManagedInstanceTransparentDataEncryption example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Sql/managedInstances/instance1/encryptionProtector/current
/// ```
class ManagedInstanceTransparentDataEncryption extends pulumi.CustomResource {
  /// When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes.
  late final pulumi.Output<bool?> autoRotationEnabled;
  /// To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  ///
  /// > **Note:** In order to use customer managed keys, the identity of the MSSQL Managed Instance must have the following permissions on the key vault: 'get', 'wrapKey' and 'unwrapKey'
  ///
  /// > **Note:** If `managed_instance_id` denotes a secondary instance deployed for disaster recovery purposes, then the `key_vault_key_id` should be the same key used for the primary instance's transparent data encryption. Both primary and secondary instances should be encrypted with same key material.
  late final pulumi.Output<String?> keyVaultKeyId;
  late final pulumi.Output<String?> managedHsmKeyId;
  /// Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedInstanceId;

  /// Creates a new [ManagedInstanceTransparentDataEncryption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstanceTransparentDataEncryption]. {@macro pulumi_mssql_managed_instance_transparent_data_encryption_managed_instance_transparent_data_encryption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstanceTransparentDataEncryption(
    String name, {
    ManagedInstanceTransparentDataEncryptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedInstanceTransparentDataEncryption:ManagedInstanceTransparentDataEncryption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoRotationEnabled = registerOutput<bool?>('autoRotationEnabled');
    this.keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    this.managedHsmKeyId = registerOutput<String?>('managedHsmKeyId');
    this.managedInstanceId = registerOutput<String>('managedInstanceId');
  }
}
