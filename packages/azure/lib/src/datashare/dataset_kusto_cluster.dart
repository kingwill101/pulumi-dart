import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_kusto_cluster_args.dart';

/// Manages a Data Share Kusto Cluster Dataset.
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
/// const exampleAccount = new azure.datashare.Account("example", {
///     name: "example-dsa",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleShare = new azure.datashare.Share("example", {
///     name: "example_ds",
///     accountId: exampleAccount.id,
///     kind: "InPlace",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "examplekc",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Dev(No SLA)_Standard_D11_v2",
///         capacity: 1,
///     },
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleCluster.id,
///     roleDefinitionName: "Contributor",
///     principalId: exampleAccount.identity.apply(identity => identity.principalId),
/// });
/// const exampleDatasetKustoCluster = new azure.datashare.DatasetKustoCluster("example", {
///     name: "example-dskc",
///     shareId: exampleShare.id,
///     kustoClusterId: exampleCluster.id,
/// }, {
///     dependsOn: [exampleAssignment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.datashare.Account("example",
///     name="example-dsa",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_share = azure.datashare.Share("example",
///     name="example_ds",
///     account_id=example_account.id,
///     kind="InPlace")
/// example_cluster = azure.kusto.Cluster("example",
///     name="examplekc",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Dev(No SLA)_Standard_D11_v2",
///         "capacity": 1,
///     })
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_cluster.id,
///     role_definition_name="Contributor",
///     principal_id=example_account.identity.principal_id)
/// example_dataset_kusto_cluster = azure.datashare.DatasetKustoCluster("example",
///     name="example-dskc",
///     share_id=example_share.id,
///     kusto_cluster_id=example_cluster.id,
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
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
///     var exampleAccount = new Azure.DataShare.Account("example", new()
///     {
///         Name = "example-dsa",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DataShare.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleShare = new Azure.DataShare.Share("example", new()
///     {
///         Name = "example_ds",
///         AccountId = exampleAccount.Id,
///         Kind = "InPlace",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "examplekc",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Dev(No SLA)_Standard_D11_v2",
///             Capacity = 1,
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleCluster.Id,
///         RoleDefinitionName = "Contributor",
///         PrincipalId = exampleAccount.Identity.Apply(identity => identity.PrincipalId),
///     });
///
///     var exampleDatasetKustoCluster = new Azure.DataShare.DatasetKustoCluster("example", new()
///     {
///         Name = "example-dskc",
///         ShareId = exampleShare.Id,
///         KustoClusterId = exampleCluster.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
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
/// 		exampleAccount, err := datashare.NewAccount(ctx, "example", &datashare.AccountArgs{
/// 			Name:              pulumi.String("example-dsa"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &datashare.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShare, err := datashare.NewShare(ctx, "example", &datashare.ShareArgs{
/// 			Name:      pulumi.String("example_ds"),
/// 			AccountId: exampleAccount.ID(),
/// 			Kind:      pulumi.String("InPlace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("examplekc"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Dev(No SLA)_Standard_D11_v2"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleCluster.ID(),
/// 			RoleDefinitionName: pulumi.String("Contributor"),
/// 			PrincipalId: pulumi.String(exampleAccount.Identity.ApplyT(func(identity datashare.AccountIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datashare.NewDatasetKustoCluster(ctx, "example", &datashare.DatasetKustoClusterArgs{
/// 			Name:           pulumi.String("example-dskc"),
/// 			ShareId:        exampleShare.ID(),
/// 			KustoClusterId: exampleCluster.ID(),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datashare.Account;
/// import com.pulumi.azure.datashare.AccountArgs;
/// import com.pulumi.azure.datashare.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.datashare.Share;
/// import com.pulumi.azure.datashare.ShareArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.datashare.DatasetKustoCluster;
/// import com.pulumi.azure.datashare.DatasetKustoClusterArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-dsa")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("example_ds")
///             .accountId(exampleAccount.id())
///             .kind("InPlace")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("examplekc")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Dev(No SLA)_Standard_D11_v2")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleCluster.id())
///             .roleDefinitionName("Contributor")
///             .principalId(exampleAccount.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleDatasetKustoCluster = new DatasetKustoCluster("exampleDatasetKustoCluster", DatasetKustoClusterArgs.builder()
///             .name("example-dskc")
///             .shareId(exampleShare.id())
///             .kustoClusterId(exampleCluster.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
///                 .build());
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
///   exampleAccount:
///     type: azure:datashare:Account
///     name: example
///     properties:
///       name: example-dsa
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///   exampleShare:
///     type: azure:datashare:Share
///     name: example
///     properties:
///       name: example_ds
///       accountId: ${exampleAccount.id}
///       kind: InPlace
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: examplekc
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Dev(No SLA)_Standard_D11_v2
///         capacity: 1
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleCluster.id}
///       roleDefinitionName: Contributor
///       principalId: ${exampleAccount.identity.principalId}
///   exampleDatasetKustoCluster:
///     type: azure:datashare:DatasetKustoCluster
///     name: example
///     properties:
///       name: example-dskc
///       shareId: ${exampleShare.id}
///       kustoClusterId: ${exampleCluster.id}
///     options:
///       dependsOn:
///         - ${exampleAssignment}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataShare` - 2019-11-01
///
/// ## Import
///
/// Data Share Kusto Cluster Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datashare/datasetKustoCluster:DatasetKustoCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataShare/accounts/account1/shares/share1/dataSets/dataSet1
/// ```
class DatasetKustoCluster extends pulumi.CustomResource {
  /// The name of the Data Share Dataset.
  late final pulumi.Output<String> displayName;
  /// The resource ID of the Kusto Cluster to be shared with the receiver. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  late final pulumi.Output<String> kustoClusterId;
  /// The location of the Kusto Cluster.
  late final pulumi.Output<String> kustoClusterLocation;
  /// The name which should be used for this Data Share Kusto Cluster Dataset. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  late final pulumi.Output<String> name;
  /// The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created. Changing this forces a new Data Share Kusto Cluster Dataset to be created.
  late final pulumi.Output<String> shareId;

  /// Creates a new [DatasetKustoCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetKustoCluster]. {@macro pulumi_datashare_dataset_kusto_cluster_dataset_kusto_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetKustoCluster(
    String name, {
    DatasetKustoClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datashare/datasetKustoCluster:DatasetKustoCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.kustoClusterId = registerOutput<String>('kustoClusterId');
    this.kustoClusterLocation = registerOutput<String>('kustoClusterLocation');
    this.name = registerOutput<String>('name');
    this.shareId = registerOutput<String>('shareId');
  }
}
