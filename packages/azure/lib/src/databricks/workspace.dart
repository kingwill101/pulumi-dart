import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_custom_parameters.dart';
import 'workspace_enhanced_security_compliance.dart';
import 'workspace_managed_disk_identity.dart';
import 'workspace_storage_account_identity.dart';

/// Manages a Databricks Workspace
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
/// const exampleWorkspace = new azure.databricks.Workspace("example", {
///     name: "databricks-test",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
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
///     name="example-resources",
///     location="West Europe")
/// example_workspace = azure.databricks.Workspace("example",
///     name="databricks-test",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleWorkspace = new Azure.DataBricks.Workspace("example", new()
///     {
///         Name = "databricks-test",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
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
/// 		_, err = databricks.NewWorkspace(ctx, "example", &databricks.WorkspaceArgs{
/// 			Name:              pulumi.String("databricks-test"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("standard"),
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
/// import com.pulumi.azure.databricks.Workspace;
/// import com.pulumi.azure.databricks.WorkspaceArgs;
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
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("databricks-test")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
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
///       name: example-resources
///       location: West Europe
///   exampleWorkspace:
///     type: azure:databricks:Workspace
///     name: example
///     properties:
///       name: databricks-test
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///       tags:
///         Environment: Production
/// ```
///
///
/// > **Note:** You can use the Databricks Terraform Provider to manage resources within the Databricks Workspace.
///
/// ## Example HCL Configurations
///
/// * Databricks Workspace Secure Connectivity Cluster with Load Balancer
/// * Databricks Workspace Secure Connectivity Cluster without Load Balancer
/// * Databricks Workspace with Private Endpoint
/// * Databricks Workspace with Private Endpoint, Customer Managed Keys for Managed Services and Databricks File System Customer Managed Keys
/// * Databricks Workspace with Root Databricks File System Customer Managed Keys
/// * Databricks Workspace with Root Databricks File System Customer Managed Keys in a Different Subscription
/// * Databricks Workspace with Customer Managed Keys for Managed Services
/// * Databricks Workspace with Customer Managed Keys for Managed Services with Key Vault and Key in a Different Subscription
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Databricks` - 2024-05-01, 2022-10-01-preview
///
/// * `Microsoft.Network` - 2025-01-01, 2023-09-01
///
/// ## Import
///
/// Databrick Workspaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:databricks/workspace:Workspace workspace1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Databricks/workspaces/workspace1
/// ```
class Workspace extends pulumi.CustomResource {
  /// Access Connector ID to use when default storage account firewall is enabled.
  ///
  /// > **Note:** The `access_connector_id` field is only required if `default_storage_firewall_enabled` is set to `true`.
  late final pulumi.Output<String?> accessConnectorId;
  /// A `custom_parameters` block as documented below.
  late final pulumi.Output<WorkspaceCustomParameters> customParameters;
  /// Is the workspace enabled for customer managed key encryption? If `true` this enables the Managed Identity for the managed storage account. Possible values are `true` or `false`. Defaults to `false`. This field is only valid if the Databricks Workspace `sku` is set to `premium`.
  late final pulumi.Output<bool?> customerManagedKeyEnabled;
  /// Disallow public access to default storage account. Defaults to `false`.
  late final pulumi.Output<bool?> defaultStorageFirewallEnabled;
  /// The ID of Managed Disk Encryption Set created by the Databricks Workspace.
  late final pulumi.Output<String> diskEncryptionSetId;
  /// An `enhanced_security_compliance` block as documented below. This feature is only valid if `sku` is set to `premium`.
  late final pulumi.Output<WorkspaceEnhancedSecurityCompliance?> enhancedSecurityCompliance;
  /// Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? Possible values are `true` or `false`. Defaults to `false`. This field is only valid if the Databricks Workspace `sku` is set to `premium`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> infrastructureEncryptionEnabled;
  /// Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace with managed virtual network. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> loadBalancerBackendAddressPoolId;
  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Resource ID of the Key Vault which contains the `managed_disk_cmk_key_vault_key_id` key.
  ///
  /// > **Note:** The `managed_disk_cmk_key_vault_id` field is only required if the Key Vault exists in a different subscription than the Databricks Workspace. If the `managed_disk_cmk_key_vault_id` field is not specified it is assumed that the `managed_disk_cmk_key_vault_key_id` is hosted in the same subscriptioin as the Databricks Workspace.
  ///
  /// > **Note:** If you are using multiple service principals to execute Terraform across subscriptions you will need to add an additional `azure.keyvault.AccessPolicy` resource granting the service principal access to the key vault in that subscription.
  late final pulumi.Output<String?> managedDiskCmkKeyVaultId;
  /// Customer managed encryption properties for the Databricks Workspace managed disks.
  late final pulumi.Output<String?> managedDiskCmkKeyVaultKeyId;
  /// Whether customer managed keys for disk encryption will automatically be rotated to the latest version.
  late final pulumi.Output<bool?> managedDiskCmkRotationToLatestVersionEnabled;
  /// A `managed_disk_identity` block as documented below.
  late final pulumi.Output<List<WorkspaceManagedDiskIdentity>> managedDiskIdentities;
  /// The ID of the Managed Resource Group created by the Databricks Workspace.
  late final pulumi.Output<String> managedResourceGroupId;
  /// The name of the resource group where Azure should place the managed Databricks resources. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Make sure that this field is unique if you have multiple Databrick Workspaces deployed in your subscription and choose to not have the `managed_resource_group_name` auto generated by the Azure Resource Provider. Having multiple Databrick Workspaces deployed in the same subscription with the same `manage_resource_group_name` may result in some resources that cannot be deleted.
  late final pulumi.Output<String> managedResourceGroupName;
  /// Resource ID of the Key Vault which contains the `managed_services_cmk_key_vault_key_id` key.
  ///
  /// > **Note:** The `managed_services_cmk_key_vault_id` field is only required if the Key Vault exists in a different subscription than the Databricks Workspace. If the `managed_services_cmk_key_vault_id` field is not specified it is assumed that the `managed_services_cmk_key_vault_key_id` is hosted in the same subscriptioin as the Databricks Workspace.
  ///
  /// > **Note:** If you are using multiple service principals to execute Terraform across subscriptions you will need to add an additional `azure.keyvault.AccessPolicy` resource granting the service principal access to the key vault in that subscription.
  late final pulumi.Output<String?> managedServicesCmkKeyVaultId;
  /// Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts).
  late final pulumi.Output<String?> managedServicesCmkKeyVaultKeyId;
  /// Specifies the name of the Databricks Workspace resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values `AllRules`, `NoAzureDatabricksRules` or `NoAzureServiceRules`. Required when `public_network_access_enabled` is set to `false`.
  late final pulumi.Output<String?> networkSecurityGroupRulesRequired;
  /// Allow public access for accessing workspace. Set value to `false` to access workspace only via private link endpoint. Possible values include `true` or `false`. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the Resource Group in which the Databricks Workspace should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The `sku` to use for the Databricks Workspace. Possible values are `standard`, `premium`, or `trial`.
  ///
  /// > **Note:** Downgrading to a `trial sku` from a `standard` or `premium sku` will force a new resource to be created.
  late final pulumi.Output<String> sku;
  /// A `storage_account_identity` block as documented below.
  late final pulumi.Output<List<WorkspaceStorageAccountIdentity>> storageAccountIdentities;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The unique identifier of the databricks workspace in Databricks control plane.
  late final pulumi.Output<String> workspaceId;
  /// The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net'
  late final pulumi.Output<String> workspaceUrl;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_databricks_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:databricks/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessConnectorId = registerOutput<String?>('accessConnectorId');
    this.customParameters = registerOutput<WorkspaceCustomParameters>('customParameters');
    this.customerManagedKeyEnabled = registerOutput<bool?>('customerManagedKeyEnabled');
    this.defaultStorageFirewallEnabled = registerOutput<bool?>('defaultStorageFirewallEnabled');
    this.diskEncryptionSetId = registerOutput<String>('diskEncryptionSetId');
    this.enhancedSecurityCompliance = registerOutput<WorkspaceEnhancedSecurityCompliance?>('enhancedSecurityCompliance');
    this.infrastructureEncryptionEnabled = registerOutput<bool?>('infrastructureEncryptionEnabled');
    this.loadBalancerBackendAddressPoolId = registerOutput<String?>('loadBalancerBackendAddressPoolId');
    this.location = registerOutput<String>('location');
    this.managedDiskCmkKeyVaultId = registerOutput<String?>('managedDiskCmkKeyVaultId');
    this.managedDiskCmkKeyVaultKeyId = registerOutput<String?>('managedDiskCmkKeyVaultKeyId');
    this.managedDiskCmkRotationToLatestVersionEnabled = registerOutput<bool?>('managedDiskCmkRotationToLatestVersionEnabled');
    this.managedDiskIdentities = registerOutput<List<WorkspaceManagedDiskIdentity>>('managedDiskIdentities');
    this.managedResourceGroupId = registerOutput<String>('managedResourceGroupId');
    this.managedResourceGroupName = registerOutput<String>('managedResourceGroupName');
    this.managedServicesCmkKeyVaultId = registerOutput<String?>('managedServicesCmkKeyVaultId');
    this.managedServicesCmkKeyVaultKeyId = registerOutput<String?>('managedServicesCmkKeyVaultKeyId');
    this.name = registerOutput<String>('name');
    this.networkSecurityGroupRulesRequired = registerOutput<String?>('networkSecurityGroupRulesRequired');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<String>('sku');
    this.storageAccountIdentities = registerOutput<List<WorkspaceStorageAccountIdentity>>('storageAccountIdentities');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.workspaceId = registerOutput<String>('workspaceId');
    this.workspaceUrl = registerOutput<String>('workspaceUrl');
  }
}
