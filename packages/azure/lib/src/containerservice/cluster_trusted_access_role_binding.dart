import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_trusted_access_role_binding_args.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = new azure.appinsights.Insights("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     applicationType: "example-value",
/// });
/// const test = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     tenantId: exampleAzurermClientConfig.tenantId,
///     skuName: "example-value",
///     softDeleteRetentionDays: "example-value",
/// });
/// const exampleAccessPolicy = new azure.keyvault.AccessPolicy("example", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleAzurermClientConfig.tenantId,
///     objectId: exampleAzurermClientConfig.objectId,
///     keyPermissions: "example-value",
/// });
/// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     dnsPrefix: "acctestaksexample",
///     defaultNodePool: {
///         name: "example-value",
///         nodeCount: "example-value",
///         vmSize: "example-value",
///         upgradeSettings: {
///             maxSurge: "example-value",
///         },
///     },
///     identity: {
///         type: "example-value",
///     },
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     accountTier: "example-value",
///     accountReplicationType: "example-value",
/// });
/// const exampleWorkspace = new azure.machinelearning.Workspace("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     keyVaultId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     applicationInsightsId: example.id,
///     identity: {
///         type: "example-value",
///     },
/// });
/// const exampleClusterTrustedAccessRoleBinding = new azure.containerservice.ClusterTrustedAccessRoleBinding("example", {
///     kubernetesClusterId: exampleKubernetesCluster.id,
///     name: "example",
///     roles: "example-value",
///     sourceResourceId: exampleWorkspace.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.appinsights.Insights("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     application_type="example-value")
/// test = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     tenant_id=example_azurerm_client_config["tenantId"],
///     sku_name="example-value",
///     soft_delete_retention_days="example-value")
/// example_access_policy = azure.keyvault.AccessPolicy("example",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_azurerm_client_config["tenantId"],
///     object_id=example_azurerm_client_config["objectId"],
///     key_permissions="example-value")
/// example_kubernetes_cluster = azure.containerservice.KubernetesCluster("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     dns_prefix="acctestaksexample",
///     default_node_pool={
///         "name": "example-value",
///         "node_count": "example-value",
///         "vm_size": "example-value",
///         "upgrade_settings": {
///             "max_surge": "example-value",
///         },
///     },
///     identity={
///         "type": "example-value",
///     })
/// example_account = azure.storage.Account("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     account_tier="example-value",
///     account_replication_type="example-value")
/// example_workspace = azure.machinelearning.Workspace("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     key_vault_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     application_insights_id=example.id,
///     identity={
///         "type": "example-value",
///     })
/// example_cluster_trusted_access_role_binding = azure.containerservice.ClusterTrustedAccessRoleBinding("example",
///     kubernetes_cluster_id=example_kubernetes_cluster.id,
///     name="example",
///     roles="example-value",
///     source_resource_id=example_workspace.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         ApplicationType = "example-value",
///     });
///
///     var test = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         TenantId = exampleAzurermClientConfig.TenantId,
///         SkuName = "example-value",
///         SoftDeleteRetentionDays = "example-value",
///     });
///
///     var exampleAccessPolicy = new Azure.KeyVault.AccessPolicy("example", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleAzurermClientConfig.TenantId,
///         ObjectId = exampleAzurermClientConfig.ObjectId,
///         KeyPermissions = "example-value",
///     });
///
///     var exampleKubernetesCluster = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         DnsPrefix = "acctestaksexample",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "example-value",
///             NodeCount = "example-value",
///             VmSize = "example-value",
///             UpgradeSettings = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs
///             {
///                 MaxSurge = "example-value",
///             },
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "example-value",
///         },
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AccountTier = "example-value",
///         AccountReplicationType = "example-value",
///     });
///
///     var exampleWorkspace = new Azure.MachineLearning.Workspace("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         KeyVaultId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         ApplicationInsightsId = example.Id,
///         Identity = new Azure.MachineLearning.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "example-value",
///         },
///     });
///
///     var exampleClusterTrustedAccessRoleBinding = new Azure.ContainerService.ClusterTrustedAccessRoleBinding("example", new()
///     {
///         KubernetesClusterId = exampleKubernetesCluster.Id,
///         Name = "example",
///         Roles = "example-value",
///         SourceResourceId = exampleWorkspace.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/machinelearning"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			ApplicationType:   pulumi.String("example-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("example"),
/// 			Location:                exampleResourceGroup.Location,
/// 			ResourceGroupName:       exampleResourceGroup.Name,
/// 			TenantId:                pulumi.Any(exampleAzurermClientConfig.TenantId),
/// 			SkuName:                 pulumi.String("example-value"),
/// 			SoftDeleteRetentionDays: pulumi.Int("example-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "example", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId:     exampleKeyVault.ID(),
/// 			TenantId:       pulumi.Any(exampleAzurermClientConfig.TenantId),
/// 			ObjectId:       pulumi.Any(exampleAzurermClientConfig.ObjectId),
/// 			KeyPermissions: pulumi.StringArray("example-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKubernetesCluster, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			DnsPrefix:         pulumi.String("acctestaksexample"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("example-value"),
/// 				NodeCount: pulumi.Int("example-value"),
/// 				VmSize:    pulumi.String("example-value"),
/// 				UpgradeSettings: &containerservice.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs{
/// 					MaxSurge: pulumi.String("example-value"),
/// 				},
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("example-value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			Location:               exampleResourceGroup.Location,
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			AccountTier:            pulumi.String("example-value"),
/// 			AccountReplicationType: pulumi.String("example-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := machinelearning.NewWorkspace(ctx, "example", &machinelearning.WorkspaceArgs{
/// 			Name:                  pulumi.String("example"),
/// 			Location:              exampleResourceGroup.Location,
/// 			ResourceGroupName:     exampleResourceGroup.Name,
/// 			KeyVaultId:            exampleKeyVault.ID(),
/// 			StorageAccountId:      exampleAccount.ID(),
/// 			ApplicationInsightsId: example.ID(),
/// 			Identity: &machinelearning.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("example-value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewClusterTrustedAccessRoleBinding(ctx, "example", &containerservice.ClusterTrustedAccessRoleBindingArgs{
/// 			KubernetesClusterId: exampleKubernetesCluster.ID(),
/// 			Name:                pulumi.String("example"),
/// 			Roles:               pulumi.StringArray("example-value"),
/// 			SourceResourceId:    exampleWorkspace.ID(),
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
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.containerservice.KubernetesCluster;
/// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.machinelearning.Workspace;
/// import com.pulumi.azure.machinelearning.WorkspaceArgs;
/// import com.pulumi.azure.machinelearning.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.containerservice.ClusterTrustedAccessRoleBinding;
/// import com.pulumi.azure.containerservice.ClusterTrustedAccessRoleBindingArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var example = new Insights("example", InsightsArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .applicationType("example-value")
///             .build());
///
///         final var test = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .tenantId(exampleAzurermClientConfig.tenantId())
///             .skuName("example-value")
///             .softDeleteRetentionDays("example-value")
///             .build());
///
///         var exampleAccessPolicy = new AccessPolicy("exampleAccessPolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleAzurermClientConfig.tenantId())
///             .objectId(exampleAzurermClientConfig.objectId())
///             .keyPermissions("example-value")
///             .build());
///
///         var exampleKubernetesCluster = new KubernetesCluster("exampleKubernetesCluster", KubernetesClusterArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .dnsPrefix("acctestaksexample")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("example-value")
///                 .nodeCount("example-value")
///                 .vmSize("example-value")
///                 .upgradeSettings(KubernetesClusterDefaultNodePoolUpgradeSettingsArgs.builder()
///                     .maxSurge("example-value")
///                     .build())
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("example-value")
///                 .build())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .accountTier("example-value")
///             .accountReplicationType("example-value")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .keyVaultId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .applicationInsightsId(example.id())
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("example-value")
///                 .build())
///             .build());
///
///         var exampleClusterTrustedAccessRoleBinding = new ClusterTrustedAccessRoleBinding("exampleClusterTrustedAccessRoleBinding", ClusterTrustedAccessRoleBindingArgs.builder()
///             .kubernetesClusterId(exampleKubernetesCluster.id())
///             .name("example")
///             .roles("example-value")
///             .sourceResourceId(exampleWorkspace.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:appinsights:Insights
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       applicationType: example-value
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       tenantId: ${exampleAzurermClientConfig.tenantId}
///       skuName: example-value
///       softDeleteRetentionDays: example-value
///   exampleAccessPolicy:
///     type: azure:keyvault:AccessPolicy
///     name: example
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleAzurermClientConfig.tenantId}
///       objectId: ${exampleAzurermClientConfig.objectId}
///       keyPermissions: example-value
///   exampleKubernetesCluster:
///     type: azure:containerservice:KubernetesCluster
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       dnsPrefix: acctestaksexample
///       defaultNodePool:
///         name: example-value
///         nodeCount: example-value
///         vmSize: example-value
///         upgradeSettings:
///           maxSurge: example-value
///       identity:
///         type: example-value
///   exampleWorkspace:
///     type: azure:machinelearning:Workspace
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       keyVaultId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       applicationInsightsId: ${example.id}
///       identity:
///         type: example-value
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       accountTier: example-value
///       accountReplicationType: example-value
///   exampleClusterTrustedAccessRoleBinding:
///     type: azure:containerservice:ClusterTrustedAccessRoleBinding
///     name: example
///     properties:
///       kubernetesClusterId: ${exampleKubernetesCluster.id}
///       name: example
///       roles: example-value
///       sourceResourceId: ${exampleWorkspace.id}
/// variables:
///   test:
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
/// * `Microsoft.ContainerService` - 2025-07-01
///
/// ## Import
///
/// An existing Kubernetes Cluster Trusted Access Role Binding can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/clusterTrustedAccessRoleBinding:ClusterTrustedAccessRoleBinding example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{managedClusterName}/trustedAccessRoleBindings/{trustedAccessRoleBindingName}
/// ```
///
/// * Where `{subscriptionId}` is the ID of the Azure Subscription where the Kubernetes Cluster Trusted Access Role Binding exists. For example `12345678-1234-9876-4563-123456789012`.
/// * Where `{resourceGroupName}` is the name of Resource Group where this Kubernetes Cluster Trusted Access Role Binding exists. For example `example-resource-group`.
/// * Where `{managedClusterName}` is the name of the Managed Cluster. For example `managedClusterValue`.
/// * Where `{trustedAccessRoleBindingName}` is the name of the Trusted Access Role Binding. For example `trustedAccessRoleBindingValue`.
class ClusterTrustedAccessRoleBinding extends pulumi.CustomResource {
  /// Specifies the Kubernetes Cluster Id within which this Kubernetes Cluster Trusted Access Role Binding should exist. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  late final pulumi.Output<String> kubernetesClusterId;
  /// Specifies the name of this Kubernetes Cluster Trusted Access Role Binding. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  late final pulumi.Output<String> name;
  /// A list of roles to bind, each item is a resource type qualified role name.
  late final pulumi.Output<List<String>> roles;
  /// The ARM resource ID of source resource that trusted access is configured for. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  late final pulumi.Output<String> sourceResourceId;

  /// Creates a new [ClusterTrustedAccessRoleBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterTrustedAccessRoleBinding]. {@macro pulumi_containerservice_cluster_trusted_access_role_binding_cluster_trusted_access_role_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterTrustedAccessRoleBinding(
    String name, {
    ClusterTrustedAccessRoleBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/clusterTrustedAccessRoleBinding:ClusterTrustedAccessRoleBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    this.name = registerOutput<String>('name');
    this.roles = registerOutput<List<String>>('roles');
    this.sourceResourceId = registerOutput<String>('sourceResourceId');
  }
}
