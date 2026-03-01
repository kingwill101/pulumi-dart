import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_firewall_rule_args.dart';

/// Manages an Azure Cosmos DB for PostgreSQL Firewall Rule.
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
/// const examplePostgresqlCluster = new azure.cosmosdb.PostgresqlCluster("example", {
///     name: "examplecluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLoginPassword: "H@Sh1CoR3!",
///     coordinatorStorageQuotaInMb: 131072,
///     coordinatorVcoreCount: 2,
///     nodeCount: 0,
/// });
/// const examplePostgresqlFirewallRule = new azure.cosmosdb.PostgresqlFirewallRule("example", {
///     name: "example-firewallrule",
///     clusterId: examplePostgresqlCluster.id,
///     startIpAddress: "10.0.17.62",
///     endIpAddress: "10.0.17.64",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_postgresql_cluster = azure.cosmosdb.PostgresqlCluster("example",
///     name="examplecluster",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login_password="H@Sh1CoR3!",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_vcore_count=2,
///     node_count=0)
/// example_postgresql_firewall_rule = azure.cosmosdb.PostgresqlFirewallRule("example",
///     name="example-firewallrule",
///     cluster_id=example_postgresql_cluster.id,
///     start_ip_address="10.0.17.62",
///     end_ip_address="10.0.17.64")
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
///     var examplePostgresqlCluster = new Azure.CosmosDB.PostgresqlCluster("example", new()
///     {
///         Name = "examplecluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVcoreCount = 2,
///         NodeCount = 0,
///     });
///
///     var examplePostgresqlFirewallRule = new Azure.CosmosDB.PostgresqlFirewallRule("example", new()
///     {
///         Name = "example-firewallrule",
///         ClusterId = examplePostgresqlCluster.Id,
///         StartIpAddress = "10.0.17.62",
///         EndIpAddress = "10.0.17.64",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
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
/// 		examplePostgresqlCluster, err := cosmosdb.NewPostgresqlCluster(ctx, "example", &cosmosdb.PostgresqlClusterArgs{
/// 			Name:                        pulumi.String("examplecluster"),
/// 			ResourceGroupName:           example.Name,
/// 			Location:                    example.Location,
/// 			AdministratorLoginPassword:  pulumi.String("H@Sh1CoR3!"),
/// 			CoordinatorStorageQuotaInMb: pulumi.Int(131072),
/// 			CoordinatorVcoreCount:       pulumi.Int(2),
/// 			NodeCount:                   pulumi.Int(0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewPostgresqlFirewallRule(ctx, "example", &cosmosdb.PostgresqlFirewallRuleArgs{
/// 			Name:           pulumi.String("example-firewallrule"),
/// 			ClusterId:      examplePostgresqlCluster.ID(),
/// 			StartIpAddress: pulumi.String("10.0.17.62"),
/// 			EndIpAddress:   pulumi.String("10.0.17.64"),
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
/// import com.pulumi.azure.cosmosdb.PostgresqlCluster;
/// import com.pulumi.azure.cosmosdb.PostgresqlClusterArgs;
/// import com.pulumi.azure.cosmosdb.PostgresqlFirewallRule;
/// import com.pulumi.azure.cosmosdb.PostgresqlFirewallRuleArgs;
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
///         var examplePostgresqlCluster = new PostgresqlCluster("examplePostgresqlCluster", PostgresqlClusterArgs.builder()
///             .name("examplecluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVcoreCount(2)
///             .nodeCount(0)
///             .build());
///
///         var examplePostgresqlFirewallRule = new PostgresqlFirewallRule("examplePostgresqlFirewallRule", PostgresqlFirewallRuleArgs.builder()
///             .name("example-firewallrule")
///             .clusterId(examplePostgresqlCluster.id())
///             .startIpAddress("10.0.17.62")
///             .endIpAddress("10.0.17.64")
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
///   examplePostgresqlCluster:
///     type: azure:cosmosdb:PostgresqlCluster
///     name: example
///     properties:
///       name: examplecluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLoginPassword: H@Sh1CoR3!
///       coordinatorStorageQuotaInMb: 131072
///       coordinatorVcoreCount: 2
///       nodeCount: 0
///   examplePostgresqlFirewallRule:
///     type: azure:cosmosdb:PostgresqlFirewallRule
///     name: example
///     properties:
///       name: example-firewallrule
///       clusterId: ${examplePostgresqlCluster.id}
///       startIpAddress: 10.0.17.62
///       endIpAddress: 10.0.17.64
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2022-11-08
///
/// ## Import
///
/// Azure Cosmos DB for PostgreSQL Firewall Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/postgresqlFirewallRule:PostgresqlFirewallRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/cluster1/firewallRules/firewallRule1
/// ```
class PostgresqlFirewallRule extends pulumi.CustomResource {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterId;
  /// The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  late final pulumi.Output<String> endIpAddress;
  /// The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  late final pulumi.Output<String> startIpAddress;

  /// Creates a new [PostgresqlFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PostgresqlFirewallRule]. {@macro pulumi_cosmosdb_postgresql_firewall_rule_postgresql_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PostgresqlFirewallRule(
    String name, {
    PostgresqlFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlFirewallRule:PostgresqlFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    this.startIpAddress = registerOutput<String>('startIpAddress');
  }
}
