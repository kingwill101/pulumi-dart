import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'policy_set_definition_at_management_group_args.dart';
import 'system_data_response.dart';

/// The policy set definition.
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2020-09-01, 2021-06-01, 2023-04-01, 2024-05-01, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a policy set definition at management group level
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policySetDefinitionAtManagementGroup = new AzureNative.Authorization.PolicySetDefinitionAtManagementGroup("policySetDefinitionAtManagementGroup", new()
///     {
///         Description = "Policies to enforce low cost storage SKUs",
///         DisplayName = "Cost Management",
///         ManagementGroupId = "MyManagementGroup",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["category"] = "Cost Management",
///         },
///         PolicyDefinitions = new[]
///         {
///             new AzureNative.Authorization.Inputs.PolicyDefinitionReferenceArgs
///             {
///                 Parameters =
///                 {
///                     { "listOfAllowedSKUs", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///                     {
///                         Value = new[]
///                         {
///                             "Standard_GRS",
///                             "Standard_LRS",
///                         },
///                     } },
///                 },
///                 PolicyDefinitionId = "/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///                 PolicyDefinitionReferenceId = "Limit_Skus",
///             },
///             new AzureNative.Authorization.Inputs.PolicyDefinitionReferenceArgs
///             {
///                 Parameters =
///                 {
///                     { "prefix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///                     {
///                         Value = "DeptA",
///                     } },
///                     { "suffix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///                     {
///                         Value = "-LC",
///                     } },
///                 },
///                 PolicyDefinitionId = "/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///                 PolicyDefinitionReferenceId = "Resource_Naming",
///             },
///         },
///         PolicySetDefinitionName = "CostManagement",
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
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewPolicySetDefinitionAtManagementGroup(ctx, "policySetDefinitionAtManagementGroup", &authorization.PolicySetDefinitionAtManagementGroupArgs{
/// 			Description:       pulumi.String("Policies to enforce low cost storage SKUs"),
/// 			DisplayName:       pulumi.String("Cost Management"),
/// 			ManagementGroupId: pulumi.String("MyManagementGroup"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"category": "Cost Management",
/// 			}),
/// 			PolicyDefinitions: authorization.PolicyDefinitionReferenceArray{
/// 				&authorization.PolicyDefinitionReferenceArgs{
/// 					Parameters: authorization.ParameterValuesValueMap{
/// 						"listOfAllowedSKUs": &authorization.ParameterValuesValueArgs{
/// 							Value: pulumi.Any{
/// 								"Standard_GRS",
/// 								"Standard_LRS",
/// 							},
/// 						},
/// 					},
/// 					PolicyDefinitionId:          pulumi.String("/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1"),
/// 					PolicyDefinitionReferenceId: pulumi.String("Limit_Skus"),
/// 				},
/// 				&authorization.PolicyDefinitionReferenceArgs{
/// 					Parameters: authorization.ParameterValuesValueMap{
/// 						"prefix": &authorization.ParameterValuesValueArgs{
/// 							Value: pulumi.Any("DeptA"),
/// 						},
/// 						"suffix": &authorization.ParameterValuesValueArgs{
/// 							Value: pulumi.Any("-LC"),
/// 						},
/// 					},
/// 					PolicyDefinitionId:          pulumi.String("/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming"),
/// 					PolicyDefinitionReferenceId: pulumi.String("Resource_Naming"),
/// 				},
/// 			},
/// 			PolicySetDefinitionName: pulumi.String("CostManagement"),
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
/// import com.pulumi.azurenative.authorization.PolicySetDefinitionAtManagementGroup;
/// import com.pulumi.azurenative.authorization.PolicySetDefinitionAtManagementGroupArgs;
/// import com.pulumi.azurenative.authorization.inputs.PolicyDefinitionReferenceArgs;
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
///         var policySetDefinitionAtManagementGroup = new PolicySetDefinitionAtManagementGroup("policySetDefinitionAtManagementGroup", PolicySetDefinitionAtManagementGroupArgs.builder()
///             .description("Policies to enforce low cost storage SKUs")
///             .displayName("Cost Management")
///             .managementGroupId("MyManagementGroup")
///             .metadata(Map.of("category", "Cost Management"))
///             .policyDefinitions(
///                 PolicyDefinitionReferenceArgs.builder()
///                     .parameters(Map.of("listOfAllowedSKUs", ParameterValuesValueArgs.builder()
///                         .value(
///                             "Standard_GRS",
///                             "Standard_LRS")
///                         .build()))
///                     .policyDefinitionId("/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1")
///                     .policyDefinitionReferenceId("Limit_Skus")
///                     .build(),
///                 PolicyDefinitionReferenceArgs.builder()
///                     .parameters(Map.ofEntries(
///                         Map.entry("prefix", ParameterValuesValueArgs.builder()
///                             .value("DeptA")
///                             .build()),
///                         Map.entry("suffix", ParameterValuesValueArgs.builder()
///                             .value("-LC")
///                             .build())
///                     ))
///                     .policyDefinitionId("/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming")
///                     .policyDefinitionReferenceId("Resource_Naming")
///                     .build())
///             .policySetDefinitionName("CostManagement")
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
/// const policySetDefinitionAtManagementGroup = new azure_native.authorization.PolicySetDefinitionAtManagementGroup("policySetDefinitionAtManagementGroup", {
///     description: "Policies to enforce low cost storage SKUs",
///     displayName: "Cost Management",
///     managementGroupId: "MyManagementGroup",
///     metadata: {
///         category: "Cost Management",
///     },
///     policyDefinitions: [
///         {
///             parameters: {
///                 listOfAllowedSKUs: {
///                     value: [
///                         "Standard_GRS",
///                         "Standard_LRS",
///                     ],
///                 },
///             },
///             policyDefinitionId: "/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///             policyDefinitionReferenceId: "Limit_Skus",
///         },
///         {
///             parameters: {
///                 prefix: {
///                     value: "DeptA",
///                 },
///                 suffix: {
///                     value: "-LC",
///                 },
///             },
///             policyDefinitionId: "/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///             policyDefinitionReferenceId: "Resource_Naming",
///         },
///     ],
///     policySetDefinitionName: "CostManagement",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_set_definition_at_management_group = azure_native.authorization.PolicySetDefinitionAtManagementGroup("policySetDefinitionAtManagementGroup",
///     description="Policies to enforce low cost storage SKUs",
///     display_name="Cost Management",
///     management_group_id="MyManagementGroup",
///     metadata={
///         "category": "Cost Management",
///     },
///     policy_definitions=[
///         {
///             "parameters": {
///                 "listOfAllowedSKUs": {
///                     "value": [
///                         "Standard_GRS",
///                         "Standard_LRS",
///                     ],
///                 },
///             },
///             "policy_definition_id": "/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///             "policy_definition_reference_id": "Limit_Skus",
///         },
///         {
///             "parameters": {
///                 "prefix": {
///                     "value": "DeptA",
///                 },
///                 "suffix": {
///                     "value": "-LC",
///                 },
///             },
///             "policy_definition_id": "/providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///             "policy_definition_reference_id": "Resource_Naming",
///         },
///     ],
///     policy_set_definition_name="CostManagement")
///
/// ```
///
/// ```yaml
/// resources:
///   policySetDefinitionAtManagementGroup:
///     type: azure-native:authorization:PolicySetDefinitionAtManagementGroup
///     properties:
///       description: Policies to enforce low cost storage SKUs
///       displayName: Cost Management
///       managementGroupId: MyManagementGroup
///       metadata:
///         category: Cost Management
///       policyDefinitions:
///         - parameters:
///             listOfAllowedSKUs:
///               value:
///                 - Standard_GRS
///                 - Standard_LRS
///           policyDefinitionId: /providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1
///           policyDefinitionReferenceId: Limit_Skus
///         - parameters:
///             prefix:
///               value: DeptA
///             suffix:
///               value: -LC
///           policyDefinitionId: /providers/Microsoft.Management/managementgroups/MyManagementGroup/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming
///           policyDefinitionReferenceId: Resource_Naming
///       policySetDefinitionName: CostManagement
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy set definition with groups at management group level
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policySetDefinitionAtManagementGroup = new AzureNative.Authorization.PolicySetDefinitionAtManagementGroup("policySetDefinitionAtManagementGroup", new()
///     {
///         Description = "Policies to enforce low cost storage SKUs",
///         DisplayName = "Cost Management",
///         ManagementGroupId = "MyManagementGroup",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["category"] = "Cost Management",
///         },
///         PolicyDefinitionGroups = new[]
///         {
///             new AzureNative.Authorization.Inputs.PolicyDefinitionGroupArgs
///             {
///                 Description = "Policies designed to control spend within a subscription.",
///                 DisplayName = "Cost Management Policies",
///                 Name = "CostSaving",
///             },
///             new AzureNative.Authorization.Inputs.PolicyDefinitionGroupArgs
///             {
///                 Description = "Policies that help enforce resource organization standards within a subscription.",
///                 DisplayName = "Organizational Policies",
///                 Name = "Organizational",
///             },
///         },
///         PolicyDefinitions = new[]
///         {
///             new AzureNative.Authorization.Inputs.PolicyDefinitionReferenceArgs
///             {
///                 GroupNames = new[]
///                 {
///                     "CostSaving",
///                 },
///                 Parameters =
///                 {
///                     { "listOfAllowedSKUs", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///                     {
///                         Value = new[]
///                         {
///                             "Standard_GRS",
///                             "Standard_LRS",
///                         },
///                     } },
///                 },
///                 PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///                 PolicyDefinitionReferenceId = "Limit_Skus",
///             },
///             new AzureNative.Authorization.Inputs.PolicyDefinitionReferenceArgs
///             {
///                 GroupNames = new[]
///                 {
///                     "Organizational",
///                 },
///                 Parameters =
///                 {
///                     { "prefix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///                     {
///                         Value = "DeptA",
///                     } },
///                     { "suffix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///                     {
///                         Value = "-LC",
///                     } },
///                 },
///                 PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///                 PolicyDefinitionReferenceId = "Resource_Naming",
///             },
///         },
///         PolicySetDefinitionName = "CostManagement",
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
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewPolicySetDefinitionAtManagementGroup(ctx, "policySetDefinitionAtManagementGroup", &authorization.PolicySetDefinitionAtManagementGroupArgs{
/// 			Description:       pulumi.String("Policies to enforce low cost storage SKUs"),
/// 			DisplayName:       pulumi.String("Cost Management"),
/// 			ManagementGroupId: pulumi.String("MyManagementGroup"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"category": "Cost Management",
/// 			}),
/// 			PolicyDefinitionGroups: authorization.PolicyDefinitionGroupArray{
/// 				&authorization.PolicyDefinitionGroupArgs{
/// 					Description: pulumi.String("Policies designed to control spend within a subscription."),
/// 					DisplayName: pulumi.String("Cost Management Policies"),
/// 					Name:        pulumi.String("CostSaving"),
/// 				},
/// 				&authorization.PolicyDefinitionGroupArgs{
/// 					Description: pulumi.String("Policies that help enforce resource organization standards within a subscription."),
/// 					DisplayName: pulumi.String("Organizational Policies"),
/// 					Name:        pulumi.String("Organizational"),
/// 				},
/// 			},
/// 			PolicyDefinitions: authorization.PolicyDefinitionReferenceArray{
/// 				&authorization.PolicyDefinitionReferenceArgs{
/// 					GroupNames: pulumi.StringArray{
/// 						pulumi.String("CostSaving"),
/// 					},
/// 					Parameters: authorization.ParameterValuesValueMap{
/// 						"listOfAllowedSKUs": &authorization.ParameterValuesValueArgs{
/// 							Value: pulumi.Any{
/// 								"Standard_GRS",
/// 								"Standard_LRS",
/// 							},
/// 						},
/// 					},
/// 					PolicyDefinitionId:          pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1"),
/// 					PolicyDefinitionReferenceId: pulumi.String("Limit_Skus"),
/// 				},
/// 				&authorization.PolicyDefinitionReferenceArgs{
/// 					GroupNames: pulumi.StringArray{
/// 						pulumi.String("Organizational"),
/// 					},
/// 					Parameters: authorization.ParameterValuesValueMap{
/// 						"prefix": &authorization.ParameterValuesValueArgs{
/// 							Value: pulumi.Any("DeptA"),
/// 						},
/// 						"suffix": &authorization.ParameterValuesValueArgs{
/// 							Value: pulumi.Any("-LC"),
/// 						},
/// 					},
/// 					PolicyDefinitionId:          pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming"),
/// 					PolicyDefinitionReferenceId: pulumi.String("Resource_Naming"),
/// 				},
/// 			},
/// 			PolicySetDefinitionName: pulumi.String("CostManagement"),
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
/// import com.pulumi.azurenative.authorization.PolicySetDefinitionAtManagementGroup;
/// import com.pulumi.azurenative.authorization.PolicySetDefinitionAtManagementGroupArgs;
/// import com.pulumi.azurenative.authorization.inputs.PolicyDefinitionGroupArgs;
/// import com.pulumi.azurenative.authorization.inputs.PolicyDefinitionReferenceArgs;
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
///         var policySetDefinitionAtManagementGroup = new PolicySetDefinitionAtManagementGroup("policySetDefinitionAtManagementGroup", PolicySetDefinitionAtManagementGroupArgs.builder()
///             .description("Policies to enforce low cost storage SKUs")
///             .displayName("Cost Management")
///             .managementGroupId("MyManagementGroup")
///             .metadata(Map.of("category", "Cost Management"))
///             .policyDefinitionGroups(
///                 PolicyDefinitionGroupArgs.builder()
///                     .description("Policies designed to control spend within a subscription.")
///                     .displayName("Cost Management Policies")
///                     .name("CostSaving")
///                     .build(),
///                 PolicyDefinitionGroupArgs.builder()
///                     .description("Policies that help enforce resource organization standards within a subscription.")
///                     .displayName("Organizational Policies")
///                     .name("Organizational")
///                     .build())
///             .policyDefinitions(
///                 PolicyDefinitionReferenceArgs.builder()
///                     .groupNames("CostSaving")
///                     .parameters(Map.of("listOfAllowedSKUs", ParameterValuesValueArgs.builder()
///                         .value(
///                             "Standard_GRS",
///                             "Standard_LRS")
///                         .build()))
///                     .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1")
///                     .policyDefinitionReferenceId("Limit_Skus")
///                     .build(),
///                 PolicyDefinitionReferenceArgs.builder()
///                     .groupNames("Organizational")
///                     .parameters(Map.ofEntries(
///                         Map.entry("prefix", ParameterValuesValueArgs.builder()
///                             .value("DeptA")
///                             .build()),
///                         Map.entry("suffix", ParameterValuesValueArgs.builder()
///                             .value("-LC")
///                             .build())
///                     ))
///                     .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming")
///                     .policyDefinitionReferenceId("Resource_Naming")
///                     .build())
///             .policySetDefinitionName("CostManagement")
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
/// const policySetDefinitionAtManagementGroup = new azure_native.authorization.PolicySetDefinitionAtManagementGroup("policySetDefinitionAtManagementGroup", {
///     description: "Policies to enforce low cost storage SKUs",
///     displayName: "Cost Management",
///     managementGroupId: "MyManagementGroup",
///     metadata: {
///         category: "Cost Management",
///     },
///     policyDefinitionGroups: [
///         {
///             description: "Policies designed to control spend within a subscription.",
///             displayName: "Cost Management Policies",
///             name: "CostSaving",
///         },
///         {
///             description: "Policies that help enforce resource organization standards within a subscription.",
///             displayName: "Organizational Policies",
///             name: "Organizational",
///         },
///     ],
///     policyDefinitions: [
///         {
///             groupNames: ["CostSaving"],
///             parameters: {
///                 listOfAllowedSKUs: {
///                     value: [
///                         "Standard_GRS",
///                         "Standard_LRS",
///                     ],
///                 },
///             },
///             policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///             policyDefinitionReferenceId: "Limit_Skus",
///         },
///         {
///             groupNames: ["Organizational"],
///             parameters: {
///                 prefix: {
///                     value: "DeptA",
///                 },
///                 suffix: {
///                     value: "-LC",
///                 },
///             },
///             policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///             policyDefinitionReferenceId: "Resource_Naming",
///         },
///     ],
///     policySetDefinitionName: "CostManagement",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_set_definition_at_management_group = azure_native.authorization.PolicySetDefinitionAtManagementGroup("policySetDefinitionAtManagementGroup",
///     description="Policies to enforce low cost storage SKUs",
///     display_name="Cost Management",
///     management_group_id="MyManagementGroup",
///     metadata={
///         "category": "Cost Management",
///     },
///     policy_definition_groups=[
///         {
///             "description": "Policies designed to control spend within a subscription.",
///             "display_name": "Cost Management Policies",
///             "name": "CostSaving",
///         },
///         {
///             "description": "Policies that help enforce resource organization standards within a subscription.",
///             "display_name": "Organizational Policies",
///             "name": "Organizational",
///         },
///     ],
///     policy_definitions=[
///         {
///             "group_names": ["CostSaving"],
///             "parameters": {
///                 "listOfAllowedSKUs": {
///                     "value": [
///                         "Standard_GRS",
///                         "Standard_LRS",
///                     ],
///                 },
///             },
///             "policy_definition_id": "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///             "policy_definition_reference_id": "Limit_Skus",
///         },
///         {
///             "group_names": ["Organizational"],
///             "parameters": {
///                 "prefix": {
///                     "value": "DeptA",
///                 },
///                 "suffix": {
///                     "value": "-LC",
///                 },
///             },
///             "policy_definition_id": "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///             "policy_definition_reference_id": "Resource_Naming",
///         },
///     ],
///     policy_set_definition_name="CostManagement")
///
/// ```
///
/// ```yaml
/// resources:
///   policySetDefinitionAtManagementGroup:
///     type: azure-native:authorization:PolicySetDefinitionAtManagementGroup
///     properties:
///       description: Policies to enforce low cost storage SKUs
///       displayName: Cost Management
///       managementGroupId: MyManagementGroup
///       metadata:
///         category: Cost Management
///       policyDefinitionGroups:
///         - description: Policies designed to control spend within a subscription.
///           displayName: Cost Management Policies
///           name: CostSaving
///         - description: Policies that help enforce resource organization standards within a subscription.
///           displayName: Organizational Policies
///           name: Organizational
///       policyDefinitions:
///         - groupNames:
///             - CostSaving
///           parameters:
///             listOfAllowedSKUs:
///               value:
///                 - Standard_GRS
///                 - Standard_LRS
///           policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1
///           policyDefinitionReferenceId: Limit_Skus
///         - groupNames:
///             - Organizational
///           parameters:
///             prefix:
///               value: DeptA
///             suffix:
///               value: -LC
///           policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming
///           policyDefinitionReferenceId: Resource_Naming
///       policySetDefinitionName: CostManagement
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
/// $ pulumi import azure-native:authorization:PolicySetDefinitionAtManagementGroup CostManagement /providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Authorization/policySetDefinitions/{policySetDefinitionName}
/// ```
class PolicySetDefinitionAtManagementGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The policy set definition description.
  late final pulumi.Output<String?> description;

  /// The display name of the policy set definition.
  late final pulumi.Output<String?> displayName;

  /// The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  late final pulumi.Output<dynamic> metadata;

  /// The name of the policy set definition.
  late final pulumi.Output<String> name;

  /// The policy set definition parameters that can be used in policy definition references.
  late final pulumi.Output<Map<String, ParameterDefinitionsValueResponse>?>
  parameters;

  /// The metadata describing groups of policy definition references within the policy set definition.
  late final pulumi.Output<List<Map<String, dynamic>>?> policyDefinitionGroups;

  /// An array of policy definition references.
  late final pulumi.Output<List<Map<String, dynamic>>> policyDefinitions;

  /// The type of policy set definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  late final pulumi.Output<String?> policyType;

  /// The system metadata relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource (Microsoft.Authorization/policySetDefinitions).
  late final pulumi.Output<String> type;

  /// The policy set definition version in #.#.# format.
  late final pulumi.Output<String?> version;

  /// A list of available versions for this policy set definition.
  late final pulumi.Output<List<String>?> versions;

  /// Creates a new [PolicySetDefinitionAtManagementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicySetDefinitionAtManagementGroup]. {@macro pulumi_authorization_policy_set_definition_at_management_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicySetDefinitionAtManagementGroup(
    String name, {
    PolicySetDefinitionAtManagementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:authorization:PolicySetDefinitionAtManagementGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    parameters =
        registerOutput<Map<String, ParameterDefinitionsValueResponse>?>(
          'parameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return pulumi
                .Input.decodeMapValues<ParameterDefinitionsValueResponse>(
              guardedValue,
              (value) => ParameterDefinitionsValueResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            );
          },
        );
    policyDefinitionGroups = registerOutput<List<Map<String, dynamic>>?>(
      'policyDefinitionGroups',
    );
    policyDefinitions = registerOutput<List<Map<String, dynamic>>>(
      'policyDefinitions',
    );
    policyType = registerOutput<String?>('policyType');
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
    version = registerOutput<String?>('version');
    versions = registerOutput<List<String>?>('versions');
  }
}
