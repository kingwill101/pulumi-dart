import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';
import 'firewall_rule_properties_response.dart';
import 'system_data_response.dart';

/// Represents a mongo cluster firewall rule.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-03-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a firewall rule on a Mongo Cluster resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallRule = new AzureNative.MongoCluster.FirewallRule("firewallRule", new()
///     {
///         FirewallRuleName = "rule1",
///         MongoClusterName = "myMongoCluster",
///         Properties = new AzureNative.MongoCluster.Inputs.FirewallRulePropertiesArgs
///         {
///             EndIpAddress = "255.255.255.255",
///             StartIpAddress = "0.0.0.0",
///         },
///         ResourceGroupName = "TestGroup",
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
/// 	mongocluster "github.com/pulumi/pulumi-azure-native-sdk/mongocluster/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mongocluster.NewFirewallRule(ctx, "firewallRule", &mongocluster.FirewallRuleArgs{
/// 			FirewallRuleName: pulumi.String("rule1"),
/// 			MongoClusterName: pulumi.String("myMongoCluster"),
/// 			Properties: &mongocluster.FirewallRulePropertiesArgs{
/// 				EndIpAddress:   pulumi.String("255.255.255.255"),
/// 				StartIpAddress: pulumi.String("0.0.0.0"),
/// 			},
/// 			ResourceGroupName: pulumi.String("TestGroup"),
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
/// import com.pulumi.azurenative.mongocluster.FirewallRule;
/// import com.pulumi.azurenative.mongocluster.FirewallRuleArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.FirewallRulePropertiesArgs;
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
///         var firewallRule = new FirewallRule("firewallRule", FirewallRuleArgs.builder()
///             .firewallRuleName("rule1")
///             .mongoClusterName("myMongoCluster")
///             .properties(FirewallRulePropertiesArgs.builder()
///                 .endIpAddress("255.255.255.255")
///                 .startIpAddress("0.0.0.0")
///                 .build())
///             .resourceGroupName("TestGroup")
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
/// const firewallRule = new azure_native.mongocluster.FirewallRule("firewallRule", {
///     firewallRuleName: "rule1",
///     mongoClusterName: "myMongoCluster",
///     properties: {
///         endIpAddress: "255.255.255.255",
///         startIpAddress: "0.0.0.0",
///     },
///     resourceGroupName: "TestGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_rule = azure_native.mongocluster.FirewallRule("firewallRule",
///     firewall_rule_name="rule1",
///     mongo_cluster_name="myMongoCluster",
///     properties={
///         "end_ip_address": "255.255.255.255",
///         "start_ip_address": "0.0.0.0",
///     },
///     resource_group_name="TestGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   firewallRule:
///     type: azure-native:mongocluster:FirewallRule
///     properties:
///       firewallRuleName: rule1
///       mongoClusterName: myMongoCluster
///       properties:
///         endIpAddress: 255.255.255.255
///         startIpAddress: 0.0.0.0
///       resourceGroupName: TestGroup
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
/// $ pulumi import azure-native:mongocluster:FirewallRule rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/mongoClusters/{mongoClusterName}/firewallRules/{firewallRuleName}
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<FirewallRulePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_mongocluster_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mongocluster:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<FirewallRulePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
