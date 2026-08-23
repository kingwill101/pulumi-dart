import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_server_virtual_network_rule_args.dart';

/// A virtual network rule.
///
/// Uses Azure REST API version 2017-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a virtual network rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var singleServerVirtualNetworkRule = new AzureNative.DBforPostgreSQL.SingleServerVirtualNetworkRule("singleServerVirtualNetworkRule", new()
///     {
///         IgnoreMissingVnetServiceEndpoint = false,
///         ResourceGroupName = "TestGroup",
///         ServerName = "vnet-test-svr",
///         VirtualNetworkRuleName = "vnet-firewall-rule",
///         VirtualNetworkSubnetId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
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
/// 		_, err := dbforpostgresql.NewSingleServerVirtualNetworkRule(ctx, "singleServerVirtualNetworkRule", &dbforpostgresql.SingleServerVirtualNetworkRuleArgs{
/// 			IgnoreMissingVnetServiceEndpoint: pulumi.Bool(false),
/// 			ResourceGroupName:                pulumi.String("TestGroup"),
/// 			ServerName:                       pulumi.String("vnet-test-svr"),
/// 			VirtualNetworkRuleName:           pulumi.String("vnet-firewall-rule"),
/// 			VirtualNetworkSubnetId:           pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet"),
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
/// resource "azure-native_dbforpostgresql_singleservervirtualnetworkrule" "singleServerVirtualNetworkRule" {
///   ignore_missing_vnet_service_endpoint = false
///   resource_group_name                  = "TestGroup"
///   server_name                          = "vnet-test-svr"
///   virtual_network_rule_name            = "vnet-firewall-rule"
///   virtual_network_subnet_id            = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet"
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
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerVirtualNetworkRule;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerVirtualNetworkRuleArgs;
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
///         var singleServerVirtualNetworkRule = new SingleServerVirtualNetworkRule("singleServerVirtualNetworkRule", SingleServerVirtualNetworkRuleArgs.builder()
///             .ignoreMissingVnetServiceEndpoint(false)
///             .resourceGroupName("TestGroup")
///             .serverName("vnet-test-svr")
///             .virtualNetworkRuleName("vnet-firewall-rule")
///             .virtualNetworkSubnetId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet")
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
/// const singleServerVirtualNetworkRule = new azure_native.dbforpostgresql.SingleServerVirtualNetworkRule("singleServerVirtualNetworkRule", {
///     ignoreMissingVnetServiceEndpoint: false,
///     resourceGroupName: "TestGroup",
///     serverName: "vnet-test-svr",
///     virtualNetworkRuleName: "vnet-firewall-rule",
///     virtualNetworkSubnetId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// single_server_virtual_network_rule = azure_native.dbforpostgresql.SingleServerVirtualNetworkRule("singleServerVirtualNetworkRule",
///     ignore_missing_vnet_service_endpoint=False,
///     resource_group_name="TestGroup",
///     server_name="vnet-test-svr",
///     virtual_network_rule_name="vnet-firewall-rule",
///     virtual_network_subnet_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet")
///
/// ```
///
/// ```yaml
/// resources:
///   singleServerVirtualNetworkRule:
///     type: azure-native:dbforpostgresql:SingleServerVirtualNetworkRule
///     properties:
///       ignoreMissingVnetServiceEndpoint: false
///       resourceGroupName: TestGroup
///       serverName: vnet-test-svr
///       virtualNetworkRuleName: vnet-firewall-rule
///       virtualNetworkSubnetId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet
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
/// $ pulumi import azure-native:dbforpostgresql:SingleServerVirtualNetworkRule vnet-firewall-rule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/servers/{serverName}/virtualNetworkRules/{virtualNetworkRuleName}
/// ```
class SingleServerVirtualNetworkRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Create firewall rule before the virtual network has vnet service endpoint enabled.
  late final pulumi.Output<bool?> ignoreMissingVnetServiceEndpoint;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Virtual Network Rule State
  late final pulumi.Output<String> state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The ARM resource id of the virtual network subnet.
  late final pulumi.Output<String> virtualNetworkSubnetId;

  /// Creates a new [SingleServerVirtualNetworkRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleServerVirtualNetworkRule]. {@macro pulumi_dbforpostgresql_single_server_virtual_network_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleServerVirtualNetworkRule(
    String name, {
    SingleServerVirtualNetworkRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:SingleServerVirtualNetworkRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    ignoreMissingVnetServiceEndpoint = registerOutput<bool?>('ignoreMissingVnetServiceEndpoint');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    virtualNetworkSubnetId = registerOutput<String>('virtualNetworkSubnetId');
  }
}
