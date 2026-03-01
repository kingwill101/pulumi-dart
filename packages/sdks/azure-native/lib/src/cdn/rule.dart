import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule_cache_expiration_action_response.dart';
import 'delivery_rule_client_port_condition_response.dart';
import 'rule_args.dart';
import 'system_data_response.dart';

/// Friendly Rules name mapping to the any Rules or secret related information.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Rules_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rule = new AzureNative.Cdn.Rule("rule", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Cdn.Inputs.DeliveryRuleResponseHeaderActionArgs
///             {
///                 Name = "ModifyResponseHeader",
///                 Parameters = new AzureNative.Cdn.Inputs.HeaderActionParametersArgs
///                 {
///                     HeaderAction = AzureNative.Cdn.HeaderAction.Overwrite,
///                     HeaderName = "X-CDN",
///                     TypeName = "DeliveryRuleHeaderActionParameters",
///                     Value = "MSFT",
///                 },
///             },
///         },
///         Conditions = new[]
///         {
///             new AzureNative.Cdn.Inputs.DeliveryRuleRequestMethodConditionArgs
///             {
///                 Name = "RequestMethod",
///                 Parameters = new AzureNative.Cdn.Inputs.RequestMethodMatchConditionParametersArgs
///                 {
///                     MatchValues = new[]
///                     {
///                         AzureNative.Cdn.RequestMethodMatchValue.GET,
///                     },
///                     NegateCondition = false,
///                     Operator = AzureNative.Cdn.RequestMethodOperator.Equal,
///                     TypeName = "DeliveryRuleRequestMethodConditionParameters",
///                 },
///             },
///         },
///         Order = 1,
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         RuleName = "rule1",
///         RuleSetName = "ruleSet1",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewRule(ctx, "rule", &cdn.RuleArgs{
/// 			Actions: pulumi.Array{
/// 				cdn.DeliveryRuleResponseHeaderAction{
/// 					Name: "ModifyResponseHeader",
/// 					Parameters: cdn.HeaderActionParameters{
/// 						HeaderAction: cdn.HeaderActionOverwrite,
/// 						HeaderName:   "X-CDN",
/// 						TypeName:     "DeliveryRuleHeaderActionParameters",
/// 						Value:        "MSFT",
/// 					},
/// 				},
/// 			},
/// 			Conditions: pulumi.Array{
/// 				cdn.DeliveryRuleRequestMethodCondition{
/// 					Name: "RequestMethod",
/// 					Parameters: cdn.RequestMethodMatchConditionParameters{
/// 						MatchValues: []cdn.RequestMethodMatchValue{
/// 							cdn.RequestMethodMatchValueGET,
/// 						},
/// 						NegateCondition: false,
/// 						Operator:        cdn.RequestMethodOperatorEqual,
/// 						TypeName:        "DeliveryRuleRequestMethodConditionParameters",
/// 					},
/// 				},
/// 			},
/// 			Order:             pulumi.Int(1),
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			RuleName:          pulumi.String("rule1"),
/// 			RuleSetName:       pulumi.String("ruleSet1"),
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
/// import com.pulumi.azurenative.cdn.Rule;
/// import com.pulumi.azurenative.cdn.RuleArgs;
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
///         var rule = new Rule("rule", RuleArgs.builder()
///             .actions(DeliveryRuleResponseHeaderActionArgs.builder()
///                 .name("ModifyResponseHeader")
///                 .parameters(HeaderActionParametersArgs.builder()
///                     .headerAction("Overwrite")
///                     .headerName("X-CDN")
///                     .typeName("DeliveryRuleHeaderActionParameters")
///                     .value("MSFT")
///                     .build())
///                 .build())
///             .conditions(DeliveryRuleRequestMethodConditionArgs.builder()
///                 .name("RequestMethod")
///                 .parameters(RequestMethodMatchConditionParametersArgs.builder()
///                     .matchValues("GET")
///                     .negateCondition(false)
///                     .operator("Equal")
///                     .typeName("DeliveryRuleRequestMethodConditionParameters")
///                     .build())
///                 .build())
///             .order(1)
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .ruleName("rule1")
///             .ruleSetName("ruleSet1")
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
/// const rule = new azure_native.cdn.Rule("rule", {
///     actions: [{
///         name: "ModifyResponseHeader",
///         parameters: {
///             headerAction: azure_native.cdn.HeaderAction.Overwrite,
///             headerName: "X-CDN",
///             typeName: "DeliveryRuleHeaderActionParameters",
///             value: "MSFT",
///         },
///     }],
///     conditions: [{
///         name: "RequestMethod",
///         parameters: {
///             matchValues: [azure_native.cdn.RequestMethodMatchValue.GET],
///             negateCondition: false,
///             operator: azure_native.cdn.RequestMethodOperator.Equal,
///             typeName: "DeliveryRuleRequestMethodConditionParameters",
///         },
///     }],
///     order: 1,
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     ruleName: "rule1",
///     ruleSetName: "ruleSet1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rule = azure_native.cdn.Rule("rule",
///     actions=[{
///         "name": "ModifyResponseHeader",
///         "parameters": {
///             "header_action": azure_native.cdn.HeaderAction.OVERWRITE,
///             "header_name": "X-CDN",
///             "type_name": "DeliveryRuleHeaderActionParameters",
///             "value": "MSFT",
///         },
///     }],
///     conditions=[{
///         "name": "RequestMethod",
///         "parameters": {
///             "match_values": [azure_native.cdn.RequestMethodMatchValue.GET],
///             "negate_condition": False,
///             "operator": azure_native.cdn.RequestMethodOperator.EQUAL,
///             "type_name": "DeliveryRuleRequestMethodConditionParameters",
///         },
///     }],
///     order=1,
///     profile_name="profile1",
///     resource_group_name="RG",
///     rule_name="rule1",
///     rule_set_name="ruleSet1")
///
/// ```
///
/// ```yaml
/// resources:
///   rule:
///     type: azure-native:cdn:Rule
///     properties:
///       actions:
///         - name: ModifyResponseHeader
///           parameters:
///             headerAction: Overwrite
///             headerName: X-CDN
///             typeName: DeliveryRuleHeaderActionParameters
///             value: MSFT
///       conditions:
///         - name: RequestMethod
///           parameters:
///             matchValues:
///               - GET
///             negateCondition: false
///             operator: Equal
///             typeName: DeliveryRuleRequestMethodConditionParameters
///       order: 1
///       profileName: profile1
///       resourceGroupName: RG
///       ruleName: rule1
///       ruleSetName: ruleSet1
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
/// $ pulumi import azure-native:cdn:Rule rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/ruleSets/{ruleSetName}/rules/{ruleName}
/// ```
class Rule extends pulumi.CustomResource {
  /// A list of actions that are executed when all the conditions of a rule are satisfied.
  late final pulumi.Output<List<DeliveryRuleCacheExpirationActionResponse>?> actions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A list of conditions that must be matched for the actions to be executed
  late final pulumi.Output<List<DeliveryRuleClientPortConditionResponse>?> conditions;
  late final pulumi.Output<String> deploymentStatus;
  /// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  late final pulumi.Output<String?> matchProcessingBehavior;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  late final pulumi.Output<int?> order;
  /// Provisioning status
  late final pulumi.Output<String> provisioningState;
  /// The name of the rule set containing the rule.
  late final pulumi.Output<String> ruleSetName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_cdn_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<DeliveryRuleCacheExpirationActionResponse>?>('actions');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.conditions = registerOutput<List<DeliveryRuleClientPortConditionResponse>?>('conditions');
    this.deploymentStatus = registerOutput<String>('deploymentStatus');
    this.matchProcessingBehavior = registerOutput<String?>('matchProcessingBehavior');
    this.name = registerOutput<String>('name');
    this.order = registerOutput<int?>('order');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.ruleSetName = registerOutput<String>('ruleSetName');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
