import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';

/// Manages a Mongo Cluster Firewall Rule.
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
/// const exampleMongoCluster = new azure.mongocluster.MongoCluster("example", {
///     name: "example-mongocluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorUsername: "adminuser",
///     administratorPassword: "P@ssw0rd1234!",
///     shardCount: 1,
///     computeTier: "M30",
///     highAvailabilityMode: "Disabled",
///     storageSizeInGb: 32,
///     version: "7.0",
/// });
/// const exampleFirewallRule = new azure.mongocluster.FirewallRule("example", {
///     name: "example-firewall-rule",
///     mongoClusterId: exampleMongoCluster.id,
///     startIpAddress: "10.0.0.1",
///     endIpAddress: "10.0.0.255",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_mongo_cluster = azure.mongocluster.MongoCluster("example",
///     name="example-mongocluster",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_username="adminuser",
///     administrator_password="P@ssw0rd1234!",
///     shard_count=1,
///     compute_tier="M30",
///     high_availability_mode="Disabled",
///     storage_size_in_gb=32,
///     version="7.0")
/// example_firewall_rule = azure.mongocluster.FirewallRule("example",
///     name="example-firewall-rule",
///     mongo_cluster_id=example_mongo_cluster.id,
///     start_ip_address="10.0.0.1",
///     end_ip_address="10.0.0.255")
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
///     var exampleMongoCluster = new Azure.MongoCluster.MongoCluster("example", new()
///     {
///         Name = "example-mongocluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorUsername = "adminuser",
///         AdministratorPassword = "P@ssw0rd1234!",
///         ShardCount = 1,
///         ComputeTier = "M30",
///         HighAvailabilityMode = "Disabled",
///         StorageSizeInGb = 32,
///         Version = "7.0",
///     });
///
///     var exampleFirewallRule = new Azure.MongoCluster.FirewallRule("example", new()
///     {
///         Name = "example-firewall-rule",
///         MongoClusterId = exampleMongoCluster.Id,
///         StartIpAddress = "10.0.0.1",
///         EndIpAddress = "10.0.0.255",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mongocluster"
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
/// 		exampleMongoCluster, err := mongocluster.NewMongoCluster(ctx, "example", &mongocluster.MongoClusterArgs{
/// 			Name:                  pulumi.String("example-mongocluster"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorUsername: pulumi.String("adminuser"),
/// 			AdministratorPassword: pulumi.String("P@ssw0rd1234!"),
/// 			ShardCount:            pulumi.Int(1),
/// 			ComputeTier:           pulumi.String("M30"),
/// 			HighAvailabilityMode:  pulumi.String("Disabled"),
/// 			StorageSizeInGb:       pulumi.Int(32),
/// 			Version:               pulumi.String("7.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongocluster.NewFirewallRule(ctx, "example", &mongocluster.FirewallRuleArgs{
/// 			Name:           pulumi.String("example-firewall-rule"),
/// 			MongoClusterId: exampleMongoCluster.ID(),
/// 			StartIpAddress: pulumi.String("10.0.0.1"),
/// 			EndIpAddress:   pulumi.String("10.0.0.255"),
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
/// import com.pulumi.azure.mongocluster.MongoCluster;
/// import com.pulumi.azure.mongocluster.MongoClusterArgs;
/// import com.pulumi.azure.mongocluster.FirewallRule;
/// import com.pulumi.azure.mongocluster.FirewallRuleArgs;
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
///         var exampleMongoCluster = new MongoCluster("exampleMongoCluster", MongoClusterArgs.builder()
///             .name("example-mongocluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorUsername("adminuser")
///             .administratorPassword("P@ssw0rd1234!")
///             .shardCount(1)
///             .computeTier("M30")
///             .highAvailabilityMode("Disabled")
///             .storageSizeInGb(32)
///             .version("7.0")
///             .build());
///
///         var exampleFirewallRule = new FirewallRule("exampleFirewallRule", FirewallRuleArgs.builder()
///             .name("example-firewall-rule")
///             .mongoClusterId(exampleMongoCluster.id())
///             .startIpAddress("10.0.0.1")
///             .endIpAddress("10.0.0.255")
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
///   exampleMongoCluster:
///     type: azure:mongocluster:MongoCluster
///     name: example
///     properties:
///       name: example-mongocluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorUsername: adminuser
///       administratorPassword: P@ssw0rd1234!
///       shardCount: 1
///       computeTier: M30
///       highAvailabilityMode: Disabled
///       storageSizeInGb: 32
///       version: '7.0'
///   exampleFirewallRule:
///     type: azure:mongocluster:FirewallRule
///     name: example
///     properties:
///       name: example-firewall-rule
///       mongoClusterId: ${exampleMongoCluster.id}
///       startIpAddress: 10.0.0.1
///       endIpAddress: 10.0.0.255
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2025-09-01
///
/// ## Import
///
/// Mongo Cluster Firewall Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mongocluster/firewallRule:FirewallRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DocumentDB/mongoClusters/cluster1/firewallRules/rule1
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The end IP address of the Mongo Cluster Firewall Rule.
  late final pulumi.Output<String> endIpAddress;
  /// The ID of the Mongo Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> mongoClusterId;
  /// The name of the Mongo Cluster Firewall Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The start IP address of the Mongo Cluster Firewall Rule.
  late final pulumi.Output<String> startIpAddress;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_mongocluster_firewall_rule_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mongocluster/firewallRule:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endIpAddress = registerOutput<String>('endIpAddress');
    this.mongoClusterId = registerOutput<String>('mongoClusterId');
    this.name = registerOutput<String>('name');
    this.startIpAddress = registerOutput<String>('startIpAddress');
  }
}
