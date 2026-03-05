import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_outbound_rule_response.dart';
import 'outbound_rule_args.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate OutboundRule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var outboundRule = new AzureNative.CognitiveServices.OutboundRule("outboundRule", new()
///     {
///         AccountName = "cognitive-account-name",
///         ManagedNetworkName = "default",
///         Properties = new AzureNative.CognitiveServices.Inputs.FqdnOutboundRuleArgs
///         {
///             Category = AzureNative.CognitiveServices.RuleCategory.UserDefined,
///             Destination = "destination_endpoint",
///             Status = AzureNative.CognitiveServices.RuleStatus.Active,
///             Type = "FQDN",
///         },
///         ResourceGroupName = "test-rg",
///         RuleName = "rule_name_1",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewOutboundRule(ctx, "outboundRule", &cognitiveservices.OutboundRuleArgs{
/// 			AccountName:        pulumi.String("cognitive-account-name"),
/// 			ManagedNetworkName: pulumi.String("default"),
/// 			Properties: &cognitiveservices.FqdnOutboundRuleArgs{
/// 				Category:    pulumi.String(cognitiveservices.RuleCategoryUserDefined),
/// 				Destination: pulumi.String("destination_endpoint"),
/// 				Status:      pulumi.String(cognitiveservices.RuleStatusActive),
/// 				Type:        pulumi.String("FQDN"),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			RuleName:          pulumi.String("rule_name_1"),
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
/// import com.pulumi.azurenative.cognitiveservices.OutboundRule;
/// import com.pulumi.azurenative.cognitiveservices.OutboundRuleArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.FqdnOutboundRuleArgs;
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
///         var outboundRule = new OutboundRule("outboundRule", OutboundRuleArgs.builder()
///             .accountName("cognitive-account-name")
///             .managedNetworkName("default")
///             .properties(FqdnOutboundRuleArgs.builder()
///                 .category("UserDefined")
///                 .destination("destination_endpoint")
///                 .status("Active")
///                 .type("FQDN")
///                 .build())
///             .resourceGroupName("test-rg")
///             .ruleName("rule_name_1")
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
/// const outboundRule = new azure_native.cognitiveservices.OutboundRule("outboundRule", {
///     accountName: "cognitive-account-name",
///     managedNetworkName: "default",
///     properties: {
///         category: azure_native.cognitiveservices.RuleCategory.UserDefined,
///         destination: "destination_endpoint",
///         status: azure_native.cognitiveservices.RuleStatus.Active,
///         type: "FQDN",
///     },
///     resourceGroupName: "test-rg",
///     ruleName: "rule_name_1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// outbound_rule = azure_native.cognitiveservices.OutboundRule("outboundRule",
///     account_name="cognitive-account-name",
///     managed_network_name="default",
///     properties={
///         "category": azure_native.cognitiveservices.RuleCategory.USER_DEFINED,
///         "destination": "destination_endpoint",
///         "status": azure_native.cognitiveservices.RuleStatus.ACTIVE,
///         "type": "FQDN",
///     },
///     resource_group_name="test-rg",
///     rule_name="rule_name_1")
///
/// ```
///
/// ```yaml
/// resources:
///   outboundRule:
///     type: azure-native:cognitiveservices:OutboundRule
///     properties:
///       accountName: cognitive-account-name
///       managedNetworkName: default
///       properties:
///         category: UserDefined
///         destination: destination_endpoint
///         status: Active
///         type: FQDN
///       resourceGroupName: test-rg
///       ruleName: rule_name_1
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
/// $ pulumi import azure-native:cognitiveservices:OutboundRule rule_name_1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/managedNetworks/{managedNetworkName}/outboundRules/{ruleName}
/// ```
class OutboundRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Outbound Rule for the managed network of a cognitive services account.
  late final pulumi.Output<FqdnOutboundRuleResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OutboundRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutboundRule]. {@macro pulumi_cognitiveservices_outbound_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutboundRule(
    String name, {
    OutboundRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:OutboundRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FqdnOutboundRuleResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FqdnOutboundRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
