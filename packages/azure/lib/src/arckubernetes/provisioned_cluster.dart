import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_cluster_args.dart';
import 'provisioned_cluster_azure_active_directory.dart';
import 'provisioned_cluster_identity.dart';

/// Manages an Arc Kubernetes Provisioned Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleGroup = new azuread.Group("example", {
///     displayName: "example-adg",
///     owners: [current.then(current => current.objectId)],
///     securityEnabled: true,
/// });
/// const exampleProvisionedCluster = new azure.arckubernetes.ProvisionedCluster("example", {
///     name: "example-akpc",
///     resourceGroupName: example.name,
///     location: example.location,
///     azureActiveDirectory: {
///         azureRbacEnabled: true,
///         adminGroupObjectIds: [exampleGroup.id],
///         tenantId: current.then(current => current.tenantId),
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azuread as azuread
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_group = azuread.Group("example",
///     display_name="example-adg",
///     owners=[current.object_id],
///     security_enabled=True)
/// example_provisioned_cluster = azure.arckubernetes.ProvisionedCluster("example",
///     name="example-akpc",
///     resource_group_name=example.name,
///     location=example.location,
///     azure_active_directory={
///         "azure_rbac_enabled": True,
///         "admin_group_object_ids": [example_group.id],
///         "tenant_id": current.tenant_id,
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleGroup = new AzureAD.Group("example", new()
///     {
///         DisplayName = "example-adg",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         SecurityEnabled = true,
///     });
///
///     var exampleProvisionedCluster = new Azure.ArcKubernetes.ProvisionedCluster("example", new()
///     {
///         Name = "example-akpc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AzureActiveDirectory = new Azure.ArcKubernetes.Inputs.ProvisionedClusterAzureActiveDirectoryArgs
///         {
///             AzureRbacEnabled = true,
///             AdminGroupObjectIds = new[]
///             {
///                 exampleGroup.Id,
///             },
///             TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         },
///         Identity = new Azure.ArcKubernetes.Inputs.ProvisionedClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arckubernetes"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
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
/// 		exampleGroup, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName: pulumi.String("example-adg"),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arckubernetes.NewProvisionedCluster(ctx, "example", &arckubernetes.ProvisionedClusterArgs{
/// 			Name:              pulumi.String("example-akpc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AzureActiveDirectory: &arckubernetes.ProvisionedClusterAzureActiveDirectoryArgs{
/// 				AzureRbacEnabled: pulumi.Bool(true),
/// 				AdminGroupObjectIds: pulumi.StringArray{
/// 					exampleGroup.ID(),
/// 				},
/// 				TenantId: pulumi.String(current.TenantId),
/// 			},
/// 			Identity: &arckubernetes.ProvisionedClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azure.arckubernetes.ProvisionedCluster;
/// import com.pulumi.azure.arckubernetes.ProvisionedClusterArgs;
/// import com.pulumi.azure.arckubernetes.inputs.ProvisionedClusterAzureActiveDirectoryArgs;
/// import com.pulumi.azure.arckubernetes.inputs.ProvisionedClusterIdentityArgs;
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
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .displayName("example-adg")
///             .owners(current.objectId())
///             .securityEnabled(true)
///             .build());
///
///         var exampleProvisionedCluster = new ProvisionedCluster("exampleProvisionedCluster", ProvisionedClusterArgs.builder()
///             .name("example-akpc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .azureActiveDirectory(ProvisionedClusterAzureActiveDirectoryArgs.builder()
///                 .azureRbacEnabled(true)
///                 .adminGroupObjectIds(exampleGroup.id())
///                 .tenantId(current.tenantId())
///                 .build())
///             .identity(ProvisionedClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
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
///   exampleGroup:
///     type: azuread:Group
///     name: example
///     properties:
///       displayName: example-adg
///       owners:
///         - ${current.objectId}
///       securityEnabled: true
///   exampleProvisionedCluster:
///     type: azure:arckubernetes:ProvisionedCluster
///     name: example
///     properties:
///       name: example-akpc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       azureActiveDirectory:
///         azureRbacEnabled: true
///         adminGroupObjectIds:
///           - ${exampleGroup.id}
///         tenantId: ${current.tenantId}
///       identity:
///         type: SystemAssigned
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
/// * `Microsoft.Kubernetes` - 2024-01-01
///
/// ## Import
///
/// Arc Kubernetes Provisioned Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:arckubernetes/provisionedCluster:ProvisionedCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Kubernetes/connectedClusters/cluster1
/// ```
class ProvisionedCluster extends pulumi.CustomResource {
  /// The version of the agent running on the cluster resource.
  late final pulumi.Output<String> agentVersion;
  /// Whether the Arc agents will be upgraded automatically to the latest version. Defaults to `true`.
  late final pulumi.Output<bool?> arcAgentAutoUpgradeEnabled;
  /// The version of the Arc agents to be installed on the cluster.
  late final pulumi.Output<String?> arcAgentDesiredVersion;
  /// An `azure_active_directory` block as defined below.
  late final pulumi.Output<ProvisionedClusterAzureActiveDirectory?> azureActiveDirectory;
  /// The distribution running on this Arc Kubernetes Provisioned Cluster.
  late final pulumi.Output<String> distribution;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  late final pulumi.Output<ProvisionedClusterIdentity> identity;
  /// The infrastructure on which the Arc Kubernetes Provisioned Cluster is running on.
  late final pulumi.Output<String> infrastructure;
  /// The Kubernetes version of the cluster resource.
  late final pulumi.Output<String> kubernetesVersion;
  /// The Azure Region where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Arc Kubernetes Provisioned Cluster. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  late final pulumi.Output<String> name;
  /// The cluster offering.
  late final pulumi.Output<String> offering;
  /// The name of the Resource Group where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Kubernetes Provisioned Cluster.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The number of CPU cores present in the cluster resource.
  late final pulumi.Output<int> totalCoreCount;
  /// The number of nodes present in the cluster resource.
  late final pulumi.Output<int> totalNodeCount;

  /// Creates a new [ProvisionedCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisionedCluster]. {@macro pulumi_arckubernetes_provisioned_cluster_provisioned_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisionedCluster(
    String name, {
    ProvisionedClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arckubernetes/provisionedCluster:ProvisionedCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentVersion = registerOutput<String>('agentVersion');
    this.arcAgentAutoUpgradeEnabled = registerOutput<bool?>('arcAgentAutoUpgradeEnabled');
    this.arcAgentDesiredVersion = registerOutput<String?>('arcAgentDesiredVersion');
    this.azureActiveDirectory = registerOutput<ProvisionedClusterAzureActiveDirectory?>('azureActiveDirectory');
    this.distribution = registerOutput<String>('distribution');
    this.identity = registerOutput<ProvisionedClusterIdentity>('identity');
    this.infrastructure = registerOutput<String>('infrastructure');
    this.kubernetesVersion = registerOutput<String>('kubernetesVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.offering = registerOutput<String>('offering');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.totalCoreCount = registerOutput<int>('totalCoreCount');
    this.totalNodeCount = registerOutput<int>('totalNodeCount');
  }
}
