import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';
import 'system_data_response.dart';

/// Firewall rule.
///
/// Uses Azure REST API version 2025-08-01. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new firewall rule or update an existing firewall rule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallRule = new AzureNative.DBforPostgreSQL.FirewallRule("firewallRule", new()
///     {
///         EndIpAddress = "255.255.255.255",
///         FirewallRuleName = "examplefirewallrule",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
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
/// 		_, err := dbforpostgresql.NewFirewallRule(ctx, "firewallRule", &dbforpostgresql.FirewallRuleArgs{
/// 			EndIpAddress:      pulumi.String("255.255.255.255"),
/// 			FirewallRuleName:  pulumi.String("examplefirewallrule"),
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
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
/// resource "azure-native_dbforpostgresql_firewallrule" "firewallRule" {
///   end_ip_address      = "255.255.255.255"
///   firewall_rule_name  = "examplefirewallrule"
///   resource_group_name = "exampleresourcegroup"
///   server_name         = "exampleserver"
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
/// import com.pulumi.azurenative.dbforpostgresql.FirewallRule;
/// import com.pulumi.azurenative.dbforpostgresql.FirewallRuleArgs;
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
///         var firewallRule = new FirewallRule("firewallRule", FirewallRuleArgs.builder()
///             .endIpAddress("255.255.255.255")
///             .firewallRuleName("examplefirewallrule")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
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
/// const firewallRule = new azure_native.dbforpostgresql.FirewallRule("firewallRule", {
///     endIpAddress: "255.255.255.255",
///     firewallRuleName: "examplefirewallrule",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     startIpAddress: "0.0.0.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_rule = azure_native.dbforpostgresql.FirewallRule("firewallRule",
///     end_ip_address="255.255.255.255",
///     firewall_rule_name="examplefirewallrule",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     start_ip_address="0.0.0.0")
///
/// ```
///
/// ```yaml
/// resources:
///   firewallRule:
///     type: azure-native:dbforpostgresql:FirewallRule
///     properties:
///       endIpAddress: 255.255.255.255
///       firewallRuleName: examplefirewallrule
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
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
/// $ pulumi import azure-native:dbforpostgresql:FirewallRule myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/firewallRules/{firewallRuleName}
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// IP address defining the end of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  late final pulumi.Output<String> endIpAddress;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// IP address defining the start of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  late final pulumi.Output<String> startIpAddress;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_dbforpostgresql_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIpAddress = registerOutput<String>('endIpAddress');
    this.name = registerOutput<String>('name');
    startIpAddress = registerOutput<String>('startIpAddress');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
