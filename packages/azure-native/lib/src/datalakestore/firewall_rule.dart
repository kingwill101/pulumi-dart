import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';

/// Data Lake Store firewall rule information.
///
/// Uses Azure REST API version 2016-11-01. In version 2.x of the Azure Native provider, it used API version 2016-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the specified firewall rule. During update, the firewall rule with the specified name will be replaced with this new firewall rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallRule = new AzureNative.DataLakeStore.FirewallRule("firewallRule", new()
///     {
///         AccountName = "contosoadla",
///         EndIpAddress = "2.2.2.2",
///         FirewallRuleName = "test_rule",
///         ResourceGroupName = "contosorg",
///         StartIpAddress = "1.1.1.1",
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
/// 	datalakestore "github.com/pulumi/pulumi-azure-native-sdk/datalakestore/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalakestore.NewFirewallRule(ctx, "firewallRule", &datalakestore.FirewallRuleArgs{
/// 			AccountName:       pulumi.String("contosoadla"),
/// 			EndIpAddress:      pulumi.String("2.2.2.2"),
/// 			FirewallRuleName:  pulumi.String("test_rule"),
/// 			ResourceGroupName: pulumi.String("contosorg"),
/// 			StartIpAddress:    pulumi.String("1.1.1.1"),
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
/// import com.pulumi.azurenative.datalakestore.FirewallRule;
/// import com.pulumi.azurenative.datalakestore.FirewallRuleArgs;
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
///             .accountName("contosoadla")
///             .endIpAddress("2.2.2.2")
///             .firewallRuleName("test_rule")
///             .resourceGroupName("contosorg")
///             .startIpAddress("1.1.1.1")
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
/// const firewallRule = new azure_native.datalakestore.FirewallRule("firewallRule", {
///     accountName: "contosoadla",
///     endIpAddress: "2.2.2.2",
///     firewallRuleName: "test_rule",
///     resourceGroupName: "contosorg",
///     startIpAddress: "1.1.1.1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_rule = azure_native.datalakestore.FirewallRule("firewallRule",
///     account_name="contosoadla",
///     end_ip_address="2.2.2.2",
///     firewall_rule_name="test_rule",
///     resource_group_name="contosorg",
///     start_ip_address="1.1.1.1")
///
/// ```
///
/// ```yaml
/// resources:
///   firewallRule:
///     type: azure-native:datalakestore:FirewallRule
///     properties:
///       accountName: contosoadla
///       endIpAddress: 2.2.2.2
///       firewallRuleName: test_rule
///       resourceGroupName: contosorg
///       startIpAddress: 1.1.1.1
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
/// $ pulumi import azure-native:datalakestore:FirewallRule test_rule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeStore/accounts/{accountName}/firewallRules/{firewallRuleName}
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  late final pulumi.Output<String> endIpAddress;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  late final pulumi.Output<String> startIpAddress;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_datalakestore_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datalakestore:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    this.startIpAddress = registerOutput<String>('startIpAddress');
    this.type = registerOutput<String>('type');
  }
}
