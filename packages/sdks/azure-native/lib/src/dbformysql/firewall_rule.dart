import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';
import 'system_data_response.dart';

/// Represents a server firewall rule.
///
/// Uses Azure REST API version 2023-12-30. In version 2.x of the Azure Native provider, it used API version 2022-01-01.
///
/// Other available API versions: 2022-01-01, 2023-06-01-preview, 2023-06-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a firewall rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallRule = new AzureNative.DBforMySQL.FirewallRule("firewallRule", new()
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
/// 		_, err := dbformysql.NewFirewallRule(ctx, "firewallRule", &dbformysql.FirewallRuleArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.dbformysql.FirewallRule;
/// import com.pulumi.azurenative.dbformysql.FirewallRuleArgs;
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
/// const firewallRule = new azure_native.dbformysql.FirewallRule("firewallRule", {
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
/// firewall_rule = azure_native.dbformysql.FirewallRule("firewallRule",
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
///   firewallRule:
///     type: azure-native:dbformysql:FirewallRule
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
/// $ pulumi import azure-native:dbformysql:FirewallRule rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/firewallRules/{firewallRuleName}
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The end IP address of the server firewall rule. Must be IPv4 format.
  late final pulumi.Output<String> endIpAddress;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The start IP address of the server firewall rule. Must be IPv4 format.
  late final pulumi.Output<String> startIpAddress;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_dbformysql_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dbformysql:FirewallRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    startIpAddress = registerOutput<String>('startIpAddress');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
