import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_user_rule_args.dart';
import 'system_data_response.dart';

/// Network security default user rule.
///
/// Uses Azure REST API version 2022-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a default user rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultUserRule = new AzureNative.Network.DefaultUserRule("defaultUserRule", new()
///     {
///         ConfigurationName = "myTestSecurityConfig",
///         Flag = "AllowVnetInbound",
///         Kind = "Default",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleDefaultUserRule",
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
/// 		_, err := network.NewDefaultUserRule(ctx, "defaultUserRule", &network.DefaultUserRuleArgs{
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
/// 			Flag:               pulumi.String("AllowVnetInbound"),
/// 			Kind:               pulumi.String("Default"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleDefaultUserRule"),
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
/// import com.pulumi.azurenative.network.DefaultUserRule;
/// import com.pulumi.azurenative.network.DefaultUserRuleArgs;
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
///         var defaultUserRule = new DefaultUserRule("defaultUserRule", DefaultUserRuleArgs.builder()
///             .configurationName("myTestSecurityConfig")
///             .flag("AllowVnetInbound")
///             .kind("Default")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleDefaultUserRule")
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
/// const defaultUserRule = new azure_native.network.DefaultUserRule("defaultUserRule", {
///     configurationName: "myTestSecurityConfig",
///     flag: "AllowVnetInbound",
///     kind: "Default",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleDefaultUserRule",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// default_user_rule = azure_native.network.DefaultUserRule("defaultUserRule",
///     configuration_name="myTestSecurityConfig",
///     flag="AllowVnetInbound",
///     kind="Default",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleDefaultUserRule")
///
/// ```
///
/// ```yaml
/// resources:
///   defaultUserRule:
///     type: azure-native:network:DefaultUserRule
///     properties:
///       configurationName: myTestSecurityConfig
///       flag: AllowVnetInbound
///       kind: Default
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleDefaultUserRule
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a user rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultUserRule = new AzureNative.Network.DefaultUserRule("defaultUserRule", new()
///     {
///         ConfigurationName = "myTestSecurityConfig",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleUserRule",
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
/// 		_, err := network.NewDefaultUserRule(ctx, "defaultUserRule", &network.DefaultUserRuleArgs{
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleUserRule"),
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
/// import com.pulumi.azurenative.network.DefaultUserRule;
/// import com.pulumi.azurenative.network.DefaultUserRuleArgs;
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
///         var defaultUserRule = new DefaultUserRule("defaultUserRule", DefaultUserRuleArgs.builder()
///             .configurationName("myTestSecurityConfig")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleUserRule")
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
/// const defaultUserRule = new azure_native.network.DefaultUserRule("defaultUserRule", {
///     configurationName: "myTestSecurityConfig",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleUserRule",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// default_user_rule = azure_native.network.DefaultUserRule("defaultUserRule",
///     configuration_name="myTestSecurityConfig",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleUserRule")
///
/// ```
///
/// ```yaml
/// resources:
///   defaultUserRule:
///     type: azure-native:network:DefaultUserRule
///     properties:
///       configurationName: myTestSecurityConfig
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleUserRule
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
/// $ pulumi import azure-native:network:DefaultUserRule SampleUserRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityUserConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}/rules/{ruleName}
/// ```
class DefaultUserRule extends pulumi.CustomResource {
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

  /// Network protocol this rule applies to.
  late final pulumi.Output<String> protocol;

  /// The provisioning state of the security configuration user rule resource.
  late final pulumi.Output<String> provisioningState;

  /// The source port ranges.
  late final pulumi.Output<List<String>> sourcePortRanges;

  /// The CIDR or source IP ranges.
  late final pulumi.Output<List<Map<String, dynamic>>> sources;

  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DefaultUserRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultUserRule]. {@macro pulumi_network_default_user_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultUserRule(
    String name, {
    DefaultUserRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:DefaultUserRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String>('description');
    destinationPortRanges = registerOutput<List<String>>(
      'destinationPortRanges',
    );
    destinations = registerOutput<List<Map<String, dynamic>>>('destinations');
    direction = registerOutput<String>('direction');
    etag = registerOutput<String>('etag');
    flag = registerOutput<String?>('flag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    sourcePortRanges = registerOutput<List<String>>('sourcePortRanges');
    sources = registerOutput<List<Map<String, dynamic>>>('sources');
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
