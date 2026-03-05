import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_rule_args.dart';

/// Data Lake Store virtual network rule information.
///
/// Uses Azure REST API version 2016-11-01. In version 2.x of the Azure Native provider, it used API version 2016-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the specified virtual network rule. During update, the virtual network rule with the specified name will be replaced with this new virtual network rule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkRule = new AzureNative.DataLakeStore.VirtualNetworkRule("virtualNetworkRule", new()
///     {
///         AccountName = "contosoadla",
///         ResourceGroupName = "contosorg",
///         SubnetId = "test_subnetId",
///         VirtualNetworkRuleName = "test_virtual_network_rules_name",
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
/// 		_, err := datalakestore.NewVirtualNetworkRule(ctx, "virtualNetworkRule", &datalakestore.VirtualNetworkRuleArgs{
/// 			AccountName:            pulumi.String("contosoadla"),
/// 			ResourceGroupName:      pulumi.String("contosorg"),
/// 			SubnetId:               pulumi.String("test_subnetId"),
/// 			VirtualNetworkRuleName: pulumi.String("test_virtual_network_rules_name"),
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
/// import com.pulumi.azurenative.datalakestore.VirtualNetworkRule;
/// import com.pulumi.azurenative.datalakestore.VirtualNetworkRuleArgs;
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
///             .accountName("contosoadla")
///             .resourceGroupName("contosorg")
///             .subnetId("test_subnetId")
///             .virtualNetworkRuleName("test_virtual_network_rules_name")
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
/// const virtualNetworkRule = new azure_native.datalakestore.VirtualNetworkRule("virtualNetworkRule", {
///     accountName: "contosoadla",
///     resourceGroupName: "contosorg",
///     subnetId: "test_subnetId",
///     virtualNetworkRuleName: "test_virtual_network_rules_name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_rule = azure_native.datalakestore.VirtualNetworkRule("virtualNetworkRule",
///     account_name="contosoadla",
///     resource_group_name="contosorg",
///     subnet_id="test_subnetId",
///     virtual_network_rule_name="test_virtual_network_rules_name")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkRule:
///     type: azure-native:datalakestore:VirtualNetworkRule
///     properties:
///       accountName: contosoadla
///       resourceGroupName: contosorg
///       subnetId: test_subnetId
///       virtualNetworkRuleName: test_virtual_network_rules_name
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
/// $ pulumi import azure-native:datalakestore:VirtualNetworkRule test_virtual_network_rules_name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeStore/accounts/{accountName}/virtualNetworkRules/{virtualNetworkRuleName}
/// ```
class VirtualNetworkRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The resource identifier for the subnet.
  late final pulumi.Output<String> subnetId;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualNetworkRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkRule]. {@macro pulumi_datalakestore_virtual_network_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkRule(
    String name, {
    VirtualNetworkRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datalakestore:VirtualNetworkRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    subnetId = registerOutput<String>('subnetId');
    type = registerOutput<String>('type');
  }
}
