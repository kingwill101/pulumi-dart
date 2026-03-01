import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_customer_managed_key_args.dart';

/// Manages a Log Analytics Cluster Customer Managed Key.
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
/// const current = azure.core.getClientConfig({});
/// const exampleCluster = new azure.loganalytics.Cluster("example", {
///     name: "example-cluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "keyvaultkeyexample",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Create",
///                 "Get",
///                 "GetRotationPolicy",
///             ],
///             secretPermissions: ["Set"],
///         },
///         {
///             tenantId: exampleCluster.identity.apply(identity => identity.tenantId),
///             objectId: exampleCluster.identity.apply(identity => identity.principalId),
///             keyPermissions: [
///                 "Get",
///                 "Unwrapkey",
///                 "Wrapkey",
///             ],
///         },
///     ],
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "generated-certificate",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
/// });
/// const exampleClusterCustomerManagedKey = new azure.loganalytics.ClusterCustomerManagedKey("example", {
///     logAnalyticsClusterId: exampleCluster.id,
///     keyVaultKeyId: exampleKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_cluster = azure.loganalytics.Cluster("example",
///     name="example-cluster",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="keyvaultkeyexample",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Create",
///                 "Get",
///                 "GetRotationPolicy",
///             ],
///             "secret_permissions": ["Set"],
///         },
///         {
///             "tenant_id": example_cluster.identity.tenant_id,
///             "object_id": example_cluster.identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "Unwrapkey",
///                 "Wrapkey",
///             ],
///         },
///     ],
///     tags={
///         "environment": "Production",
///     })
/// example_key = azure.keyvault.Key("example",
///     name="generated-certificate",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ])
/// example_cluster_customer_managed_key = azure.loganalytics.ClusterCustomerManagedKey("example",
///     log_analytics_cluster_id=example_cluster.id,
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleCluster = new Azure.LogAnalytics.Cluster("example", new()
///     {
///         Name = "example-cluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.LogAnalytics.Inputs.ClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "keyvaultkeyexample",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Get",
///                     "GetRotationPolicy",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleCluster.Identity.Apply(identity => identity.TenantId),
///                 ObjectId = exampleCluster.Identity.Apply(identity => identity.PrincipalId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "Unwrapkey",
///                     "Wrapkey",
///                 },
///             },
///         },
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "generated-certificate",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "decrypt",
///             "encrypt",
///             "sign",
///             "unwrapKey",
///             "verify",
///             "wrapKey",
///         },
///     });
///
///     var exampleClusterCustomerManagedKey = new Azure.LogAnalytics.ClusterCustomerManagedKey("example", new()
///     {
///         LogAnalyticsClusterId = exampleCluster.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loganalytics"
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
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := loganalytics.NewCluster(ctx, "example", &loganalytics.ClusterArgs{
/// 			Name:              pulumi.String("example-cluster"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &loganalytics.ClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("keyvaultkeyexample"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("premium"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("GetRotationPolicy"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleCluster.Identity.ApplyT(func(identity loganalytics.ClusterIdentity) (*string, error) {
/// 						return &identity.TenantId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					ObjectId: exampleCluster.Identity.ApplyT(func(identity loganalytics.ClusterIdentity) (*string, error) {
/// 						return &identity.PrincipalId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Unwrapkey"),
/// 						pulumi.String("Wrapkey"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("generated-certificate"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("decrypt"),
/// 				pulumi.String("encrypt"),
/// 				pulumi.String("sign"),
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("verify"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewClusterCustomerManagedKey(ctx, "example", &loganalytics.ClusterCustomerManagedKeyArgs{
/// 			LogAnalyticsClusterId: exampleCluster.ID(),
/// 			KeyVaultKeyId:         exampleKey.ID(),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.loganalytics.Cluster;
/// import com.pulumi.azure.loganalytics.ClusterArgs;
/// import com.pulumi.azure.loganalytics.inputs.ClusterIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.loganalytics.ClusterCustomerManagedKey;
/// import com.pulumi.azure.loganalytics.ClusterCustomerManagedKeyArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example-cluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(ClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("keyvaultkeyexample")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Create",
///                         "Get",
///                         "GetRotationPolicy")
///                     .secretPermissions("Set")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleCluster.identity().applyValue(_identity -> _identity.tenantId()))
///                     .objectId(exampleCluster.identity().applyValue(_identity -> _identity.principalId()))
///                     .keyPermissions(
///                         "Get",
///                         "Unwrapkey",
///                         "Wrapkey")
///                     .build())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("generated-certificate")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "decrypt",
///                 "encrypt",
///                 "sign",
///                 "unwrapKey",
///                 "verify",
///                 "wrapKey")
///             .build());
///
///         var exampleClusterCustomerManagedKey = new ClusterCustomerManagedKey("exampleClusterCustomerManagedKey", ClusterCustomerManagedKeyArgs.builder()
///             .logAnalyticsClusterId(exampleCluster.id())
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
///       location: West Europe
///   exampleCluster:
///     type: azure:loganalytics:Cluster
///     name: example
///     properties:
///       name: example-cluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: keyvaultkeyexample
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Create
///             - Get
///             - GetRotationPolicy
///           secretPermissions:
///             - Set
///         - tenantId: ${exampleCluster.identity.tenantId}
///           objectId: ${exampleCluster.identity.principalId}
///           keyPermissions:
///             - Get
///             - Unwrapkey
///             - Wrapkey
///       tags:
///         environment: Production
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: generated-certificate
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - decrypt
///         - encrypt
///         - sign
///         - unwrapKey
///         - verify
///         - wrapKey
///   exampleClusterCustomerManagedKey:
///     type: azure:loganalytics:ClusterCustomerManagedKey
///     name: example
///     properties:
///       logAnalyticsClusterId: ${exampleCluster.id}
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
/// * `Microsoft.OperationalInsights` - 2022-10-01
///
/// ## Import
///
/// Log Analytics Cluster Customer Managed Keys can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/clusterCustomerManagedKey:ClusterCustomerManagedKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/clusters/cluster1
/// ```
class ClusterCustomerManagedKey extends pulumi.CustomResource {
  /// The ID of the Key Vault Key to use for encryption.
  late final pulumi.Output<String> keyVaultKeyId;
  /// The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created.
  late final pulumi.Output<String> logAnalyticsClusterId;

  /// Creates a new [ClusterCustomerManagedKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterCustomerManagedKey]. {@macro pulumi_loganalytics_cluster_customer_managed_key_cluster_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterCustomerManagedKey(
    String name, {
    ClusterCustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/clusterCustomerManagedKey:ClusterCustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    this.logAnalyticsClusterId = registerOutput<String>('logAnalyticsClusterId');
  }
}
