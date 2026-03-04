import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_firewall_rule_args.dart';
import 'system_data_response.dart';

/// Represents a cluster firewall rule.
///
/// Uses Azure REST API version 2023-03-02-preview.
///
/// Other available API versions: 2022-11-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a firewall rule of the cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupFirewallRule = new AzureNative.DBforPostgreSQL.ServerGroupFirewallRule("serverGroupFirewallRule", new()
///     {
///         ClusterName = "pgtestsvc4",
///         EndIpAddress = "255.255.255.255",
///         FirewallRuleName = "rule1",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewServerGroupFirewallRule(ctx, "serverGroupFirewallRule", &dbforpostgresql.ServerGroupFirewallRuleArgs{
/// 			ClusterName:       pulumi.String("pgtestsvc4"),
/// 			EndIpAddress:      pulumi.String("255.255.255.255"),
/// 			FirewallRuleName:  pulumi.String("rule1"),
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupFirewallRule;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupFirewallRuleArgs;
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
///         var serverGroupFirewallRule = new ServerGroupFirewallRule("serverGroupFirewallRule", ServerGroupFirewallRuleArgs.builder()
///             .clusterName("pgtestsvc4")
///             .endIpAddress("255.255.255.255")
///             .firewallRuleName("rule1")
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
/// const serverGroupFirewallRule = new azure_native.dbforpostgresql.ServerGroupFirewallRule("serverGroupFirewallRule", {
///     clusterName: "pgtestsvc4",
///     endIpAddress: "255.255.255.255",
///     firewallRuleName: "rule1",
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
/// server_group_firewall_rule = azure_native.dbforpostgresql.ServerGroupFirewallRule("serverGroupFirewallRule",
///     cluster_name="pgtestsvc4",
///     end_ip_address="255.255.255.255",
///     firewall_rule_name="rule1",
///     resource_group_name="TestGroup",
///     start_ip_address="0.0.0.0")
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupFirewallRule:
///     type: azure-native:dbforpostgresql:ServerGroupFirewallRule
///     properties:
///       clusterName: pgtestsvc4
///       endIpAddress: 255.255.255.255
///       firewallRuleName: rule1
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
/// $ pulumi import azure-native:dbforpostgresql:ServerGroupFirewallRule rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/{clusterName}/firewallRules/{firewallRuleName}
/// ```
class ServerGroupFirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The end IP address of the cluster firewall rule. Must be IPv4 format.
  late final pulumi.Output<String> endIpAddress;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the firewall rule.
  late final pulumi.Output<String> provisioningState;

  /// The start IP address of the cluster firewall rule. Must be IPv4 format.
  late final pulumi.Output<String> startIpAddress;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServerGroupFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroupFirewallRule]. {@macro pulumi_dbforpostgresql_server_group_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroupFirewallRule(
    String name, {
    ServerGroupFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dbforpostgresql:ServerGroupFirewallRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    startIpAddress = registerOutput<String>('startIpAddress');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
