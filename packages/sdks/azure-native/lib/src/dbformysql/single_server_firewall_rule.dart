import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_server_firewall_rule_args.dart';

/// Represents a server firewall rule.
///
/// Uses Azure REST API version 2017-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### FirewallRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var singleServerFirewallRule = new AzureNative.DBforMySQL.SingleServerFirewallRule("singleServerFirewallRule", new()
///     {
///         EndIpAddress = "255.255.255.255",
///         FirewallRuleName = "rule1",
///         ResourceGroupName = "TestGroup",
///         ServerName = "testserver",
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
/// 	dbformysql "github.com/pulumi/pulumi-azure-native-sdk/dbformysql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformysql.NewSingleServerFirewallRule(ctx, "singleServerFirewallRule", &dbformysql.SingleServerFirewallRuleArgs{
/// 			EndIpAddress:      pulumi.String("255.255.255.255"),
/// 			FirewallRuleName:  pulumi.String("rule1"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			ServerName:        pulumi.String("testserver"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbformysql_singleserverfirewallrule" "singleServerFirewallRule" {
///   end_ip_address      = "255.255.255.255"
///   firewall_rule_name  = "rule1"
///   resource_group_name = "TestGroup"
///   server_name         = "testserver"
///   start_ip_address    = "0.0.0.0"
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
/// import com.pulumi.azurenative.dbformysql.SingleServerFirewallRule;
/// import com.pulumi.azurenative.dbformysql.SingleServerFirewallRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var singleServerFirewallRule = new SingleServerFirewallRule("singleServerFirewallRule", SingleServerFirewallRuleArgs.builder()
///             .endIpAddress("255.255.255.255")
///             .firewallRuleName("rule1")
///             .resourceGroupName("TestGroup")
///             .serverName("testserver")
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
/// const singleServerFirewallRule = new azure_native.dbformysql.SingleServerFirewallRule("singleServerFirewallRule", {
///     endIpAddress: "255.255.255.255",
///     firewallRuleName: "rule1",
///     resourceGroupName: "TestGroup",
///     serverName: "testserver",
///     startIpAddress: "0.0.0.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// single_server_firewall_rule = azure_native.dbformysql.SingleServerFirewallRule("singleServerFirewallRule",
///     end_ip_address="255.255.255.255",
///     firewall_rule_name="rule1",
///     resource_group_name="TestGroup",
///     server_name="testserver",
///     start_ip_address="0.0.0.0")
///
/// ```
///
/// ```yaml
/// resources:
///   singleServerFirewallRule:
///     type: azure-native:dbformysql:SingleServerFirewallRule
///     properties:
///       endIpAddress: 255.255.255.255
///       firewallRuleName: rule1
///       resourceGroupName: TestGroup
///       serverName: testserver
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
/// $ pulumi import azure-native:dbformysql:SingleServerFirewallRule rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/servers/{serverName}/firewallRules/{firewallRuleName}
/// ```
class SingleServerFirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The end IP address of the server firewall rule. Must be IPv4 format.
  late final pulumi.Output<String> endIpAddress;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The start IP address of the server firewall rule. Must be IPv4 format.
  late final pulumi.Output<String> startIpAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SingleServerFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleServerFirewallRule]. {@macro pulumi_dbformysql_single_server_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleServerFirewallRule(
    String name, {
    SingleServerFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformysql:SingleServerFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    startIpAddress = registerOutput<String>('startIpAddress');
    type = registerOutput<String>('type');
  }
}
