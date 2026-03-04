import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'policy_set_definition_args.dart';
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
/// ### Create or update a policy set definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policySetDefinition = new AzureNative.Authorization.PolicySetDefinition("policySetDefinition", new()
///     {
///         Description = "Policies to enforce low cost storage SKUs",
///         DisplayName = "Cost Management",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["category"] = "Cost Management",
///         },
///         Parameters =
///         {
///             { "namePrefix", new AzureNative.Authorization.Inputs.ParameterDefinitionsValueArgs
///             {
///                 DefaultValue = "myPrefix",
///                 Metadata = new AzureNative.Authorization.Inputs.ParameterDefinitionsValueMetadataArgs
///                 {
///                     DisplayName = "Prefix to enforce on resource names",
///                 },
///                 Type = AzureNative.Authorization.ParameterType.String,
///             } },
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
///                 PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///                 PolicyDefinitionReferenceId = "Limit_Skus",
///             },
///             new AzureNative.Authorization.Inputs.PolicyDefinitionReferenceArgs
///             {
///                 Parameters =
///                 {
///                     { "prefix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///                     {
///                         Value = "[parameters('namePrefix')]",
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
/// 		_, err := authorization.NewPolicySetDefinition(ctx, "policySetDefinition", &authorization.PolicySetDefinitionArgs{
/// 			Description: pulumi.String("Policies to enforce low cost storage SKUs"),
/// 			DisplayName: pulumi.String("Cost Management"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"category": "Cost Management",
/// 			}),
/// 			Parameters: authorization.ParameterDefinitionsValueMap{
/// 				"namePrefix": &authorization.ParameterDefinitionsValueArgs{
/// 					DefaultValue: pulumi.Any("myPrefix"),
/// 					Metadata: &authorization.ParameterDefinitionsValueMetadataArgs{
/// 						DisplayName: pulumi.String("Prefix to enforce on resource names"),
/// 					},
/// 					Type: pulumi.String(authorization.ParameterTypeString),
/// 				},
/// 			},
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
/// 					PolicyDefinitionId:          pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1"),
/// 					PolicyDefinitionReferenceId: pulumi.String("Limit_Skus"),
/// 				},
/// 				&authorization.PolicyDefinitionReferenceArgs{
/// 					Parameters: authorization.ParameterValuesValueMap{
/// 						"prefix": &authorization.ParameterValuesValueArgs{
/// 							Value: pulumi.Any("[parameters('namePrefix')]"),
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
/// import com.pulumi.azurenative.authorization.PolicySetDefinition;
/// import com.pulumi.azurenative.authorization.PolicySetDefinitionArgs;
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
///         var policySetDefinition = new PolicySetDefinition("policySetDefinition", PolicySetDefinitionArgs.builder()
///             .description("Policies to enforce low cost storage SKUs")
///             .displayName("Cost Management")
///             .metadata(Map.of("category", "Cost Management"))
///             .parameters(Map.of("namePrefix", ParameterDefinitionsValueArgs.builder()
///                 .defaultValue("myPrefix")
///                 .metadata(ParameterDefinitionsValueMetadataArgs.builder()
///                     .displayName("Prefix to enforce on resource names")
///                     .build())
///                 .type("String")
///                 .build()))
///             .policyDefinitions(
///                 PolicyDefinitionReferenceArgs.builder()
///                     .parameters(Map.of("listOfAllowedSKUs", ParameterValuesValueArgs.builder()
///                         .value(
///                             "Standard_GRS",
///                             "Standard_LRS")
///                         .build()))
///                     .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1")
///                     .policyDefinitionReferenceId("Limit_Skus")
///                     .build(),
///                 PolicyDefinitionReferenceArgs.builder()
///                     .parameters(Map.ofEntries(
///                         Map.entry("prefix", ParameterValuesValueArgs.builder()
///                             .value("[parameters('namePrefix')]")
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
/// const policySetDefinition = new azure_native.authorization.PolicySetDefinition("policySetDefinition", {
///     description: "Policies to enforce low cost storage SKUs",
///     displayName: "Cost Management",
///     metadata: {
///         category: "Cost Management",
///     },
///     parameters: {
///         namePrefix: {
///             defaultValue: "myPrefix",
///             metadata: {
///                 displayName: "Prefix to enforce on resource names",
///             },
///             type: azure_native.authorization.ParameterType.String,
///         },
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
///             policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///             policyDefinitionReferenceId: "Limit_Skus",
///         },
///         {
///             parameters: {
///                 prefix: {
///                     value: "[parameters('namePrefix')]",
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
/// policy_set_definition = azure_native.authorization.PolicySetDefinition("policySetDefinition",
///     description="Policies to enforce low cost storage SKUs",
///     display_name="Cost Management",
///     metadata={
///         "category": "Cost Management",
///     },
///     parameters={
///         "namePrefix": {
///             "default_value": "myPrefix",
///             "metadata": {
///                 "display_name": "Prefix to enforce on resource names",
///             },
///             "type": azure_native.authorization.ParameterType.STRING,
///         },
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
///             "policy_definition_id": "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1",
///             "policy_definition_reference_id": "Limit_Skus",
///         },
///         {
///             "parameters": {
///                 "prefix": {
///                     "value": "[parameters('namePrefix')]",
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
///   policySetDefinition:
///     type: azure-native:authorization:PolicySetDefinition
///     properties:
///       description: Policies to enforce low cost storage SKUs
///       displayName: Cost Management
///       metadata:
///         category: Cost Management
///       parameters:
///         namePrefix:
///           defaultValue: myPrefix
///           metadata:
///             displayName: Prefix to enforce on resource names
///           type: String
///       policyDefinitions:
///         - parameters:
///             listOfAllowedSKUs:
///               value:
///                 - Standard_GRS
///                 - Standard_LRS
///           policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1
///           policyDefinitionReferenceId: Limit_Skus
///         - parameters:
///             prefix:
///               value: '[parameters(''namePrefix'')]'
///             suffix:
///               value: -LC
///           policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming
///           policyDefinitionReferenceId: Resource_Naming
///       policySetDefinitionName: CostManagement
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy set definition with groups
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policySetDefinition = new AzureNative.Authorization.PolicySetDefinition("policySetDefinition", new()
///     {
///         Description = "Policies to enforce low cost storage SKUs",
///         DisplayName = "Cost Management",
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
///                 DefinitionVersion = "1.*.*",
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
///                 DefinitionVersion = "1.*.*",
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
/// 		_, err := authorization.NewPolicySetDefinition(ctx, "policySetDefinition", &authorization.PolicySetDefinitionArgs{
/// 			Description: pulumi.String("Policies to enforce low cost storage SKUs"),
/// 			DisplayName: pulumi.String("Cost Management"),
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
/// 					DefinitionVersion: pulumi.String("1.*.*"),
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
/// 					DefinitionVersion: pulumi.String("1.*.*"),
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
/// import com.pulumi.azurenative.authorization.PolicySetDefinition;
/// import com.pulumi.azurenative.authorization.PolicySetDefinitionArgs;
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
///         var policySetDefinition = new PolicySetDefinition("policySetDefinition", PolicySetDefinitionArgs.builder()
///             .description("Policies to enforce low cost storage SKUs")
///             .displayName("Cost Management")
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
///                     .definitionVersion("1.*.*")
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
///                     .definitionVersion("1.*.*")
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
/// const policySetDefinition = new azure_native.authorization.PolicySetDefinition("policySetDefinition", {
///     description: "Policies to enforce low cost storage SKUs",
///     displayName: "Cost Management",
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
///             definitionVersion: "1.*.*",
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
///             definitionVersion: "1.*.*",
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
/// policy_set_definition = azure_native.authorization.PolicySetDefinition("policySetDefinition",
///     description="Policies to enforce low cost storage SKUs",
///     display_name="Cost Management",
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
///             "definition_version": "1.*.*",
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
///             "definition_version": "1.*.*",
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
///   policySetDefinition:
///     type: azure-native:authorization:PolicySetDefinition
///     properties:
///       description: Policies to enforce low cost storage SKUs
///       displayName: Cost Management
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
///         - definitionVersion: 1.*.*
///           groupNames:
///             - CostSaving
///           parameters:
///             listOfAllowedSKUs:
///               value:
///                 - Standard_GRS
///                 - Standard_LRS
///           policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/7433c107-6db4-4ad1-b57a-a76dce0154a1
///           policyDefinitionReferenceId: Limit_Skus
///         - definitionVersion: 1.*.*
///           groupNames:
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
/// $ pulumi import azure-native:authorization:PolicySetDefinition CostManagement /subscriptions/{subscriptionId}/providers/Microsoft.Authorization/policySetDefinitions/{policySetDefinitionName}
/// ```
class PolicySetDefinition extends pulumi.CustomResource {
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

  /// Creates a new [PolicySetDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicySetDefinition]. {@macro pulumi_authorization_policy_set_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicySetDefinition(
    String name, {
    PolicySetDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:authorization:PolicySetDefinition',
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
        );
    policyDefinitionGroups = registerOutput<List<Map<String, dynamic>>?>(
      'policyDefinitionGroups',
    );
    policyDefinitions = registerOutput<List<Map<String, dynamic>>>(
      'policyDefinitions',
    );
    policyType = registerOutput<String?>('policyType');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
    versions = registerOutput<List<String>?>('versions');
  }
}
