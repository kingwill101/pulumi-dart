import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_outbound_rule_response.dart';
import 'outbound_rule_args.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var outboundRule = new AzureNative.MachineLearningServices.OutboundRule("outboundRule", new()
///     {
///         ManagedNetworkName = "default",
///         Properties = new AzureNative.MachineLearningServices.Inputs.FqdnOutboundRuleArgs
///         {
///             Category = AzureNative.MachineLearningServices.RuleCategory.UserDefined,
///             Destination = "destination_endpoint",
///             Status = AzureNative.MachineLearningServices.RuleStatus.Active,
///             Type = "FQDN",
///         },
///         ResourceGroupName = "test-rg",
///         RuleName = "rule_name_1",
///         WorkspaceName = "aml-workspace-name",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewOutboundRule(ctx, "outboundRule", &machinelearningservices.OutboundRuleArgs{
/// 			ManagedNetworkName: pulumi.String("default"),
/// 			Properties: &machinelearningservices.FqdnOutboundRuleArgs{
/// 				Category:    pulumi.String(machinelearningservices.RuleCategoryUserDefined),
/// 				Destination: pulumi.String("destination_endpoint"),
/// 				Status:      pulumi.String(machinelearningservices.RuleStatusActive),
/// 				Type:        pulumi.String("FQDN"),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			RuleName:          pulumi.String("rule_name_1"),
/// 			WorkspaceName:     pulumi.String("aml-workspace-name"),
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
/// import com.pulumi.azurenative.machinelearningservices.OutboundRule;
/// import com.pulumi.azurenative.machinelearningservices.OutboundRuleArgs;
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
///             .managedNetworkName("default")
///             .properties(FqdnOutboundRuleArgs.builder()
///                 .category("UserDefined")
///                 .destination("destination_endpoint")
///                 .status("Active")
///                 .type("FQDN")
///                 .build())
///             .resourceGroupName("test-rg")
///             .ruleName("rule_name_1")
///             .workspaceName("aml-workspace-name")
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
/// const outboundRule = new azure_native.machinelearningservices.OutboundRule("outboundRule", {
///     managedNetworkName: "default",
///     properties: {
///         category: azure_native.machinelearningservices.RuleCategory.UserDefined,
///         destination: "destination_endpoint",
///         status: azure_native.machinelearningservices.RuleStatus.Active,
///         type: "FQDN",
///     },
///     resourceGroupName: "test-rg",
///     ruleName: "rule_name_1",
///     workspaceName: "aml-workspace-name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// outbound_rule = azure_native.machinelearningservices.OutboundRule("outboundRule",
///     managed_network_name="default",
///     properties={
///         "category": azure_native.machinelearningservices.RuleCategory.USER_DEFINED,
///         "destination": "destination_endpoint",
///         "status": azure_native.machinelearningservices.RuleStatus.ACTIVE,
///         "type": "FQDN",
///     },
///     resource_group_name="test-rg",
///     rule_name="rule_name_1",
///     workspace_name="aml-workspace-name")
///
/// ```
///
/// ```yaml
/// resources:
///   outboundRule:
///     type: azure-native:machinelearningservices:OutboundRule
///     properties:
///       managedNetworkName: default
///       properties:
///         category: UserDefined
///         destination: destination_endpoint
///         status: Active
///         type: FQDN
///       resourceGroupName: test-rg
///       ruleName: rule_name_1
///       workspaceName: aml-workspace-name
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
/// $ pulumi import azure-native:machinelearningservices:OutboundRule rule_name_1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/managedNetworks/{managedNetworkName}/outboundRules/{ruleName}
/// ```
class OutboundRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Outbound Rule for the managed network of a machine learning workspace.
  late final pulumi.Output<FqdnOutboundRuleResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OutboundRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutboundRule]. {@macro pulumi_machinelearningservices_outbound_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutboundRule(
    String name, {
    OutboundRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:OutboundRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FqdnOutboundRuleResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
