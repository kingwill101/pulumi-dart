import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_firewall_rule_args.dart';
import 'system_data_response.dart';

/// Represents a mongo cluster firewall rule.
///
/// Uses Azure REST API version 2024-02-15-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a firewall rule of the mongo cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoClusterFirewallRule = new AzureNative.CosmosDB.MongoClusterFirewallRule("mongoClusterFirewallRule", new()
///     {
///         EndIpAddress = "255.255.255.255",
///         FirewallRuleName = "rule1",
///         MongoClusterName = "myMongoCluster",
///         ResourceGroupName = "TestGroup",
///         StartIpAddress = "0.0.0.0",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewMongoClusterFirewallRule(ctx, "mongoClusterFirewallRule", &cosmosdb.MongoClusterFirewallRuleArgs{
/// 			EndIpAddress:      pulumi.String("255.255.255.255"),
/// 			FirewallRuleName:  pulumi.String("rule1"),
/// 			MongoClusterName:  pulumi.String("myMongoCluster"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			StartIpAddress:    pulumi.String("0.0.0.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cosmosdb.MongoClusterFirewallRule;
/// import com.pulumi.azurenative.cosmosdb.MongoClusterFirewallRuleArgs;
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
///         var mongoClusterFirewallRule = new MongoClusterFirewallRule("mongoClusterFirewallRule", MongoClusterFirewallRuleArgs.builder()
///             .endIpAddress("255.255.255.255")
///             .firewallRuleName("rule1")
///             .mongoClusterName("myMongoCluster")
///             .resourceGroupName("TestGroup")
///             .startIpAddress("0.0.0.0")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const mongoClusterFirewallRule = new azure_native.cosmosdb.MongoClusterFirewallRule("mongoClusterFirewallRule", {
///     endIpAddress: "255.255.255.255",
///     firewallRuleName: "rule1",
///     mongoClusterName: "myMongoCluster",
///     resourceGroupName: "TestGroup",
///     startIpAddress: "0.0.0.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mongo_cluster_firewall_rule = azure_native.cosmosdb.MongoClusterFirewallRule("mongoClusterFirewallRule",
///     end_ip_address="255.255.255.255",
///     firewall_rule_name="rule1",
///     mongo_cluster_name="myMongoCluster",
///     resource_group_name="TestGroup",
///     start_ip_address="0.0.0.0")
///
/// ```
///
/// ```yaml
/// resources:
///   mongoClusterFirewallRule:
///     type: azure-native:cosmosdb:MongoClusterFirewallRule
///     properties:
///       endIpAddress: 255.255.255.255
///       firewallRuleName: rule1
///       mongoClusterName: myMongoCluster
///       resourceGroupName: TestGroup
///       startIpAddress: 0.0.0.0
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:cosmosdb:MongoClusterFirewallRule rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/mongoClusters/{mongoClusterName}/firewallRules/{firewallRuleName}
/// ```
class MongoClusterFirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  late final pulumi.Output<String> endIpAddress;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the firewall rule.
  late final pulumi.Output<String> provisioningState;
  /// The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  late final pulumi.Output<String> startIpAddress;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MongoClusterFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoClusterFirewallRule]. {@macro pulumi_cosmosdb_mongo_cluster_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoClusterFirewallRule(
    String name, {
    MongoClusterFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:MongoClusterFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.startIpAddress = registerOutput<String>('startIpAddress');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
