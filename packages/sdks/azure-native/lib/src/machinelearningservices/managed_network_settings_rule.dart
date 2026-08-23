import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_outbound_rule_response.dart';
import 'managed_network_settings_rule_args.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate ManagedNetworkSettingsRule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedNetworkSettingsRule = new AzureNative.MachineLearningServices.ManagedNetworkSettingsRule("managedNetworkSettingsRule", new()
///     {
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
/// 		_, err := machinelearningservices.NewManagedNetworkSettingsRule(ctx, "managedNetworkSettingsRule", &machinelearningservices.ManagedNetworkSettingsRuleArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_machinelearningservices_managednetworksettingsrule" "managedNetworkSettingsRule" {
///   properties = {
///     "category"    = "UserDefined"
///     "destination" = "destination_endpoint"
///     "status"      = "Active"
///     "type"        = "FQDN"
///   }
///   resource_group_name = "test-rg"
///   rule_name           = "rule_name_1"
///   workspace_name      = "aml-workspace-name"
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
/// import com.pulumi.azurenative.machinelearningservices.ManagedNetworkSettingsRule;
/// import com.pulumi.azurenative.machinelearningservices.ManagedNetworkSettingsRuleArgs;
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
///         var managedNetworkSettingsRule = new ManagedNetworkSettingsRule("managedNetworkSettingsRule", ManagedNetworkSettingsRuleArgs.builder()
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
/// const managedNetworkSettingsRule = new azure_native.machinelearningservices.ManagedNetworkSettingsRule("managedNetworkSettingsRule", {
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
/// managed_network_settings_rule = azure_native.machinelearningservices.ManagedNetworkSettingsRule("managedNetworkSettingsRule",
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
///   managedNetworkSettingsRule:
///     type: azure-native:machinelearningservices:ManagedNetworkSettingsRule
///     properties:
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
/// $ pulumi import azure-native:machinelearningservices:ManagedNetworkSettingsRule rule_name_1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/outboundRules/{ruleName}
/// ```
class ManagedNetworkSettingsRule extends pulumi.CustomResource {
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

  /// Creates a new [ManagedNetworkSettingsRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedNetworkSettingsRule]. {@macro pulumi_machinelearningservices_managed_network_settings_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedNetworkSettingsRule(
    String name, {
    ManagedNetworkSettingsRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:ManagedNetworkSettingsRule',
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
