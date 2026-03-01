import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_node_virtual_instance_args.dart';
import 'single_node_virtual_instance_identity.dart';
import 'single_node_virtual_instance_single_server_configuration.dart';

/// Manages an SAP Single Node Virtual Instance with new SAP System.
///
/// > **Note:** Before using this resource, it's required to submit the request of registering the Resource Provider with Azure CLI `az provider register --namespace "Microsoft.Workloads"`. The Resource Provider can take a while to register, you can check the status by running `az provider show --namespace "Microsoft.Workloads" --query "registrationState"`. Once this outputs "Registered" the Resource Provider is available for use.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as tls from "@pulumi/tls";
///
/// const current = azure.core.getSubscription({});
/// const examplePrivateKey = new tls.index.PrivateKey("example", {
///     algorithm: "RSA",
///     rsaBits: 4096,
/// });
/// const example = tls.index.PublicKey({
///     privateKeyPem: examplePrivateKey.privateKeyPem,
/// });
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example-uai",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: current.then(current => current.id),
///     roleDefinitionName: "Azure Center for SAP solutions service role",
///     principalId: exampleUserAssignedIdentity.principalId,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const app = new azure.core.ResourceGroup("app", {
///     name: "example-sapapp",
///     location: "West Europe",
/// }, {
///     dependsOn: [exampleSubnet],
/// });
/// const exampleSingleNodeVirtualInstance = new azure.workloadssap.SingleNodeVirtualInstance("example", {
///     name: "X05",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     environment: "NonProd",
///     sapProduct: "S4HANA",
///     managedResourceGroupName: "managedTestRG",
///     appLocation: app.location,
///     sapFqdn: "sap.bpaas.com",
///     singleServerConfiguration: {
///         appResourceGroupName: app.name,
///         subnetId: exampleSubnet.id,
///         databaseType: "HANA",
///         secondaryIpEnabled: true,
///         virtualMachineConfiguration: {
///             virtualMachineSize: "Standard_E32ds_v4",
///             image: {
///                 offer: "RHEL-SAP-HA",
///                 publisher: "RedHat",
///                 sku: "82sapha-gen2",
///                 version: "latest",
///             },
///             osProfile: {
///                 adminUsername: "testAdmin",
///                 sshPrivateKey: examplePrivateKey.privateKeyPem,
///                 sshPublicKey: example.publicKeyOpenssh,
///             },
///         },
///         diskVolumeConfigurations: [
///             {
///                 volumeName: "hana/data",
///                 numberOfDisks: 3,
///                 sizeInGb: 128,
///                 skuName: "Premium_LRS",
///             },
///             {
///                 volumeName: "hana/log",
///                 numberOfDisks: 3,
///                 sizeInGb: 128,
///                 skuName: "Premium_LRS",
///             },
///             {
///                 volumeName: "hana/shared",
///                 numberOfDisks: 1,
///                 sizeInGb: 256,
///                 skuName: "Premium_LRS",
///             },
///             {
///                 volumeName: "usr/sap",
///                 numberOfDisks: 1,
///                 sizeInGb: 128,
///                 skuName: "Premium_LRS",
///             },
///             {
///                 volumeName: "backup",
///                 numberOfDisks: 2,
///                 sizeInGb: 256,
///                 skuName: "StandardSSD_LRS",
///             },
///             {
///                 volumeName: "os",
///                 numberOfDisks: 1,
///                 sizeInGb: 64,
///                 skuName: "StandardSSD_LRS",
///             },
///         ],
///         virtualMachineResourceNames: {
///             hostName: "apphostName0",
///             osDiskName: "app0osdisk",
///             virtualMachineName: "appvm0",
///             networkInterfaceNames: ["appnic0"],
///             dataDisks: [{
///                 volumeName: "default",
///                 names: ["app0disk0"],
///             }],
///         },
///     },
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// }, {
///     dependsOn: [exampleAssignment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_tls as tls
///
/// current = azure.core.get_subscription()
/// example_private_key = tls.index.PrivateKey("example",
///     algorithm=RSA,
///     rsa_bits=4096)
/// example = tls.index.public_key(private_key_pem=example_private_key["privateKeyPem"])
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example-uai",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_assignment = azure.authorization.Assignment("example",
///     scope=current.id,
///     role_definition_name="Azure Center for SAP solutions service role",
///     principal_id=example_user_assigned_identity.principal_id)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// app = azure.core.ResourceGroup("app",
///     name="example-sapapp",
///     location="West Europe",
///     opts = pulumi.ResourceOptions(depends_on=[example_subnet]))
/// example_single_node_virtual_instance = azure.workloadssap.SingleNodeVirtualInstance("example",
///     name="X05",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     environment="NonProd",
///     sap_product="S4HANA",
///     managed_resource_group_name="managedTestRG",
///     app_location=app.location,
///     sap_fqdn="sap.bpaas.com",
///     single_server_configuration={
///         "app_resource_group_name": app.name,
///         "subnet_id": example_subnet.id,
///         "database_type": "HANA",
///         "secondary_ip_enabled": True,
///         "virtual_machine_configuration": {
///             "virtual_machine_size": "Standard_E32ds_v4",
///             "image": {
///                 "offer": "RHEL-SAP-HA",
///                 "publisher": "RedHat",
///                 "sku": "82sapha-gen2",
///                 "version": "latest",
///             },
///             "os_profile": {
///                 "admin_username": "testAdmin",
///                 "ssh_private_key": example_private_key["privateKeyPem"],
///                 "ssh_public_key": example["publicKeyOpenssh"],
///             },
///         },
///         "disk_volume_configurations": [
///             {
///                 "volume_name": "hana/data",
///                 "number_of_disks": 3,
///                 "size_in_gb": 128,
///                 "sku_name": "Premium_LRS",
///             },
///             {
///                 "volume_name": "hana/log",
///                 "number_of_disks": 3,
///                 "size_in_gb": 128,
///                 "sku_name": "Premium_LRS",
///             },
///             {
///                 "volume_name": "hana/shared",
///                 "number_of_disks": 1,
///                 "size_in_gb": 256,
///                 "sku_name": "Premium_LRS",
///             },
///             {
///                 "volume_name": "usr/sap",
///                 "number_of_disks": 1,
///                 "size_in_gb": 128,
///                 "sku_name": "Premium_LRS",
///             },
///             {
///                 "volume_name": "backup",
///                 "number_of_disks": 2,
///                 "size_in_gb": 256,
///                 "sku_name": "StandardSSD_LRS",
///             },
///             {
///                 "volume_name": "os",
///                 "number_of_disks": 1,
///                 "size_in_gb": 64,
///                 "sku_name": "StandardSSD_LRS",
///             },
///         ],
///         "virtual_machine_resource_names": {
///             "host_name": "apphostName0",
///             "os_disk_name": "app0osdisk",
///             "virtual_machine_name": "appvm0",
///             "network_interface_names": ["appnic0"],
///             "data_disks": [{
///                 "volume_name": "default",
///                 "names": ["app0disk0"],
///             }],
///         },
///     },
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var examplePrivateKey = new Tls.Index.PrivateKey("example", new()
///     {
///         Algorithm = "RSA",
///         RsaBits = 4096,
///     });
///
///     var example = Tls.Index.PublicKey.Invoke(new()
///     {
///         PrivateKeyPem = examplePrivateKey.PrivateKeyPem,
///     });
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example-uai",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionName = "Azure Center for SAP solutions service role",
///         PrincipalId = exampleUserAssignedIdentity.PrincipalId,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var app = new Azure.Core.ResourceGroup("app", new()
///     {
///         Name = "example-sapapp",
///         Location = "West Europe",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSubnet,
///         },
///     });
///
///     var exampleSingleNodeVirtualInstance = new Azure.WorkloadsSAP.SingleNodeVirtualInstance("example", new()
///     {
///         Name = "X05",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Environment = "NonProd",
///         SapProduct = "S4HANA",
///         ManagedResourceGroupName = "managedTestRG",
///         AppLocation = app.Location,
///         SapFqdn = "sap.bpaas.com",
///         SingleServerConfiguration = new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationArgs
///         {
///             AppResourceGroupName = app.Name,
///             SubnetId = exampleSubnet.Id,
///             DatabaseType = "HANA",
///             SecondaryIpEnabled = true,
///             VirtualMachineConfiguration = new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationArgs
///             {
///                 VirtualMachineSize = "Standard_E32ds_v4",
///                 Image = new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImageArgs
///                 {
///                     Offer = "RHEL-SAP-HA",
///                     Publisher = "RedHat",
///                     Sku = "82sapha-gen2",
///                     Version = "latest",
///                 },
///                 OsProfile = new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfileArgs
///                 {
///                     AdminUsername = "testAdmin",
///                     SshPrivateKey = examplePrivateKey.PrivateKeyPem,
///                     SshPublicKey = example.PublicKeyOpenssh,
///                 },
///             },
///             DiskVolumeConfigurations = new[]
///             {
///                 new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs
///                 {
///                     VolumeName = "hana/data",
///                     NumberOfDisks = 3,
///                     SizeInGb = 128,
///                     SkuName = "Premium_LRS",
///                 },
///                 new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs
///                 {
///                     VolumeName = "hana/log",
///                     NumberOfDisks = 3,
///                     SizeInGb = 128,
///                     SkuName = "Premium_LRS",
///                 },
///                 new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs
///                 {
///                     VolumeName = "hana/shared",
///                     NumberOfDisks = 1,
///                     SizeInGb = 256,
///                     SkuName = "Premium_LRS",
///                 },
///                 new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs
///                 {
///                     VolumeName = "usr/sap",
///                     NumberOfDisks = 1,
///                     SizeInGb = 128,
///                     SkuName = "Premium_LRS",
///                 },
///                 new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs
///                 {
///                     VolumeName = "backup",
///                     NumberOfDisks = 2,
///                     SizeInGb = 256,
///                     SkuName = "StandardSSD_LRS",
///                 },
///                 new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs
///                 {
///                     VolumeName = "os",
///                     NumberOfDisks = 1,
///                     SizeInGb = 64,
///                     SkuName = "StandardSSD_LRS",
///                 },
///             },
///             VirtualMachineResourceNames = new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesArgs
///             {
///                 HostName = "apphostName0",
///                 OsDiskName = "app0osdisk",
///                 VirtualMachineName = "appvm0",
///                 NetworkInterfaceNames = new[]
///                 {
///                     "appnic0",
///                 },
///                 DataDisks = new[]
///                 {
///                     new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDiskArgs
///                     {
///                         VolumeName = "default",
///                         Names = new[]
///                         {
///                             "app0disk0",
///                         },
///                     },
///                 },
///             },
///         },
///         Identity = new Azure.WorkloadsSAP.Inputs.SingleNodeVirtualInstanceIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/workloadssap"
/// 	"github.com/pulumi/pulumi-tls/sdk/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePrivateKey, err := tls.NewPrivateKey(ctx, "example", &tls.PrivateKeyArgs{
/// 			Algorithm: "RSA",
/// 			RsaBits:   4096,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := tls.PublicKey(ctx, map[string]interface{}{
/// 			"privateKeyPem": examplePrivateKey.PrivateKeyPem,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example-uai"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              pulumi.String(current.Id),
/// 			RoleDefinitionName: pulumi.String("Azure Center for SAP solutions service role"),
/// 			PrincipalId:        exampleUserAssignedIdentity.PrincipalId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  exampleResourceGroup.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		app, err := core.NewResourceGroup(ctx, "app", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-sapapp"),
/// 			Location: pulumi.String("West Europe"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workloadssap.NewSingleNodeVirtualInstance(ctx, "example", &workloadssap.SingleNodeVirtualInstanceArgs{
/// 			Name:                     pulumi.String("X05"),
/// 			ResourceGroupName:        exampleResourceGroup.Name,
/// 			Location:                 exampleResourceGroup.Location,
/// 			Environment:              pulumi.String("NonProd"),
/// 			SapProduct:               pulumi.String("S4HANA"),
/// 			ManagedResourceGroupName: pulumi.String("managedTestRG"),
/// 			AppLocation:              app.Location,
/// 			SapFqdn:                  pulumi.String("sap.bpaas.com"),
/// 			SingleServerConfiguration: &workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationArgs{
/// 				AppResourceGroupName: app.Name,
/// 				SubnetId:             exampleSubnet.ID(),
/// 				DatabaseType:         pulumi.String("HANA"),
/// 				SecondaryIpEnabled:   pulumi.Bool(true),
/// 				VirtualMachineConfiguration: &workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationArgs{
/// 					VirtualMachineSize: pulumi.String("Standard_E32ds_v4"),
/// 					Image: &workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImageArgs{
/// 						Offer:     pulumi.String("RHEL-SAP-HA"),
/// 						Publisher: pulumi.String("RedHat"),
/// 						Sku:       pulumi.String("82sapha-gen2"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					OsProfile: &workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfileArgs{
/// 						AdminUsername: pulumi.String("testAdmin"),
/// 						SshPrivateKey: examplePrivateKey.PrivateKeyPem,
/// 						SshPublicKey:  pulumi.Any(example.PublicKeyOpenssh),
/// 					},
/// 				},
/// 				DiskVolumeConfigurations: workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArray{
/// 					&workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs{
/// 						VolumeName:    pulumi.String("hana/data"),
/// 						NumberOfDisks: pulumi.Int(3),
/// 						SizeInGb:      pulumi.Int(128),
/// 						SkuName:       pulumi.String("Premium_LRS"),
/// 					},
/// 					&workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs{
/// 						VolumeName:    pulumi.String("hana/log"),
/// 						NumberOfDisks: pulumi.Int(3),
/// 						SizeInGb:      pulumi.Int(128),
/// 						SkuName:       pulumi.String("Premium_LRS"),
/// 					},
/// 					&workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs{
/// 						VolumeName:    pulumi.String("hana/shared"),
/// 						NumberOfDisks: pulumi.Int(1),
/// 						SizeInGb:      pulumi.Int(256),
/// 						SkuName:       pulumi.String("Premium_LRS"),
/// 					},
/// 					&workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs{
/// 						VolumeName:    pulumi.String("usr/sap"),
/// 						NumberOfDisks: pulumi.Int(1),
/// 						SizeInGb:      pulumi.Int(128),
/// 						SkuName:       pulumi.String("Premium_LRS"),
/// 					},
/// 					&workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs{
/// 						VolumeName:    pulumi.String("backup"),
/// 						NumberOfDisks: pulumi.Int(2),
/// 						SizeInGb:      pulumi.Int(256),
/// 						SkuName:       pulumi.String("StandardSSD_LRS"),
/// 					},
/// 					&workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs{
/// 						VolumeName:    pulumi.String("os"),
/// 						NumberOfDisks: pulumi.Int(1),
/// 						SizeInGb:      pulumi.Int(64),
/// 						SkuName:       pulumi.String("StandardSSD_LRS"),
/// 					},
/// 				},
/// 				VirtualMachineResourceNames: &workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesArgs{
/// 					HostName:           pulumi.String("apphostName0"),
/// 					OsDiskName:         pulumi.String("app0osdisk"),
/// 					VirtualMachineName: pulumi.String("appvm0"),
/// 					NetworkInterfaceNames: pulumi.StringArray{
/// 						pulumi.String("appnic0"),
/// 					},
/// 					DataDisks: workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDiskArray{
/// 						&workloadssap.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDiskArgs{
/// 							VolumeName: pulumi.String("default"),
/// 							Names: pulumi.StringArray{
/// 								pulumi.String("app0disk0"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Identity: &workloadssap.SingleNodeVirtualInstanceIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 		}))
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
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.TlsFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.workloadssap.SingleNodeVirtualInstance;
/// import com.pulumi.azure.workloadssap.SingleNodeVirtualInstanceArgs;
/// import com.pulumi.azure.workloadssap.inputs.SingleNodeVirtualInstanceSingleServerConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationArgs;
/// import com.pulumi.azure.workloadssap.inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImageArgs;
/// import com.pulumi.azure.workloadssap.inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfileArgs;
/// import com.pulumi.azure.workloadssap.inputs.SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesArgs;
/// import com.pulumi.azure.workloadssap.inputs.SingleNodeVirtualInstanceIdentityArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var examplePrivateKey = new PrivateKey("examplePrivateKey", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .rsaBits(4096)
///             .build());
///
///         final var example = TlsFunctions.PublicKey(Map.of("privateKeyPem", examplePrivateKey.privateKeyPem()));
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example-uai")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(current.id())
///             .roleDefinitionName("Azure Center for SAP solutions service role")
///             .principalId(exampleUserAssignedIdentity.principalId())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var app = new ResourceGroup("app", ResourceGroupArgs.builder()
///             .name("example-sapapp")
///             .location("West Europe")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSubnet)
///                 .build());
///
///         var exampleSingleNodeVirtualInstance = new SingleNodeVirtualInstance("exampleSingleNodeVirtualInstance", SingleNodeVirtualInstanceArgs.builder()
///             .name("X05")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .environment("NonProd")
///             .sapProduct("S4HANA")
///             .managedResourceGroupName("managedTestRG")
///             .appLocation(app.location())
///             .sapFqdn("sap.bpaas.com")
///             .singleServerConfiguration(SingleNodeVirtualInstanceSingleServerConfigurationArgs.builder()
///                 .appResourceGroupName(app.name())
///                 .subnetId(exampleSubnet.id())
///                 .databaseType("HANA")
///                 .secondaryIpEnabled(true)
///                 .virtualMachineConfiguration(SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationArgs.builder()
///                     .virtualMachineSize("Standard_E32ds_v4")
///                     .image(SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImageArgs.builder()
///                         .offer("RHEL-SAP-HA")
///                         .publisher("RedHat")
///                         .sku("82sapha-gen2")
///                         .version("latest")
///                         .build())
///                     .osProfile(SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfileArgs.builder()
///                         .adminUsername("testAdmin")
///                         .sshPrivateKey(examplePrivateKey.privateKeyPem())
///                         .sshPublicKey(example.publicKeyOpenssh())
///                         .build())
///                     .build())
///                 .diskVolumeConfigurations(
///                     SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs.builder()
///                         .volumeName("hana/data")
///                         .numberOfDisks(3)
///                         .sizeInGb(128)
///                         .skuName("Premium_LRS")
///                         .build(),
///                     SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs.builder()
///                         .volumeName("hana/log")
///                         .numberOfDisks(3)
///                         .sizeInGb(128)
///                         .skuName("Premium_LRS")
///                         .build(),
///                     SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs.builder()
///                         .volumeName("hana/shared")
///                         .numberOfDisks(1)
///                         .sizeInGb(256)
///                         .skuName("Premium_LRS")
///                         .build(),
///                     SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs.builder()
///                         .volumeName("usr/sap")
///                         .numberOfDisks(1)
///                         .sizeInGb(128)
///                         .skuName("Premium_LRS")
///                         .build(),
///                     SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs.builder()
///                         .volumeName("backup")
///                         .numberOfDisks(2)
///                         .sizeInGb(256)
///                         .skuName("StandardSSD_LRS")
///                         .build(),
///                     SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfigurationArgs.builder()
///                         .volumeName("os")
///                         .numberOfDisks(1)
///                         .sizeInGb(64)
///                         .skuName("StandardSSD_LRS")
///                         .build())
///                 .virtualMachineResourceNames(SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesArgs.builder()
///                     .hostName("apphostName0")
///                     .osDiskName("app0osdisk")
///                     .virtualMachineName("appvm0")
///                     .networkInterfaceNames("appnic0")
///                     .dataDisks(SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDiskArgs.builder()
///                         .volumeName("default")
///                         .names("app0disk0")
///                         .build())
///                     .build())
///                 .build())
///             .identity(SingleNodeVirtualInstanceIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePrivateKey:
///     type: tls:PrivateKey
///     name: example
///     properties:
///       algorithm: RSA
///       rsaBits: 4096
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: example-uai
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${current.id}
///       roleDefinitionName: Azure Center for SAP solutions service role
///       principalId: ${exampleUserAssignedIdentity.principalId}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   app:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-sapapp
///       location: West Europe
///     options:
///       dependsOn:
///         - ${exampleSubnet}
///   exampleSingleNodeVirtualInstance:
///     type: azure:workloadssap:SingleNodeVirtualInstance
///     name: example
///     properties:
///       name: X05
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       environment: NonProd
///       sapProduct: S4HANA
///       managedResourceGroupName: managedTestRG
///       appLocation: ${app.location}
///       sapFqdn: sap.bpaas.com
///       singleServerConfiguration:
///         appResourceGroupName: ${app.name}
///         subnetId: ${exampleSubnet.id}
///         databaseType: HANA
///         secondaryIpEnabled: true
///         virtualMachineConfiguration:
///           virtualMachineSize: Standard_E32ds_v4
///           image:
///             offer: RHEL-SAP-HA
///             publisher: RedHat
///             sku: 82sapha-gen2
///             version: latest
///           osProfile:
///             adminUsername: testAdmin
///             sshPrivateKey: ${examplePrivateKey.privateKeyPem}
///             sshPublicKey: ${example.publicKeyOpenssh}
///         diskVolumeConfigurations:
///           - volumeName: hana/data
///             numberOfDisks: 3
///             sizeInGb: 128
///             skuName: Premium_LRS
///           - volumeName: hana/log
///             numberOfDisks: 3
///             sizeInGb: 128
///             skuName: Premium_LRS
///           - volumeName: hana/shared
///             numberOfDisks: 1
///             sizeInGb: 256
///             skuName: Premium_LRS
///           - volumeName: usr/sap
///             numberOfDisks: 1
///             sizeInGb: 128
///             skuName: Premium_LRS
///           - volumeName: backup
///             numberOfDisks: 2
///             sizeInGb: 256
///             skuName: StandardSSD_LRS
///           - volumeName: os
///             numberOfDisks: 1
///             sizeInGb: 64
///             skuName: StandardSSD_LRS
///         virtualMachineResourceNames:
///           hostName: apphostName0
///           osDiskName: app0osdisk
///           virtualMachineName: appvm0
///           networkInterfaceNames:
///             - appnic0
///           dataDisks:
///             - volumeName: default
///               names:
///                 - app0disk0
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///     options:
///       dependsOn:
///         - ${exampleAssignment}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: tls:PublicKey
///       arguments:
///         privateKeyPem: ${examplePrivateKey.privateKeyPem}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Workloads` - 2024-09-01
///
/// ## Import
///
/// SAP Single Node Virtual Instances with new SAP Systems can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:workloadssap/singleNodeVirtualInstance:SingleNodeVirtualInstance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Workloads/sapVirtualInstances/vis1
/// ```
class SingleNodeVirtualInstance extends pulumi.CustomResource {
  /// The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appLocation;
  /// The environment type for the SAP Single Node Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> environment;
  /// An `identity` block as defined below.
  late final pulumi.Output<SingleNodeVirtualInstanceIdentity?> identity;
  /// The Azure Region where the SAP Single Node Virtual Instance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the managed Resource Group for the SAP Single Node Virtual Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> managedResourceGroupName;
  /// The network access type for managed resources. Possible values are `Private` and `Public`. Defaults to `Public`.
  late final pulumi.Output<String?> managedResourcesNetworkAccessType;
  /// Specifies the name of this SAP Single Node Virtual Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the SAP Single Node Virtual Instance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The fully qualified domain name for the SAP system. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sapFqdn;
  /// The SAP Product type for the SAP Single Node Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sapProduct;
  /// A `single_server_configuration` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<SingleNodeVirtualInstanceSingleServerConfiguration> singleServerConfiguration;
  /// A mapping of tags which should be assigned to the SAP Single Node Virtual Instance.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SingleNodeVirtualInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleNodeVirtualInstance]. {@macro pulumi_workloadssap_single_node_virtual_instance_single_node_virtual_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleNodeVirtualInstance(
    String name, {
    SingleNodeVirtualInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:workloadssap/singleNodeVirtualInstance:SingleNodeVirtualInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appLocation = registerOutput<String>('appLocation');
    this.environment = registerOutput<String>('environment');
    this.identity = registerOutput<SingleNodeVirtualInstanceIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.managedResourceGroupName = registerOutput<String?>('managedResourceGroupName');
    this.managedResourcesNetworkAccessType = registerOutput<String?>('managedResourcesNetworkAccessType');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sapFqdn = registerOutput<String>('sapFqdn');
    this.sapProduct = registerOutput<String>('sapProduct');
    this.singleServerConfiguration = registerOutput<SingleNodeVirtualInstanceSingleServerConfiguration>('singleServerConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
