import 'package:pulumi/pulumi.dart';
import '../azure_node_pool_autoscaling/azure_node_pool_autoscaling.dart';
import '../azure_node_pool_config/azure_node_pool_config.dart';
import '../azure_node_pool_management/azure_node_pool_management.dart';
import '../azure_node_pool_max_pods_constraint/azure_node_pool_max_pods_constraint.dart';
import 'azure_node_pool_args.dart';

/// An Anthos node pool running on Azure.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_azure_node_pool
/// A basic example of a containerazure azure node pool
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const versions = gcp.container.getAzureVersions({
/// project: "my-project-name",
/// location: "us-west1",
/// });
/// const basic = new gcp.container.AzureClient("basic", {
/// applicationId: "12345678-1234-1234-1234-123456789111",
/// location: "us-west1",
/// name: "client-name",
/// tenantId: "12345678-1234-1234-1234-123456789111",
/// project: "my-project-name",
/// });
/// const primary = new gcp.container.AzureCluster("primary", {
/// authorization: {
/// adminUsers: [{
/// username: "mmv2@google.com",
/// }],
/// },
/// azureRegion: "westus2",
/// client: pulumi.interpolate`projects/my-project-number/locations/us-west1/azureClients/${basic.name}`,
/// controlPlane: {
/// sshConfig: {
/// authorizedKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
/// },
/// subnetId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
/// version: versions.then(versions => versions.validVersions?.[0]),
/// },
/// fleet: {
/// project: "my-project-number",
/// },
/// location: "us-west1",
/// name: "name",
/// networking: {
/// podAddressCidrBlocks: ["10.200.0.0/16"],
/// serviceAddressCidrBlocks: ["10.32.0.0/24"],
/// virtualNetworkId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
/// },
/// resourceGroupId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
/// project: "my-project-name",
/// });
/// const primaryAzureNodePool = new gcp.container.AzureNodePool("primary", {
/// autoscaling: {
/// maxNodeCount: 3,
/// minNodeCount: 2,
/// },
/// cluster: primary.name,
/// config: {
/// sshConfig: {
/// authorizedKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
/// },
/// proxyConfig: {
/// resourceGroupId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
/// secretId: "https://my--dev-keyvault.vault.azure.net/secrets/my--dev-secret/0000000000000000000000000000000000",
/// },
/// rootVolume: {
/// sizeGib: 32,
/// },
/// tags: {
/// owner: "mmv2",
/// },
/// labels: {
/// key_one: "label_one",
/// },
/// vmSize: "Standard_DS2_v2",
/// },
/// location: "us-west1",
/// maxPodsConstraint: {
/// maxPodsPerNode: 110,
/// },
/// name: "node-pool-name",
/// subnetId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
/// version: versions.then(versions => versions.validVersions?.[0]),
/// annotations: {
/// "annotation-one": "value-one",
/// },
/// management: {
/// autoRepair: true,
/// },
/// project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// versions = gcp.container.get_azure_versions(project="my-project-name",
/// location="us-west1")
/// basic = gcp.container.AzureClient("basic",
/// application_id="12345678-1234-1234-1234-123456789111",
/// location="us-west1",
/// name="client-name",
/// tenant_id="12345678-1234-1234-1234-123456789111",
/// project="my-project-name")
/// primary = gcp.container.AzureCluster("primary",
/// authorization={
/// "admin_users": [{
/// "username": "mmv2@google.com",
/// }],
/// },
/// azure_region="westus2",
/// client=basic.name.apply(lambda name: f"projects/my-project-number/locations/us-west1/azureClients/{name}"),
/// control_plane={
/// "ssh_config": {
/// "authorized_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
/// },
/// "subnet_id": "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
/// "version": versions.valid_versions[0],
/// },
/// fleet={
/// "project": "my-project-number",
/// },
/// location="us-west1",
/// name="name",
/// networking={
/// "pod_address_cidr_blocks": ["10.200.0.0/16"],
/// "service_address_cidr_blocks": ["10.32.0.0/24"],
/// "virtual_network_id": "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
/// },
/// resource_group_id="/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
/// project="my-project-name")
/// primary_azure_node_pool = gcp.container.AzureNodePool("primary",
/// autoscaling={
/// "max_node_count": 3,
/// "min_node_count": 2,
/// },
/// cluster=primary.name,
/// config={
/// "ssh_config": {
/// "authorized_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
/// },
/// "proxy_config": {
/// "resource_group_id": "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
/// "secret_id": "https://my--dev-keyvault.vault.azure.net/secrets/my--dev-secret/0000000000000000000000000000000000",
/// },
/// "root_volume": {
/// "size_gib": 32,
/// },
/// "tags": {
/// "owner": "mmv2",
/// },
/// "labels": {
/// "key_one": "label_one",
/// },
/// "vm_size": "Standard_DS2_v2",
/// },
/// location="us-west1",
/// max_pods_constraint={
/// "max_pods_per_node": 110,
/// },
/// name="node-pool-name",
/// subnet_id="/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
/// version=versions.valid_versions[0],
/// annotations={
/// "annotation-one": "value-one",
/// },
/// management={
/// "auto_repair": True,
/// },
/// project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var versions = Gcp.Container.GetAzureVersions.Invoke(new()
/// {
/// Project = "my-project-name",
/// Location = "us-west1",
/// });
///
/// var basic = new Gcp.Container.AzureClient("basic", new()
/// {
/// ApplicationId = "12345678-1234-1234-1234-123456789111",
/// Location = "us-west1",
/// Name = "client-name",
/// TenantId = "12345678-1234-1234-1234-123456789111",
/// Project = "my-project-name",
/// });
///
/// var primary = new Gcp.Container.AzureCluster("primary", new()
/// {
/// Authorization = new Gcp.Container.Inputs.AzureClusterAuthorizationArgs
/// {
/// AdminUsers = new[]
/// {
/// new Gcp.Container.Inputs.AzureClusterAuthorizationAdminUserArgs
/// {
/// Username = "mmv2@google.com",
/// },
/// },
/// },
/// AzureRegion = "westus2",
/// Client = basic.Name.Apply(name => $"projects/my-project-number/locations/us-west1/azureClients/{name}"),
/// ControlPlane = new Gcp.Container.Inputs.AzureClusterControlPlaneArgs
/// {
/// SshConfig = new Gcp.Container.Inputs.AzureClusterControlPlaneSshConfigArgs
/// {
/// AuthorizedKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
/// },
/// SubnetId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
/// Version = versions.Apply(getAzureVersionsResult => getAzureVersionsResult.ValidVersions[0]),
/// },
/// Fleet = new Gcp.Container.Inputs.AzureClusterFleetArgs
/// {
/// Project = "my-project-number",
/// },
/// Location = "us-west1",
/// Name = "name",
/// Networking = new Gcp.Container.Inputs.AzureClusterNetworkingArgs
/// {
/// PodAddressCidrBlocks = new[]
/// {
/// "10.200.0.0/16",
/// },
/// ServiceAddressCidrBlocks = new[]
/// {
/// "10.32.0.0/24",
/// },
/// VirtualNetworkId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
/// },
/// ResourceGroupId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
/// Project = "my-project-name",
/// });
///
/// var primaryAzureNodePool = new Gcp.Container.AzureNodePool("primary", new()
/// {
/// Autoscaling = new Gcp.Container.Inputs.AzureNodePoolAutoscalingArgs
/// {
/// MaxNodeCount = 3,
/// MinNodeCount = 2,
/// },
/// Cluster = primary.Name,
/// Config = new Gcp.Container.Inputs.AzureNodePoolConfigArgs
/// {
/// SshConfig = new Gcp.Container.Inputs.AzureNodePoolConfigSshConfigArgs
/// {
/// AuthorizedKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
/// },
/// ProxyConfig = new Gcp.Container.Inputs.AzureNodePoolConfigProxyConfigArgs
/// {
/// ResourceGroupId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
/// SecretId = "https://my--dev-keyvault.vault.azure.net/secrets/my--dev-secret/0000000000000000000000000000000000",
/// },
/// RootVolume = new Gcp.Container.Inputs.AzureNodePoolConfigRootVolumeArgs
/// {
/// SizeGib = 32,
/// },
/// Tags =
/// {
/// { "owner", "mmv2" },
/// },
/// Labels =
/// {
/// { "key_one", "label_one" },
/// },
/// VmSize = "Standard_DS2_v2",
/// },
/// Location = "us-west1",
/// MaxPodsConstraint = new Gcp.Container.Inputs.AzureNodePoolMaxPodsConstraintArgs
/// {
/// MaxPodsPerNode = 110,
/// },
/// Name = "node-pool-name",
/// SubnetId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
/// Version = versions.Apply(getAzureVersionsResult => getAzureVersionsResult.ValidVersions[0]),
/// Annotations =
/// {
/// { "annotation-one", "value-one" },
/// },
/// Management = new Gcp.Container.Inputs.AzureNodePoolManagementArgs
/// {
/// AutoRepair = true,
/// },
/// Project = "my-project-name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// versions, err := container.GetAzureVersions(ctx, &container.GetAzureVersionsArgs{
/// Project:  pulumi.StringRef("my-project-name"),
/// Location: pulumi.StringRef("us-west1"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// basic, err := container.NewAzureClient(ctx, "basic", &container.AzureClientArgs{
/// ApplicationId: pulumi.String("12345678-1234-1234-1234-123456789111"),
/// Location:      pulumi.String("us-west1"),
/// Name:          pulumi.String("client-name"),
/// TenantId:      pulumi.String("12345678-1234-1234-1234-123456789111"),
/// Project:       pulumi.String("my-project-name"),
/// })
/// if err != nil {
/// return err
/// }
/// primary, err := container.NewAzureCluster(ctx, "primary", &container.AzureClusterArgs{
/// Authorization: &container.AzureClusterAuthorizationArgs{
/// AdminUsers: container.AzureClusterAuthorizationAdminUserArray{
/// &container.AzureClusterAuthorizationAdminUserArgs{
/// Username: pulumi.String("mmv2@google.com"),
/// },
/// },
/// },
/// AzureRegion: pulumi.String("westus2"),
/// Client: basic.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("projects/my-project-number/locations/us-west1/azureClients/%v", name), nil
/// }).(pulumi.StringOutput),
/// ControlPlane: &container.AzureClusterControlPlaneArgs{
/// SshConfig: &container.AzureClusterControlPlaneSshConfigArgs{
/// AuthorizedKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers"),
/// },
/// SubnetId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default"),
/// Version:  pulumi.String(versions.ValidVersions[0]),
/// },
/// Fleet: &container.AzureClusterFleetArgs{
/// Project: pulumi.String("my-project-number"),
/// },
/// Location: pulumi.String("us-west1"),
/// Name:     pulumi.String("name"),
/// Networking: &container.AzureClusterNetworkingArgs{
/// PodAddressCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.200.0.0/16"),
/// },
/// ServiceAddressCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.32.0.0/24"),
/// },
/// VirtualNetworkId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet"),
/// },
/// ResourceGroupId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster"),
/// Project:         pulumi.String("my-project-name"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = container.NewAzureNodePool(ctx, "primary", &container.AzureNodePoolArgs{
/// Autoscaling: &container.AzureNodePoolAutoscalingArgs{
/// MaxNodeCount: pulumi.Int(3),
/// MinNodeCount: pulumi.Int(2),
/// },
/// Cluster: primary.Name,
/// Config: &container.AzureNodePoolConfigArgs{
/// SshConfig: &container.AzureNodePoolConfigSshConfigArgs{
/// AuthorizedKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers"),
/// },
/// ProxyConfig: &container.AzureNodePoolConfigProxyConfigArgs{
/// ResourceGroupId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster"),
/// SecretId:        pulumi.String("https://my--dev-keyvault.vault.azure.net/secrets/my--dev-secret/0000000000000000000000000000000000"),
/// },
/// RootVolume: &container.AzureNodePoolConfigRootVolumeArgs{
/// SizeGib: pulumi.Int(32),
/// },
/// Tags: pulumi.StringMap{
/// "owner": pulumi.String("mmv2"),
/// },
/// Labels: pulumi.StringMap{
/// "key_one": pulumi.String("label_one"),
/// },
/// VmSize: pulumi.String("Standard_DS2_v2"),
/// },
/// Location: pulumi.String("us-west1"),
/// MaxPodsConstraint: &container.AzureNodePoolMaxPodsConstraintArgs{
/// MaxPodsPerNode: pulumi.Int(110),
/// },
/// Name:     pulumi.String("node-pool-name"),
/// SubnetId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default"),
/// Version:  pulumi.String(versions.ValidVersions[0]),
/// Annotations: pulumi.StringMap{
/// "annotation-one": pulumi.String("value-one"),
/// },
/// Management: &container.AzureNodePoolManagementArgs{
/// AutoRepair: pulumi.Bool(true),
/// },
/// Project: pulumi.String("my-project-name"),
/// })
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
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAzureVersionsArgs;
/// import com.pulumi.gcp.container.AzureClient;
/// import com.pulumi.gcp.container.AzureClientArgs;
/// import com.pulumi.gcp.container.AzureCluster;
/// import com.pulumi.gcp.container.AzureClusterArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterAuthorizationArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterControlPlaneArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterControlPlaneSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterFleetArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterNetworkingArgs;
/// import com.pulumi.gcp.container.AzureNodePool;
/// import com.pulumi.gcp.container.AzureNodePoolArgs;
/// import com.pulumi.gcp.container.inputs.AzureNodePoolAutoscalingArgs;
/// import com.pulumi.gcp.container.inputs.AzureNodePoolConfigArgs;
/// import com.pulumi.gcp.container.inputs.AzureNodePoolConfigSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AzureNodePoolConfigProxyConfigArgs;
/// import com.pulumi.gcp.container.inputs.AzureNodePoolConfigRootVolumeArgs;
/// import com.pulumi.gcp.container.inputs.AzureNodePoolMaxPodsConstraintArgs;
/// import com.pulumi.gcp.container.inputs.AzureNodePoolManagementArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var versions = ContainerFunctions.getAzureVersions(GetAzureVersionsArgs.builder()
/// .project("my-project-name")
/// .location("us-west1")
/// .build());
///
/// var basic = new AzureClient("basic", AzureClientArgs.builder()
/// .applicationId("12345678-1234-1234-1234-123456789111")
/// .location("us-west1")
/// .name("client-name")
/// .tenantId("12345678-1234-1234-1234-123456789111")
/// .project("my-project-name")
/// .build());
///
/// var primary = new AzureCluster("primary", AzureClusterArgs.builder()
/// .authorization(AzureClusterAuthorizationArgs.builder()
/// .adminUsers(AzureClusterAuthorizationAdminUserArgs.builder()
/// .username("mmv2@google.com")
/// .build())
/// .build())
/// .azureRegion("westus2")
/// .client(basic.name().applyValue(_name -> String.format("projects/my-project-number/locations/us-west1/azureClients/%s", _name)))
/// .controlPlane(AzureClusterControlPlaneArgs.builder()
/// .sshConfig(AzureClusterControlPlaneSshConfigArgs.builder()
/// .authorizedKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers")
/// .build())
/// .subnetId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default")
/// .version(versions.validVersions()[0])
/// .build())
/// .fleet(AzureClusterFleetArgs.builder()
/// .project("my-project-number")
/// .build())
/// .location("us-west1")
/// .name("name")
/// .networking(AzureClusterNetworkingArgs.builder()
/// .podAddressCidrBlocks("10.200.0.0/16")
/// .serviceAddressCidrBlocks("10.32.0.0/24")
/// .virtualNetworkId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet")
/// .build())
/// .resourceGroupId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster")
/// .project("my-project-name")
/// .build());
///
/// var primaryAzureNodePool = new AzureNodePool("primaryAzureNodePool", AzureNodePoolArgs.builder()
/// .autoscaling(AzureNodePoolAutoscalingArgs.builder()
/// .maxNodeCount(3)
/// .minNodeCount(2)
/// .build())
/// .cluster(primary.name())
/// .config(AzureNodePoolConfigArgs.builder()
/// .sshConfig(AzureNodePoolConfigSshConfigArgs.builder()
/// .authorizedKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers")
/// .build())
/// .proxyConfig(AzureNodePoolConfigProxyConfigArgs.builder()
/// .resourceGroupId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster")
/// .secretId("https://my--dev-keyvault.vault.azure.net/secrets/my--dev-secret/0000000000000000000000000000000000")
/// .build())
/// .rootVolume(AzureNodePoolConfigRootVolumeArgs.builder()
/// .sizeGib(32)
/// .build())
/// .tags(Map.of("owner", "mmv2"))
/// .labels(Map.of("key_one", "label_one"))
/// .vmSize("Standard_DS2_v2")
/// .build())
/// .location("us-west1")
/// .maxPodsConstraint(AzureNodePoolMaxPodsConstraintArgs.builder()
/// .maxPodsPerNode(110)
/// .build())
/// .name("node-pool-name")
/// .subnetId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default")
/// .version(versions.validVersions()[0])
/// .annotations(Map.of("annotation-one", "value-one"))
/// .management(AzureNodePoolManagementArgs.builder()
/// .autoRepair(true)
/// .build())
/// .project("my-project-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: gcp:container:AzureCluster
/// properties:
/// authorization:
/// adminUsers:
/// - username: mmv2@google.com
/// azureRegion: westus2
/// client: projects/my-project-number/locations/us-west1/azureClients/${basic.name}
/// controlPlane:
/// sshConfig:
/// authorizedKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers
/// subnetId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default
/// version: ${versions.validVersions[0]}
/// fleet:
/// project: my-project-number
/// location: us-west1
/// name: name
/// networking:
/// podAddressCidrBlocks:
/// - 10.200.0.0/16
/// serviceAddressCidrBlocks:
/// - 10.32.0.0/24
/// virtualNetworkId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet
/// resourceGroupId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster
/// project: my-project-name
/// basic:
/// type: gcp:container:AzureClient
/// properties:
/// applicationId: 12345678-1234-1234-1234-123456789111
/// location: us-west1
/// name: client-name
/// tenantId: 12345678-1234-1234-1234-123456789111
/// project: my-project-name
/// primaryAzureNodePool:
/// type: gcp:container:AzureNodePool
/// name: primary
/// properties:
/// autoscaling:
/// maxNodeCount: 3
/// minNodeCount: 2
/// cluster: ${primary.name}
/// config:
/// sshConfig:
/// authorizedKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers
/// proxyConfig:
/// resourceGroupId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster
/// secretId: https://my--dev-keyvault.vault.azure.net/secrets/my--dev-secret/0000000000000000000000000000000000
/// rootVolume:
/// sizeGib: 32
/// tags:
/// owner: mmv2
/// labels:
/// key_one: label_one
/// vmSize: Standard_DS2_v2
/// location: us-west1
/// maxPodsConstraint:
/// maxPodsPerNode: 110
/// name: node-pool-name
/// subnetId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default
/// version: ${versions.validVersions[0]}
/// annotations:
/// annotation-one: value-one
/// management:
/// autoRepair: true
/// project: my-project-name
/// variables:
/// versions:
/// fn::invoke:
/// function: gcp:container:getAzureVersions
/// arguments:
/// project: my-project-name
/// location: us-west1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// NodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/azureClusters/{{cluster}}/azureNodePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{name}}`
///
/// * `{{location}}/{{cluster}}/{{name}}`
///
/// When using the `pulumi import` command, NodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/azureNodePool:AzureNodePool default projects/{{project}}/locations/{{location}}/azureClusters/{{cluster}}/azureNodePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureNodePool:AzureNodePool default {{project}}/{{location}}/{{cluster}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureNodePool:AzureNodePool default {{location}}/{{cluster}}/{{name}}
/// ```
class AzureNodePool extends CustomResource {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Autoscaler configuration for this node pool.
  late final Output<AzureNodePoolAutoscaling> autoscaling;

  /// Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  late final Output<String> azureAvailabilityZone;

  /// The azureCluster for the resource
  late final Output<String> cluster;

  /// The node configuration of the node pool.
  late final Output<AzureNodePoolConfig> config;

  /// Output only. The time at which this node pool was created.
  late final Output<String> createTime;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// The location for the resource
  late final Output<String> location;

  /// The Management configuration for this node pool.
  late final Output<AzureNodePoolManagement> management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  late final Output<AzureNodePoolMaxPodsConstraint> maxPodsConstraint;

  /// The name of this resource.
  late final Output<String> name;

  /// The project for the resource
  late final Output<String> project;

  /// Output only. If set, there are currently pending changes to the node pool.
  late final Output<bool> reconciling;

  /// Output only. The current state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  late final Output<String> state;

  /// The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  late final Output<String> subnetId;

  /// Output only. A globally unique identifier for the node pool.
  late final Output<String> uid;

  /// Output only. The time at which this node pool was last updated.
  late final Output<String> updateTime;

  /// The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  late final Output<String> version;

  AzureNodePool(
    String name, {
    AzureNodePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:container/azureNodePool:AzureNodePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>?>();
    this.autoscaling = Output.createUnknown<AzureNodePoolAutoscaling>();
    this.azureAvailabilityZone = Output.createUnknown<String>();
    this.cluster = Output.createUnknown<String>();
    this.config = Output.createUnknown<AzureNodePoolConfig>();
    this.createTime = Output.createUnknown<String>();
    this.effectiveAnnotations = Output.createUnknown<Map<String, String>>();
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.management = Output.createUnknown<AzureNodePoolManagement>();
    this.maxPodsConstraint =
        Output.createUnknown<AzureNodePoolMaxPodsConstraint>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.subnetId = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.version = Output.createUnknown<String>();
  }
}
