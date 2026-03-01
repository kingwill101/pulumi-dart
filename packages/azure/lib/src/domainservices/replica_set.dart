import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_set_args.dart';

/// Manages a Replica Set for an Active Directory Domain Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azuread from "@pulumi/azuread";
///
/// const primary = new azure.core.ResourceGroup("primary", {
///     name: "aadds-primary-rg",
///     location: "West Europe",
/// });
/// const primaryVirtualNetwork = new azure.network.VirtualNetwork("primary", {
///     name: "aadds-primary-vnet",
///     location: primary.location,
///     resourceGroupName: primary.name,
///     addressSpaces: ["10.0.1.0/16"],
/// });
/// const primarySubnet = new azure.network.Subnet("primary", {
///     name: "aadds-primary-subnet",
///     resourceGroupName: primary.name,
///     virtualNetworkName: primaryVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const primaryNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("primary", {
///     name: "aadds-primary-nsg",
///     location: primary.location,
///     resourceGroupName: primary.name,
///     securityRules: [
///         {
///             name: "AllowSyncWithAzureAD",
///             priority: 101,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "443",
///             sourceAddressPrefix: "AzureActiveDirectoryDomainServices",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowRD",
///             priority: 201,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "3389",
///             sourceAddressPrefix: "CorpNetSaw",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowPSRemoting",
///             priority: 301,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "5986",
///             sourceAddressPrefix: "AzureActiveDirectoryDomainServices",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowLDAPS",
///             priority: 401,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "636",
///             sourceAddressPrefix: "*",
///             destinationAddressPrefix: "*",
///         },
///     ],
/// });
/// const primarySubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("primary", {
///     subnetId: primarySubnet.id,
///     networkSecurityGroupId: primaryNetworkSecurityGroup.id,
/// });
/// const dcAdmins = new azuread.Group("dc_admins", {
///     displayName: "aad-dc-administrators",
///     securityEnabled: true,
/// });
/// const admin = new azuread.User("admin", {
///     userPrincipalName: "dc-admin@hashicorp-example.net",
///     displayName: "DC Administrator",
///     password: "Pa55w0Rd!!1",
/// });
/// const adminGroupMember = new azuread.GroupMember("admin", {
///     groupObjectId: dcAdmins.objectId,
///     memberObjectId: admin.objectId,
/// });
/// const example = new azuread.ServicePrincipal("example", {applicationId: "2565bd9d-da50-47d4-8b85-4c97f669dc36"});
/// const aadds = new azure.core.ResourceGroup("aadds", {
///     name: "aadds-rg",
///     location: "westeurope",
/// });
/// const exampleService = new azure.domainservices.Service("example", {
///     name: "example-aadds",
///     location: aadds.location,
///     resourceGroupName: aadds.name,
///     domainName: "widgetslogin.net",
///     sku: "Enterprise",
///     filteredSyncEnabled: false,
///     initialReplicaSet: {
///         location: primaryVirtualNetwork.location,
///         subnetId: primarySubnet.id,
///     },
///     notifications: {
///         additionalRecipients: [
///             "notifyA@example.net",
///             "notifyB@example.org",
///         ],
///         notifyDcAdmins: true,
///         notifyGlobalAdmins: true,
///     },
///     security: {
///         syncKerberosPasswords: true,
///         syncNtlmPasswords: true,
///         syncOnPremPasswords: true,
///     },
///     tags: {
///         Environment: "prod",
///     },
/// }, {
///     dependsOn: [
///         example,
///         primarySubnetNetworkSecurityGroupAssociation,
///     ],
/// });
/// const replica = new azure.core.ResourceGroup("replica", {
///     name: "aadds-replica-rg",
///     location: "North Europe",
/// });
/// const replicaVirtualNetwork = new azure.network.VirtualNetwork("replica", {
///     name: "aadds-replica-vnet",
///     location: replica.location,
///     resourceGroupName: replica.name,
///     addressSpaces: ["10.20.0.0/16"],
/// });
/// const aaddsReplica = new azure.network.Subnet("aadds_replica", {
///     name: "aadds-replica-subnet",
///     resourceGroupName: replica.name,
///     virtualNetworkName: replicaVirtualNetwork.name,
///     addressPrefixes: ["10.20.0.0/24"],
/// });
/// const aaddsReplicaNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("aadds_replica", {
///     name: "aadds-replica-nsg",
///     location: replica.location,
///     resourceGroupName: replica.name,
///     securityRules: [
///         {
///             name: "AllowSyncWithAzureAD",
///             priority: 101,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "443",
///             sourceAddressPrefix: "AzureActiveDirectoryDomainServices",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowRD",
///             priority: 201,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "3389",
///             sourceAddressPrefix: "CorpNetSaw",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowPSRemoting",
///             priority: 301,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "5986",
///             sourceAddressPrefix: "AzureActiveDirectoryDomainServices",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowLDAPS",
///             priority: 401,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "636",
///             sourceAddressPrefix: "*",
///             destinationAddressPrefix: "*",
///         },
///     ],
/// });
/// const replicaSubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("replica", {
///     subnetId: aaddsReplica.id,
///     networkSecurityGroupId: aaddsReplicaNetworkSecurityGroup.id,
/// });
/// const primaryReplica = new azure.network.VirtualNetworkPeering("primary_replica", {
///     name: "aadds-primary-replica",
///     resourceGroupName: primaryVirtualNetwork.resourceGroupName,
///     virtualNetworkName: primaryVirtualNetwork.name,
///     remoteVirtualNetworkId: replicaVirtualNetwork.id,
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     useRemoteGateways: false,
/// });
/// const replicaPrimary = new azure.network.VirtualNetworkPeering("replica_primary", {
///     name: "aadds-replica-primary",
///     resourceGroupName: replicaVirtualNetwork.resourceGroupName,
///     virtualNetworkName: replicaVirtualNetwork.name,
///     remoteVirtualNetworkId: primaryVirtualNetwork.id,
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     useRemoteGateways: false,
/// });
/// const replicaVirtualNetworkDnsServers = new azure.network.VirtualNetworkDnsServers("replica", {
///     virtualNetworkId: replicaVirtualNetwork.id,
///     dnsServers: exampleService.initialReplicaSet.apply(initialReplicaSet => initialReplicaSet.domainControllerIpAddresses),
/// });
/// const replicaReplicaSet = new azure.domainservices.ReplicaSet("replica", {
///     domainServiceId: exampleService.id,
///     location: replica.location,
///     subnetId: aaddsReplica.id,
/// }, {
///     dependsOn: [
///         replicaSubnetNetworkSecurityGroupAssociation,
///         primaryReplica,
///         replicaPrimary,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azuread as azuread
///
/// primary = azure.core.ResourceGroup("primary",
///     name="aadds-primary-rg",
///     location="West Europe")
/// primary_virtual_network = azure.network.VirtualNetwork("primary",
///     name="aadds-primary-vnet",
///     location=primary.location,
///     resource_group_name=primary.name,
///     address_spaces=["10.0.1.0/16"])
/// primary_subnet = azure.network.Subnet("primary",
///     name="aadds-primary-subnet",
///     resource_group_name=primary.name,
///     virtual_network_name=primary_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// primary_network_security_group = azure.network.NetworkSecurityGroup("primary",
///     name="aadds-primary-nsg",
///     location=primary.location,
///     resource_group_name=primary.name,
///     security_rules=[
///         {
///             "name": "AllowSyncWithAzureAD",
///             "priority": 101,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "443",
///             "source_address_prefix": "AzureActiveDirectoryDomainServices",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowRD",
///             "priority": 201,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "3389",
///             "source_address_prefix": "CorpNetSaw",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowPSRemoting",
///             "priority": 301,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "5986",
///             "source_address_prefix": "AzureActiveDirectoryDomainServices",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowLDAPS",
///             "priority": 401,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "636",
///             "source_address_prefix": "*",
///             "destination_address_prefix": "*",
///         },
///     ])
/// primary_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("primary",
///     subnet_id=primary_subnet.id,
///     network_security_group_id=primary_network_security_group.id)
/// dc_admins = azuread.Group("dc_admins",
///     display_name="aad-dc-administrators",
///     security_enabled=True)
/// admin = azuread.User("admin",
///     user_principal_name="dc-admin@hashicorp-example.net",
///     display_name="DC Administrator",
///     password="Pa55w0Rd!!1")
/// admin_group_member = azuread.GroupMember("admin",
///     group_object_id=dc_admins.object_id,
///     member_object_id=admin.object_id)
/// example = azuread.ServicePrincipal("example", application_id="2565bd9d-da50-47d4-8b85-4c97f669dc36")
/// aadds = azure.core.ResourceGroup("aadds",
///     name="aadds-rg",
///     location="westeurope")
/// example_service = azure.domainservices.Service("example",
///     name="example-aadds",
///     location=aadds.location,
///     resource_group_name=aadds.name,
///     domain_name="widgetslogin.net",
///     sku="Enterprise",
///     filtered_sync_enabled=False,
///     initial_replica_set={
///         "location": primary_virtual_network.location,
///         "subnet_id": primary_subnet.id,
///     },
///     notifications={
///         "additional_recipients": [
///             "notifyA@example.net",
///             "notifyB@example.org",
///         ],
///         "notify_dc_admins": True,
///         "notify_global_admins": True,
///     },
///     security={
///         "sync_kerberos_passwords": True,
///         "sync_ntlm_passwords": True,
///         "sync_on_prem_passwords": True,
///     },
///     tags={
///         "Environment": "prod",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             example,
///             primary_subnet_network_security_group_association,
///         ]))
/// replica = azure.core.ResourceGroup("replica",
///     name="aadds-replica-rg",
///     location="North Europe")
/// replica_virtual_network = azure.network.VirtualNetwork("replica",
///     name="aadds-replica-vnet",
///     location=replica.location,
///     resource_group_name=replica.name,
///     address_spaces=["10.20.0.0/16"])
/// aadds_replica = azure.network.Subnet("aadds_replica",
///     name="aadds-replica-subnet",
///     resource_group_name=replica.name,
///     virtual_network_name=replica_virtual_network.name,
///     address_prefixes=["10.20.0.0/24"])
/// aadds_replica_network_security_group = azure.network.NetworkSecurityGroup("aadds_replica",
///     name="aadds-replica-nsg",
///     location=replica.location,
///     resource_group_name=replica.name,
///     security_rules=[
///         {
///             "name": "AllowSyncWithAzureAD",
///             "priority": 101,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "443",
///             "source_address_prefix": "AzureActiveDirectoryDomainServices",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowRD",
///             "priority": 201,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "3389",
///             "source_address_prefix": "CorpNetSaw",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowPSRemoting",
///             "priority": 301,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "5986",
///             "source_address_prefix": "AzureActiveDirectoryDomainServices",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowLDAPS",
///             "priority": 401,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "636",
///             "source_address_prefix": "*",
///             "destination_address_prefix": "*",
///         },
///     ])
/// replica_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("replica",
///     subnet_id=aadds_replica.id,
///     network_security_group_id=aadds_replica_network_security_group.id)
/// primary_replica = azure.network.VirtualNetworkPeering("primary_replica",
///     name="aadds-primary-replica",
///     resource_group_name=primary_virtual_network.resource_group_name,
///     virtual_network_name=primary_virtual_network.name,
///     remote_virtual_network_id=replica_virtual_network.id,
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     use_remote_gateways=False)
/// replica_primary = azure.network.VirtualNetworkPeering("replica_primary",
///     name="aadds-replica-primary",
///     resource_group_name=replica_virtual_network.resource_group_name,
///     virtual_network_name=replica_virtual_network.name,
///     remote_virtual_network_id=primary_virtual_network.id,
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     use_remote_gateways=False)
/// replica_virtual_network_dns_servers = azure.network.VirtualNetworkDnsServers("replica",
///     virtual_network_id=replica_virtual_network.id,
///     dns_servers=example_service.initial_replica_set.domain_controller_ip_addresses)
/// replica_replica_set = azure.domainservices.ReplicaSet("replica",
///     domain_service_id=example_service.id,
///     location=replica.location,
///     subnet_id=aadds_replica.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             replica_subnet_network_security_group_association,
///             primary_replica,
///             replica_primary,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Azure.Core.ResourceGroup("primary", new()
///     {
///         Name = "aadds-primary-rg",
///         Location = "West Europe",
///     });
///
///     var primaryVirtualNetwork = new Azure.Network.VirtualNetwork("primary", new()
///     {
///         Name = "aadds-primary-vnet",
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.1.0/16",
///         },
///     });
///
///     var primarySubnet = new Azure.Network.Subnet("primary", new()
///     {
///         Name = "aadds-primary-subnet",
///         ResourceGroupName = primary.Name,
///         VirtualNetworkName = primaryVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var primaryNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("primary", new()
///     {
///         Name = "aadds-primary-nsg",
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///         SecurityRules = new[]
///         {
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowSyncWithAzureAD",
///                 Priority = 101,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "443",
///                 SourceAddressPrefix = "AzureActiveDirectoryDomainServices",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowRD",
///                 Priority = 201,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "3389",
///                 SourceAddressPrefix = "CorpNetSaw",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowPSRemoting",
///                 Priority = 301,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "5986",
///                 SourceAddressPrefix = "AzureActiveDirectoryDomainServices",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowLDAPS",
///                 Priority = 401,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "636",
///                 SourceAddressPrefix = "*",
///                 DestinationAddressPrefix = "*",
///             },
///         },
///     });
///
///     var primarySubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("primary", new()
///     {
///         SubnetId = primarySubnet.Id,
///         NetworkSecurityGroupId = primaryNetworkSecurityGroup.Id,
///     });
///
///     var dcAdmins = new AzureAD.Group("dc_admins", new()
///     {
///         DisplayName = "aad-dc-administrators",
///         SecurityEnabled = true,
///     });
///
///     var admin = new AzureAD.User("admin", new()
///     {
///         UserPrincipalName = "dc-admin@hashicorp-example.net",
///         DisplayName = "DC Administrator",
///         Password = "Pa55w0Rd!!1",
///     });
///
///     var adminGroupMember = new AzureAD.GroupMember("admin", new()
///     {
///         GroupObjectId = dcAdmins.ObjectId,
///         MemberObjectId = admin.ObjectId,
///     });
///
///     var example = new AzureAD.ServicePrincipal("example", new()
///     {
///         ApplicationId = "2565bd9d-da50-47d4-8b85-4c97f669dc36",
///     });
///
///     var aadds = new Azure.Core.ResourceGroup("aadds", new()
///     {
///         Name = "aadds-rg",
///         Location = "westeurope",
///     });
///
///     var exampleService = new Azure.DomainServices.Service("example", new()
///     {
///         Name = "example-aadds",
///         Location = aadds.Location,
///         ResourceGroupName = aadds.Name,
///         DomainName = "widgetslogin.net",
///         Sku = "Enterprise",
///         FilteredSyncEnabled = false,
///         InitialReplicaSet = new Azure.DomainServices.Inputs.ServiceInitialReplicaSetArgs
///         {
///             Location = primaryVirtualNetwork.Location,
///             SubnetId = primarySubnet.Id,
///         },
///         Notifications = new Azure.DomainServices.Inputs.ServiceNotificationsArgs
///         {
///             AdditionalRecipients = new[]
///             {
///                 "notifyA@example.net",
///                 "notifyB@example.org",
///             },
///             NotifyDcAdmins = true,
///             NotifyGlobalAdmins = true,
///         },
///         Security = new Azure.DomainServices.Inputs.ServiceSecurityArgs
///         {
///             SyncKerberosPasswords = true,
///             SyncNtlmPasswords = true,
///             SyncOnPremPasswords = true,
///         },
///         Tags =
///         {
///             { "Environment", "prod" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///             primarySubnetNetworkSecurityGroupAssociation,
///         },
///     });
///
///     var replica = new Azure.Core.ResourceGroup("replica", new()
///     {
///         Name = "aadds-replica-rg",
///         Location = "North Europe",
///     });
///
///     var replicaVirtualNetwork = new Azure.Network.VirtualNetwork("replica", new()
///     {
///         Name = "aadds-replica-vnet",
///         Location = replica.Location,
///         ResourceGroupName = replica.Name,
///         AddressSpaces = new[]
///         {
///             "10.20.0.0/16",
///         },
///     });
///
///     var aaddsReplica = new Azure.Network.Subnet("aadds_replica", new()
///     {
///         Name = "aadds-replica-subnet",
///         ResourceGroupName = replica.Name,
///         VirtualNetworkName = replicaVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.20.0.0/24",
///         },
///     });
///
///     var aaddsReplicaNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("aadds_replica", new()
///     {
///         Name = "aadds-replica-nsg",
///         Location = replica.Location,
///         ResourceGroupName = replica.Name,
///         SecurityRules = new[]
///         {
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowSyncWithAzureAD",
///                 Priority = 101,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "443",
///                 SourceAddressPrefix = "AzureActiveDirectoryDomainServices",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowRD",
///                 Priority = 201,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "3389",
///                 SourceAddressPrefix = "CorpNetSaw",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowPSRemoting",
///                 Priority = 301,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "5986",
///                 SourceAddressPrefix = "AzureActiveDirectoryDomainServices",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowLDAPS",
///                 Priority = 401,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "636",
///                 SourceAddressPrefix = "*",
///                 DestinationAddressPrefix = "*",
///             },
///         },
///     });
///
///     var replicaSubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("replica", new()
///     {
///         SubnetId = aaddsReplica.Id,
///         NetworkSecurityGroupId = aaddsReplicaNetworkSecurityGroup.Id,
///     });
///
///     var primaryReplica = new Azure.Network.VirtualNetworkPeering("primary_replica", new()
///     {
///         Name = "aadds-primary-replica",
///         ResourceGroupName = primaryVirtualNetwork.ResourceGroupName,
///         VirtualNetworkName = primaryVirtualNetwork.Name,
///         RemoteVirtualNetworkId = replicaVirtualNetwork.Id,
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         UseRemoteGateways = false,
///     });
///
///     var replicaPrimary = new Azure.Network.VirtualNetworkPeering("replica_primary", new()
///     {
///         Name = "aadds-replica-primary",
///         ResourceGroupName = replicaVirtualNetwork.ResourceGroupName,
///         VirtualNetworkName = replicaVirtualNetwork.Name,
///         RemoteVirtualNetworkId = primaryVirtualNetwork.Id,
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         UseRemoteGateways = false,
///     });
///
///     var replicaVirtualNetworkDnsServers = new Azure.Network.VirtualNetworkDnsServers("replica", new()
///     {
///         VirtualNetworkId = replicaVirtualNetwork.Id,
///         DnsServers = exampleService.InitialReplicaSet.Apply(initialReplicaSet => initialReplicaSet.DomainControllerIpAddresses),
///     });
///
///     var replicaReplicaSet = new Azure.DomainServices.ReplicaSet("replica", new()
///     {
///         DomainServiceId = exampleService.Id,
///         Location = replica.Location,
///         SubnetId = aaddsReplica.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             replicaSubnetNetworkSecurityGroupAssociation,
///             primaryReplica,
///             replicaPrimary,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/domainservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// primary, err := core.NewResourceGroup(ctx, "primary", &core.ResourceGroupArgs{
/// Name: pulumi.String("aadds-primary-rg"),
/// Location: pulumi.String("West Europe"),
/// })
/// if err != nil {
/// return err
/// }
/// primaryVirtualNetwork, err := network.NewVirtualNetwork(ctx, "primary", &network.VirtualNetworkArgs{
/// Name: pulumi.String("aadds-primary-vnet"),
/// Location: primary.Location,
/// ResourceGroupName: primary.Name,
/// AddressSpaces: pulumi.StringArray{
/// pulumi.String("10.0.1.0/16"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// primarySubnet, err := network.NewSubnet(ctx, "primary", &network.SubnetArgs{
/// Name: pulumi.String("aadds-primary-subnet"),
/// ResourceGroupName: primary.Name,
/// VirtualNetworkName: primaryVirtualNetwork.Name,
/// AddressPrefixes: pulumi.StringArray{
/// pulumi.String("10.0.1.0/24"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// primaryNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "primary", &network.NetworkSecurityGroupArgs{
/// Name: pulumi.String("aadds-primary-nsg"),
/// Location: primary.Location,
/// ResourceGroupName: primary.Name,
/// SecurityRules: network.NetworkSecurityGroupSecurityRuleArray{
/// &network.NetworkSecurityGroupSecurityRuleArgs{
/// Name: pulumi.String("AllowSyncWithAzureAD"),
/// Priority: pulumi.Int(101),
/// Direction: pulumi.String("Inbound"),
/// Access: pulumi.String("Allow"),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRange: pulumi.String("*"),
/// DestinationPortRange: pulumi.String("443"),
/// SourceAddressPrefix: pulumi.String("AzureActiveDirectoryDomainServices"),
/// DestinationAddressPrefix: pulumi.String("*"),
/// },
/// &network.NetworkSecurityGroupSecurityRuleArgs{
/// Name: pulumi.String("AllowRD"),
/// Priority: pulumi.Int(201),
/// Direction: pulumi.String("Inbound"),
/// Access: pulumi.String("Allow"),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRange: pulumi.String("*"),
/// DestinationPortRange: pulumi.String("3389"),
/// SourceAddressPrefix: pulumi.String("CorpNetSaw"),
/// DestinationAddressPrefix: pulumi.String("*"),
/// },
/// &network.NetworkSecurityGroupSecurityRuleArgs{
/// Name: pulumi.String("AllowPSRemoting"),
/// Priority: pulumi.Int(301),
/// Direction: pulumi.String("Inbound"),
/// Access: pulumi.String("Allow"),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRange: pulumi.String("*"),
/// DestinationPortRange: pulumi.String("5986"),
/// SourceAddressPrefix: pulumi.String("AzureActiveDirectoryDomainServices"),
/// DestinationAddressPrefix: pulumi.String("*"),
/// },
/// &network.NetworkSecurityGroupSecurityRuleArgs{
/// Name: pulumi.String("AllowLDAPS"),
/// Priority: pulumi.Int(401),
/// Direction: pulumi.String("Inbound"),
/// Access: pulumi.String("Allow"),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRange: pulumi.String("*"),
/// DestinationPortRange: pulumi.String("636"),
/// SourceAddressPrefix: pulumi.String("*"),
/// DestinationAddressPrefix: pulumi.String("*"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// primarySubnetNetworkSecurityGroupAssociation, err := network.NewSubnetNetworkSecurityGroupAssociation(ctx, "primary", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// SubnetId: primarySubnet.ID(),
/// NetworkSecurityGroupId: primaryNetworkSecurityGroup.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// dcAdmins, err := azuread.NewGroup(ctx, "dc_admins", &azuread.GroupArgs{
/// DisplayName: pulumi.String("aad-dc-administrators"),
/// SecurityEnabled: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// admin, err := azuread.NewUser(ctx, "admin", &azuread.UserArgs{
/// UserPrincipalName: pulumi.String("dc-admin@hashicorp-example.net"),
/// DisplayName: pulumi.String("DC Administrator"),
/// Password: pulumi.String("Pa55w0Rd!!1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = azuread.NewGroupMember(ctx, "admin", &azuread.GroupMemberArgs{
/// GroupObjectId: dcAdmins.ObjectId,
/// MemberObjectId: admin.ObjectId,
/// })
/// if err != nil {
/// return err
/// }
/// example, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// ApplicationId: "2565bd9d-da50-47d4-8b85-4c97f669dc36",
/// })
/// if err != nil {
/// return err
/// }
/// aadds, err := core.NewResourceGroup(ctx, "aadds", &core.ResourceGroupArgs{
/// Name: pulumi.String("aadds-rg"),
/// Location: pulumi.String("westeurope"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleService, err := domainservices.NewService(ctx, "example", &domainservices.ServiceArgs{
/// Name: pulumi.String("example-aadds"),
/// Location: aadds.Location,
/// ResourceGroupName: aadds.Name,
/// DomainName: pulumi.String("widgetslogin.net"),
/// Sku: pulumi.String("Enterprise"),
/// FilteredSyncEnabled: pulumi.Bool(false),
/// InitialReplicaSet: &domainservices.ServiceInitialReplicaSetArgs{
/// Location: primaryVirtualNetwork.Location,
/// SubnetId: primarySubnet.ID(),
/// },
/// Notifications: &domainservices.ServiceNotificationsArgs{
/// AdditionalRecipients: pulumi.StringArray{
/// pulumi.String("notifyA@example.net"),
/// pulumi.String("notifyB@example.org"),
/// },
/// NotifyDcAdmins: pulumi.Bool(true),
/// NotifyGlobalAdmins: pulumi.Bool(true),
/// },
/// Security: &domainservices.ServiceSecurityArgs{
/// SyncKerberosPasswords: pulumi.Bool(true),
/// SyncNtlmPasswords: pulumi.Bool(true),
/// SyncOnPremPasswords: pulumi.Bool(true),
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("prod"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// primarySubnetNetworkSecurityGroupAssociation,
/// }))
/// if err != nil {
/// return err
/// }
/// replica, err := core.NewResourceGroup(ctx, "replica", &core.ResourceGroupArgs{
/// Name: pulumi.String("aadds-replica-rg"),
/// Location: pulumi.String("North Europe"),
/// })
/// if err != nil {
/// return err
/// }
/// replicaVirtualNetwork, err := network.NewVirtualNetwork(ctx, "replica", &network.VirtualNetworkArgs{
/// Name: pulumi.String("aadds-replica-vnet"),
/// Location: replica.Location,
/// ResourceGroupName: replica.Name,
/// AddressSpaces: pulumi.StringArray{
/// pulumi.String("10.20.0.0/16"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// aaddsReplica, err := network.NewSubnet(ctx, "aadds_replica", &network.SubnetArgs{
/// Name: pulumi.String("aadds-replica-subnet"),
/// ResourceGroupName: replica.Name,
/// VirtualNetworkName: replicaVirtualNetwork.Name,
/// AddressPrefixes: pulumi.StringArray{
/// pulumi.String("10.20.0.0/24"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// aaddsReplicaNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "aadds_replica", &network.NetworkSecurityGroupArgs{
/// Name: pulumi.String("aadds-replica-nsg"),
/// Location: replica.Location,
/// ResourceGroupName: replica.Name,
/// SecurityRules: network.NetworkSecurityGroupSecurityRuleArray{
/// &network.NetworkSecurityGroupSecurityRuleArgs{
/// Name: pulumi.String("AllowSyncWithAzureAD"),
/// Priority: pulumi.Int(101),
/// Direction: pulumi.String("Inbound"),
/// Access: pulumi.String("Allow"),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRange: pulumi.String("*"),
/// DestinationPortRange: pulumi.String("443"),
/// SourceAddressPrefix: pulumi.String("AzureActiveDirectoryDomainServices"),
/// DestinationAddressPrefix: pulumi.String("*"),
/// },
/// &network.NetworkSecurityGroupSecurityRuleArgs{
/// Name: pulumi.String("AllowRD"),
/// Priority: pulumi.Int(201),
/// Direction: pulumi.String("Inbound"),
/// Access: pulumi.String("Allow"),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRange: pulumi.String("*"),
/// DestinationPortRange: pulumi.String("3389"),
/// SourceAddressPrefix: pulumi.String("CorpNetSaw"),
/// DestinationAddressPrefix: pulumi.String("*"),
/// },
/// &network.NetworkSecurityGroupSecurityRuleArgs{
/// Name: pulumi.String("AllowPSRemoting"),
/// Priority: pulumi.Int(301),
/// Direction: pulumi.String("Inbound"),
/// Access: pulumi.String("Allow"),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRange: pulumi.String("*"),
/// DestinationPortRange: pulumi.String("5986"),
/// SourceAddressPrefix: pulumi.String("AzureActiveDirectoryDomainServices"),
/// DestinationAddressPrefix: pulumi.String("*"),
/// },
/// &network.NetworkSecurityGroupSecurityRuleArgs{
/// Name: pulumi.String("AllowLDAPS"),
/// Priority: pulumi.Int(401),
/// Direction: pulumi.String("Inbound"),
/// Access: pulumi.String("Allow"),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRange: pulumi.String("*"),
/// DestinationPortRange: pulumi.String("636"),
/// SourceAddressPrefix: pulumi.String("*"),
/// DestinationAddressPrefix: pulumi.String("*"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// replicaSubnetNetworkSecurityGroupAssociation, err := network.NewSubnetNetworkSecurityGroupAssociation(ctx, "replica", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// SubnetId: aaddsReplica.ID(),
/// NetworkSecurityGroupId: aaddsReplicaNetworkSecurityGroup.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// primaryReplica, err := network.NewVirtualNetworkPeering(ctx, "primary_replica", &network.VirtualNetworkPeeringArgs{
/// Name: pulumi.String("aadds-primary-replica"),
/// ResourceGroupName: primaryVirtualNetwork.ResourceGroupName,
/// VirtualNetworkName: primaryVirtualNetwork.Name,
/// RemoteVirtualNetworkId: replicaVirtualNetwork.ID(),
/// AllowForwardedTraffic: pulumi.Bool(true),
/// AllowGatewayTransit: pulumi.Bool(false),
/// AllowVirtualNetworkAccess: pulumi.Bool(true),
/// UseRemoteGateways: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// replicaPrimary, err := network.NewVirtualNetworkPeering(ctx, "replica_primary", &network.VirtualNetworkPeeringArgs{
/// Name: pulumi.String("aadds-replica-primary"),
/// ResourceGroupName: replicaVirtualNetwork.ResourceGroupName,
/// VirtualNetworkName: replicaVirtualNetwork.Name,
/// RemoteVirtualNetworkId: primaryVirtualNetwork.ID(),
/// AllowForwardedTraffic: pulumi.Bool(true),
/// AllowGatewayTransit: pulumi.Bool(false),
/// AllowVirtualNetworkAccess: pulumi.Bool(true),
/// UseRemoteGateways: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = network.NewVirtualNetworkDnsServers(ctx, "replica", &network.VirtualNetworkDnsServersArgs{
/// VirtualNetworkId: replicaVirtualNetwork.ID(),
/// DnsServers: pulumi.StringArray(exampleService.InitialReplicaSet.ApplyT(func(initialReplicaSet domainservices.ServiceInitialReplicaSet) (interface{}, error) {
/// return initialReplicaSet.DomainControllerIpAddresses, nil
/// }).(pulumi.Interface{}Output)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = domainservices.NewReplicaSet(ctx, "replica", &domainservices.ReplicaSetArgs{
/// DomainServiceId: exampleService.ID(),
/// Location: replica.Location,
/// SubnetId: aaddsReplica.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// replicaSubnetNetworkSecurityGroupAssociation,
/// primaryReplica,
/// replicaPrimary,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.inputs.NetworkSecurityGroupSecurityRuleArgs;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociation;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociationArgs;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.GroupMember;
/// import com.pulumi.azuread.GroupMemberArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azure.domainservices.Service;
/// import com.pulumi.azure.domainservices.ServiceArgs;
/// import com.pulumi.azure.domainservices.inputs.ServiceInitialReplicaSetArgs;
/// import com.pulumi.azure.domainservices.inputs.ServiceNotificationsArgs;
/// import com.pulumi.azure.domainservices.inputs.ServiceSecurityArgs;
/// import com.pulumi.azure.network.VirtualNetworkPeering;
/// import com.pulumi.azure.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.azure.network.VirtualNetworkDnsServers;
/// import com.pulumi.azure.network.VirtualNetworkDnsServersArgs;
/// import com.pulumi.azure.domainservices.ReplicaSet;
/// import com.pulumi.azure.domainservices.ReplicaSetArgs;
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
///         var primary = new ResourceGroup("primary", ResourceGroupArgs.builder()
///             .name("aadds-primary-rg")
///             .location("West Europe")
///             .build());
///
///         var primaryVirtualNetwork = new VirtualNetwork("primaryVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("aadds-primary-vnet")
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .addressSpaces("10.0.1.0/16")
///             .build());
///
///         var primarySubnet = new Subnet("primarySubnet", SubnetArgs.builder()
///             .name("aadds-primary-subnet")
///             .resourceGroupName(primary.name())
///             .virtualNetworkName(primaryVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var primaryNetworkSecurityGroup = new NetworkSecurityGroup("primaryNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("aadds-primary-nsg")
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .securityRules(
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowSyncWithAzureAD")
///                     .priority(101)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("443")
///                     .sourceAddressPrefix("AzureActiveDirectoryDomainServices")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowRD")
///                     .priority(201)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("3389")
///                     .sourceAddressPrefix("CorpNetSaw")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowPSRemoting")
///                     .priority(301)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("5986")
///                     .sourceAddressPrefix("AzureActiveDirectoryDomainServices")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowLDAPS")
///                     .priority(401)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("636")
///                     .sourceAddressPrefix("*")
///                     .destinationAddressPrefix("*")
///                     .build())
///             .build());
///
///         var primarySubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("primarySubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(primarySubnet.id())
///             .networkSecurityGroupId(primaryNetworkSecurityGroup.id())
///             .build());
///
///         var dcAdmins = new Group("dcAdmins", GroupArgs.builder()
///             .displayName("aad-dc-administrators")
///             .securityEnabled(true)
///             .build());
///
///         var admin = new User("admin", UserArgs.builder()
///             .userPrincipalName("dc-admin@hashicorp-example.net")
///             .displayName("DC Administrator")
///             .password("Pa55w0Rd!!1")
///             .build());
///
///         var adminGroupMember = new GroupMember("adminGroupMember", GroupMemberArgs.builder()
///             .groupObjectId(dcAdmins.objectId())
///             .memberObjectId(admin.objectId())
///             .build());
///
///         var example = new ServicePrincipal("example", ServicePrincipalArgs.builder()
///             .applicationId("2565bd9d-da50-47d4-8b85-4c97f669dc36")
///             .build());
///
///         var aadds = new ResourceGroup("aadds", ResourceGroupArgs.builder()
///             .name("aadds-rg")
///             .location("westeurope")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-aadds")
///             .location(aadds.location())
///             .resourceGroupName(aadds.name())
///             .domainName("widgetslogin.net")
///             .sku("Enterprise")
///             .filteredSyncEnabled(false)
///             .initialReplicaSet(ServiceInitialReplicaSetArgs.builder()
///                 .location(primaryVirtualNetwork.location())
///                 .subnetId(primarySubnet.id())
///                 .build())
///             .notifications(ServiceNotificationsArgs.builder()
///                 .additionalRecipients(
///                     "notifyA@example.net",
///                     "notifyB@example.org")
///                 .notifyDcAdmins(true)
///                 .notifyGlobalAdmins(true)
///                 .build())
///             .security(ServiceSecurityArgs.builder()
///                 .syncKerberosPasswords(true)
///                 .syncNtlmPasswords(true)
///                 .syncOnPremPasswords(true)
///                 .build())
///             .tags(Map.of("Environment", "prod"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     example,
///                     primarySubnetNetworkSecurityGroupAssociation)
///                 .build());
///
///         var replica = new ResourceGroup("replica", ResourceGroupArgs.builder()
///             .name("aadds-replica-rg")
///             .location("North Europe")
///             .build());
///
///         var replicaVirtualNetwork = new VirtualNetwork("replicaVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("aadds-replica-vnet")
///             .location(replica.location())
///             .resourceGroupName(replica.name())
///             .addressSpaces("10.20.0.0/16")
///             .build());
///
///         var aaddsReplica = new Subnet("aaddsReplica", SubnetArgs.builder()
///             .name("aadds-replica-subnet")
///             .resourceGroupName(replica.name())
///             .virtualNetworkName(replicaVirtualNetwork.name())
///             .addressPrefixes("10.20.0.0/24")
///             .build());
///
///         var aaddsReplicaNetworkSecurityGroup = new NetworkSecurityGroup("aaddsReplicaNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("aadds-replica-nsg")
///             .location(replica.location())
///             .resourceGroupName(replica.name())
///             .securityRules(
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowSyncWithAzureAD")
///                     .priority(101)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("443")
///                     .sourceAddressPrefix("AzureActiveDirectoryDomainServices")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowRD")
///                     .priority(201)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("3389")
///                     .sourceAddressPrefix("CorpNetSaw")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowPSRemoting")
///                     .priority(301)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("5986")
///                     .sourceAddressPrefix("AzureActiveDirectoryDomainServices")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowLDAPS")
///                     .priority(401)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("636")
///                     .sourceAddressPrefix("*")
///                     .destinationAddressPrefix("*")
///                     .build())
///             .build());
///
///         var replicaSubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("replicaSubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(aaddsReplica.id())
///             .networkSecurityGroupId(aaddsReplicaNetworkSecurityGroup.id())
///             .build());
///
///         var primaryReplica = new VirtualNetworkPeering("primaryReplica", VirtualNetworkPeeringArgs.builder()
///             .name("aadds-primary-replica")
///             .resourceGroupName(primaryVirtualNetwork.resourceGroupName())
///             .virtualNetworkName(primaryVirtualNetwork.name())
///             .remoteVirtualNetworkId(replicaVirtualNetwork.id())
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .useRemoteGateways(false)
///             .build());
///
///         var replicaPrimary = new VirtualNetworkPeering("replicaPrimary", VirtualNetworkPeeringArgs.builder()
///             .name("aadds-replica-primary")
///             .resourceGroupName(replicaVirtualNetwork.resourceGroupName())
///             .virtualNetworkName(replicaVirtualNetwork.name())
///             .remoteVirtualNetworkId(primaryVirtualNetwork.id())
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .useRemoteGateways(false)
///             .build());
///
///         var replicaVirtualNetworkDnsServers = new VirtualNetworkDnsServers("replicaVirtualNetworkDnsServers", VirtualNetworkDnsServersArgs.builder()
///             .virtualNetworkId(replicaVirtualNetwork.id())
///             .dnsServers(exampleService.initialReplicaSet().applyValue(_initialReplicaSet -> _initialReplicaSet.domainControllerIpAddresses()))
///             .build());
///
///         var replicaReplicaSet = new ReplicaSet("replicaReplicaSet", ReplicaSetArgs.builder()
///             .domainServiceId(exampleService.id())
///             .location(replica.location())
///             .subnetId(aaddsReplica.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     replicaSubnetNetworkSecurityGroupAssociation,
///                     primaryReplica,
///                     replicaPrimary)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: azure:core:ResourceGroup
///     properties:
///       name: aadds-primary-rg
///       location: West Europe
///   primaryVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: primary
///     properties:
///       name: aadds-primary-vnet
///       location: ${primary.location}
///       resourceGroupName: ${primary.name}
///       addressSpaces:
///         - 10.0.1.0/16
///   primarySubnet:
///     type: azure:network:Subnet
///     name: primary
///     properties:
///       name: aadds-primary-subnet
///       resourceGroupName: ${primary.name}
///       virtualNetworkName: ${primaryVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   primaryNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: primary
///     properties:
///       name: aadds-primary-nsg
///       location: ${primary.location}
///       resourceGroupName: ${primary.name}
///       securityRules:
///         - name: AllowSyncWithAzureAD
///           priority: 101
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '443'
///           sourceAddressPrefix: AzureActiveDirectoryDomainServices
///           destinationAddressPrefix: '*'
///         - name: AllowRD
///           priority: 201
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '3389'
///           sourceAddressPrefix: CorpNetSaw
///           destinationAddressPrefix: '*'
///         - name: AllowPSRemoting
///           priority: 301
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '5986'
///           sourceAddressPrefix: AzureActiveDirectoryDomainServices
///           destinationAddressPrefix: '*'
///         - name: AllowLDAPS
///           priority: 401
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '636'
///           sourceAddressPrefix: '*'
///           destinationAddressPrefix: '*'
///   primarySubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: primary
///     properties:
///       subnetId: ${primarySubnet.id}
///       networkSecurityGroupId: ${primaryNetworkSecurityGroup.id}
///   dcAdmins:
///     type: azuread:Group
///     name: dc_admins
///     properties:
///       displayName: aad-dc-administrators
///       securityEnabled: true
///   admin:
///     type: azuread:User
///     properties:
///       userPrincipalName: dc-admin@hashicorp-example.net
///       displayName: DC Administrator
///       password: Pa55w0Rd!!1
///   adminGroupMember:
///     type: azuread:GroupMember
///     name: admin
///     properties:
///       groupObjectId: ${dcAdmins.objectId}
///       memberObjectId: ${admin.objectId}
///   example:
///     type: azuread:ServicePrincipal
///     properties:
///       applicationId: 2565bd9d-da50-47d4-8b85-4c97f669dc36
///   aadds:
///     type: azure:core:ResourceGroup
///     properties:
///       name: aadds-rg
///       location: westeurope
///   exampleService:
///     type: azure:domainservices:Service
///     name: example
///     properties:
///       name: example-aadds
///       location: ${aadds.location}
///       resourceGroupName: ${aadds.name}
///       domainName: widgetslogin.net
///       sku: Enterprise
///       filteredSyncEnabled: false
///       initialReplicaSet:
///         location: ${primaryVirtualNetwork.location}
///         subnetId: ${primarySubnet.id}
///       notifications:
///         additionalRecipients:
///           - notifyA@example.net
///           - notifyB@example.org
///         notifyDcAdmins: true
///         notifyGlobalAdmins: true
///       security:
///         syncKerberosPasswords: true
///         syncNtlmPasswords: true
///         syncOnPremPasswords: true
///       tags:
///         Environment: prod
///     options:
///       dependsOn:
///         - ${example}
///         - ${primarySubnetNetworkSecurityGroupAssociation}
///   replica:
///     type: azure:core:ResourceGroup
///     properties:
///       name: aadds-replica-rg
///       location: North Europe
///   replicaVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: replica
///     properties:
///       name: aadds-replica-vnet
///       location: ${replica.location}
///       resourceGroupName: ${replica.name}
///       addressSpaces:
///         - 10.20.0.0/16
///   aaddsReplica:
///     type: azure:network:Subnet
///     name: aadds_replica
///     properties:
///       name: aadds-replica-subnet
///       resourceGroupName: ${replica.name}
///       virtualNetworkName: ${replicaVirtualNetwork.name}
///       addressPrefixes:
///         - 10.20.0.0/24
///   aaddsReplicaNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: aadds_replica
///     properties:
///       name: aadds-replica-nsg
///       location: ${replica.location}
///       resourceGroupName: ${replica.name}
///       securityRules:
///         - name: AllowSyncWithAzureAD
///           priority: 101
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '443'
///           sourceAddressPrefix: AzureActiveDirectoryDomainServices
///           destinationAddressPrefix: '*'
///         - name: AllowRD
///           priority: 201
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '3389'
///           sourceAddressPrefix: CorpNetSaw
///           destinationAddressPrefix: '*'
///         - name: AllowPSRemoting
///           priority: 301
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '5986'
///           sourceAddressPrefix: AzureActiveDirectoryDomainServices
///           destinationAddressPrefix: '*'
///         - name: AllowLDAPS
///           priority: 401
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '636'
///           sourceAddressPrefix: '*'
///           destinationAddressPrefix: '*'
///   replicaSubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: replica
///     properties:
///       subnetId: ${aaddsReplica.id}
///       networkSecurityGroupId: ${aaddsReplicaNetworkSecurityGroup.id}
///   primaryReplica:
///     type: azure:network:VirtualNetworkPeering
///     name: primary_replica
///     properties:
///       name: aadds-primary-replica
///       resourceGroupName: ${primaryVirtualNetwork.resourceGroupName}
///       virtualNetworkName: ${primaryVirtualNetwork.name}
///       remoteVirtualNetworkId: ${replicaVirtualNetwork.id}
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       useRemoteGateways: false
///   replicaPrimary:
///     type: azure:network:VirtualNetworkPeering
///     name: replica_primary
///     properties:
///       name: aadds-replica-primary
///       resourceGroupName: ${replicaVirtualNetwork.resourceGroupName}
///       virtualNetworkName: ${replicaVirtualNetwork.name}
///       remoteVirtualNetworkId: ${primaryVirtualNetwork.id}
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       useRemoteGateways: false
///   replicaVirtualNetworkDnsServers:
///     type: azure:network:VirtualNetworkDnsServers
///     name: replica
///     properties:
///       virtualNetworkId: ${replicaVirtualNetwork.id}
///       dnsServers: ${exampleService.initialReplicaSet.domainControllerIpAddresses}
///   replicaReplicaSet:
///     type: azure:domainservices:ReplicaSet
///     name: replica
///     properties:
///       domainServiceId: ${exampleService.id}
///       location: ${replica.location}
///       subnetId: ${aaddsReplica.id}
///     options:
///       dependsOn:
///         - ${replicaSubnetNetworkSecurityGroupAssociation}
///         - ${primaryReplica}
///         - ${replicaPrimary}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AAD` - 2021-05-01
///
/// ## Import
///
/// Domain Service Replica Sets can be imported using the resource ID of the parent Domain Service and the Replica Set ID, e.g.
///
/// ```sh
/// $ pulumi import azure:domainservices/replicaSet:ReplicaSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AAD/domainServices/instance1/replicaSets/00000000-0000-0000-0000-000000000000
/// ```
class ReplicaSet extends pulumi.CustomResource {
  /// A list of subnet IP addresses for the domain controllers in this Replica Set, typically two.
  late final pulumi.Output<List<String>> domainControllerIpAddresses;
  /// The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> domainServiceId;
  /// The publicly routable IP address for the domain controllers in this Replica Set.
  late final pulumi.Output<String> externalAccessIpAddress;
  /// The Azure location where this Replica Set should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The current service status for the replica set.
  late final pulumi.Output<String> serviceStatus;
  /// The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [ReplicaSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaSet]. {@macro pulumi_domainservices_replica_set_replica_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaSet(
    String name, {
    ReplicaSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:domainservices/replicaSet:ReplicaSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainControllerIpAddresses = registerOutput<List<String>>('domainControllerIpAddresses');
    this.domainServiceId = registerOutput<String>('domainServiceId');
    this.externalAccessIpAddress = registerOutput<String>('externalAccessIpAddress');
    this.location = registerOutput<String>('location');
    this.serviceStatus = registerOutput<String>('serviceStatus');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
