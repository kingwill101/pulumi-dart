import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_admin_rule_args.dart';
import 'system_data_response.dart';

/// Network default admin rule.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a admin rule with network group as source or destination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultAdminRule = new AzureNative.Network.DefaultAdminRule("defaultAdminRule", new()
///     {
///         ConfigurationName = "myTestSecurityConfig",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleAdminRule",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewDefaultAdminRule(ctx, "defaultAdminRule", &network.DefaultAdminRuleArgs{
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleAdminRule"),
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
/// resource "azure-native_network_defaultadminrule" "defaultAdminRule" {
///   configuration_name   = "myTestSecurityConfig"
///   network_manager_name = "testNetworkManager"
///   resource_group_name  = "rg1"
///   rule_collection_name = "testRuleCollection"
///   rule_name            = "SampleAdminRule"
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
/// import com.pulumi.azurenative.network.DefaultAdminRule;
/// import com.pulumi.azurenative.network.DefaultAdminRuleArgs;
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
///         var defaultAdminRule = new DefaultAdminRule("defaultAdminRule", DefaultAdminRuleArgs.builder()
///             .configurationName("myTestSecurityConfig")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleAdminRule")
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
/// const defaultAdminRule = new azure_native.network.DefaultAdminRule("defaultAdminRule", {
///     configurationName: "myTestSecurityConfig",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleAdminRule",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// default_admin_rule = azure_native.network.DefaultAdminRule("defaultAdminRule",
///     configuration_name="myTestSecurityConfig",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleAdminRule")
///
/// ```
///
/// ```yaml
/// resources:
///   defaultAdminRule:
///     type: azure-native:network:DefaultAdminRule
///     properties:
///       configurationName: myTestSecurityConfig
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleAdminRule
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an admin rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultAdminRule = new AzureNative.Network.DefaultAdminRule("defaultAdminRule", new()
///     {
///         ConfigurationName = "myTestSecurityConfig",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleAdminRule",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewDefaultAdminRule(ctx, "defaultAdminRule", &network.DefaultAdminRuleArgs{
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleAdminRule"),
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
/// resource "azure-native_network_defaultadminrule" "defaultAdminRule" {
///   configuration_name   = "myTestSecurityConfig"
///   network_manager_name = "testNetworkManager"
///   resource_group_name  = "rg1"
///   rule_collection_name = "testRuleCollection"
///   rule_name            = "SampleAdminRule"
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
/// import com.pulumi.azurenative.network.DefaultAdminRule;
/// import com.pulumi.azurenative.network.DefaultAdminRuleArgs;
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
///         var defaultAdminRule = new DefaultAdminRule("defaultAdminRule", DefaultAdminRuleArgs.builder()
///             .configurationName("myTestSecurityConfig")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleAdminRule")
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
/// const defaultAdminRule = new azure_native.network.DefaultAdminRule("defaultAdminRule", {
///     configurationName: "myTestSecurityConfig",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleAdminRule",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// default_admin_rule = azure_native.network.DefaultAdminRule("defaultAdminRule",
///     configuration_name="myTestSecurityConfig",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleAdminRule")
///
/// ```
///
/// ```yaml
/// resources:
///   defaultAdminRule:
///     type: azure-native:network:DefaultAdminRule
///     properties:
///       configurationName: myTestSecurityConfig
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleAdminRule
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
/// $ pulumi import azure-native:network:DefaultAdminRule SampleAdminRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityAdminConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}/rules/{ruleName}
/// ```
class DefaultAdminRule extends pulumi.CustomResource {
  /// Indicates the access allowed for this particular rule
  late final pulumi.Output<String> access;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description for this rule. Restricted to 140 chars.
  late final pulumi.Output<String> description;
  /// The destination port ranges.
  late final pulumi.Output<List<String>> destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  late final pulumi.Output<List<Map<String, dynamic>>> destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  late final pulumi.Output<String> direction;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Default rule flag.
  late final pulumi.Output<String?> flag;
  /// Whether the rule is custom or default.
  /// Expected value is 'Default'.
  late final pulumi.Output<String> kind;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The priority of the rule. The value can be between 1 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  late final pulumi.Output<int> priority;
  /// Network protocol this rule applies to.
  late final pulumi.Output<String> protocol;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The source port ranges.
  late final pulumi.Output<List<String>> sourcePortRanges;
  /// The CIDR or source IP ranges.
  late final pulumi.Output<List<Map<String, dynamic>>> sources;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DefaultAdminRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultAdminRule]. {@macro pulumi_network_default_admin_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultAdminRule(
    String name, {
    DefaultAdminRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:DefaultAdminRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    access = registerOutput<String>('access');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String>('description');
    destinationPortRanges = registerOutput<List<String>>('destinationPortRanges');
    destinations = registerOutput<List<Map<String, dynamic>>>('destinations');
    direction = registerOutput<String>('direction');
    etag = registerOutput<String>('etag');
    flag = registerOutput<String?>('flag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    sourcePortRanges = registerOutput<List<String>>('sourcePortRanges');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
