import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_rule_args.dart';

/// A virtual network rule.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
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
///     var virtualNetworkRule = new AzureNative.DBforMariaDB.VirtualNetworkRule("virtualNetworkRule", new()
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
/// 	dbformariadb "github.com/pulumi/pulumi-azure-native-sdk/dbformariadb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformariadb.NewVirtualNetworkRule(ctx, "virtualNetworkRule", &dbformariadb.VirtualNetworkRuleArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.dbformariadb.VirtualNetworkRule;
/// import com.pulumi.azurenative.dbformariadb.VirtualNetworkRuleArgs;
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
///         var virtualNetworkRule = new VirtualNetworkRule("virtualNetworkRule", VirtualNetworkRuleArgs.builder()
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
/// const virtualNetworkRule = new azure_native.dbformariadb.VirtualNetworkRule("virtualNetworkRule", {
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
/// virtual_network_rule = azure_native.dbformariadb.VirtualNetworkRule("virtualNetworkRule",
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
///   virtualNetworkRule:
///     type: azure-native:dbformariadb:VirtualNetworkRule
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
/// $ pulumi import azure-native:dbformariadb:VirtualNetworkRule vnet-firewall-rule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMariaDB/servers/{serverName}/virtualNetworkRules/{virtualNetworkRuleName}
/// ```
class VirtualNetworkRule extends pulumi.CustomResource {
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

  /// Creates a new [VirtualNetworkRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkRule]. {@macro pulumi_dbformariadb_virtual_network_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkRule(
    String name, {
    VirtualNetworkRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dbformariadb:VirtualNetworkRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    ignoreMissingVnetServiceEndpoint = registerOutput<bool?>(
      'ignoreMissingVnetServiceEndpoint',
    );
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    virtualNetworkSubnetId = registerOutput<String>('virtualNetworkSubnetId');
  }
}
