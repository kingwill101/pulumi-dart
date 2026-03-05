import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'policy_definition_args.dart';
import 'system_data_response.dart';

/// The policy definition.
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2020-09-01, 2021-06-01, 2023-04-01, 2024-05-01, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a policy definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyDefinition = new AzureNative.Authorization.PolicyDefinition("policyDefinition", new()
///     {
///         Description = "Force resource names to begin with given 'prefix' and/or end with given 'suffix'",
///         DisplayName = "Enforce resource naming convention",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["category"] = "Naming",
///         },
///         Mode = "All",
///         Parameters =
///         {
///             { "prefix", new AzureNative.Authorization.Inputs.ParameterDefinitionsValueArgs
///             {
///                 Metadata = new AzureNative.Authorization.Inputs.ParameterDefinitionsValueMetadataArgs
///                 {
///                     Description = "Resource name prefix",
///                     DisplayName = "Prefix",
///                 },
///                 Type = AzureNative.Authorization.ParameterType.String,
///             } },
///             { "suffix", new AzureNative.Authorization.Inputs.ParameterDefinitionsValueArgs
///             {
///                 Metadata = new AzureNative.Authorization.Inputs.ParameterDefinitionsValueMetadataArgs
///                 {
///                     Description = "Resource name suffix",
///                     DisplayName = "Suffix",
///                 },
///                 Type = AzureNative.Authorization.ParameterType.String,
///             } },
///         },
///         PolicyDefinitionName = "ResourceNaming",
///         PolicyRule = new Dictionary<string, object?>
///         {
///             ["if"] = new Dictionary<string, object?>
///             {
///                 ["not"] = new Dictionary<string, object?>
///                 {
///                     ["field"] = "name",
///                     ["like"] = "[concat(parameters('prefix'), '*', parameters('suffix'))]",
///                 },
///             },
///             ["then"] = new Dictionary<string, object?>
///             {
///                 ["effect"] = "deny",
///             },
///         },
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
/// 		_, err := authorization.NewPolicyDefinition(ctx, "policyDefinition", &authorization.PolicyDefinitionArgs{
/// 			Description: pulumi.String("Force resource names to begin with given 'prefix' and/or end with given 'suffix'"),
/// 			DisplayName: pulumi.String("Enforce resource naming convention"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"category": "Naming",
/// 			}),
/// 			Mode: pulumi.String("All"),
/// 			Parameters: authorization.ParameterDefinitionsValueMap{
/// 				"prefix": &authorization.ParameterDefinitionsValueArgs{
/// 					Metadata: &authorization.ParameterDefinitionsValueMetadataArgs{
/// 						Description: pulumi.String("Resource name prefix"),
/// 						DisplayName: pulumi.String("Prefix"),
/// 					},
/// 					Type: pulumi.String(authorization.ParameterTypeString),
/// 				},
/// 				"suffix": &authorization.ParameterDefinitionsValueArgs{
/// 					Metadata: &authorization.ParameterDefinitionsValueMetadataArgs{
/// 						Description: pulumi.String("Resource name suffix"),
/// 						DisplayName: pulumi.String("Suffix"),
/// 					},
/// 					Type: pulumi.String(authorization.ParameterTypeString),
/// 				},
/// 			},
/// 			PolicyDefinitionName: pulumi.String("ResourceNaming"),
/// 			PolicyRule: pulumi.Any(map[string]interface{}{
/// 				"if": map[string]interface{}{
/// 					"not": map[string]interface{}{
/// 						"field": "name",
/// 						"like":  "[concat(parameters('prefix'), '*', parameters('suffix'))]",
/// 					},
/// 				},
/// 				"then": map[string]interface{}{
/// 					"effect": "deny",
/// 				},
/// 			}),
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
/// import com.pulumi.azurenative.authorization.PolicyDefinition;
/// import com.pulumi.azurenative.authorization.PolicyDefinitionArgs;
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
///         var policyDefinition = new PolicyDefinition("policyDefinition", PolicyDefinitionArgs.builder()
///             .description("Force resource names to begin with given 'prefix' and/or end with given 'suffix'")
///             .displayName("Enforce resource naming convention")
///             .metadata(Map.of("category", "Naming"))
///             .mode("All")
///             .parameters(Map.ofEntries(
///                 Map.entry("prefix", ParameterDefinitionsValueArgs.builder()
///                     .metadata(ParameterDefinitionsValueMetadataArgs.builder()
///                         .description("Resource name prefix")
///                         .displayName("Prefix")
///                         .build())
///                     .type("String")
///                     .build()),
///                 Map.entry("suffix", ParameterDefinitionsValueArgs.builder()
///                     .metadata(ParameterDefinitionsValueMetadataArgs.builder()
///                         .description("Resource name suffix")
///                         .displayName("Suffix")
///                         .build())
///                     .type("String")
///                     .build())
///             ))
///             .policyDefinitionName("ResourceNaming")
///             .policyRule(Map.ofEntries(
///                 Map.entry("if", Map.of("not", Map.ofEntries(
///                     Map.entry("field", "name"),
///                     Map.entry("like", "[concat(parameters('prefix'), '*', parameters('suffix'))]")
///                 ))),
///                 Map.entry("then", Map.of("effect", "deny"))
///             ))
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
/// const policyDefinition = new azure_native.authorization.PolicyDefinition("policyDefinition", {
///     description: "Force resource names to begin with given 'prefix' and/or end with given 'suffix'",
///     displayName: "Enforce resource naming convention",
///     metadata: {
///         category: "Naming",
///     },
///     mode: "All",
///     parameters: {
///         prefix: {
///             metadata: {
///                 description: "Resource name prefix",
///                 displayName: "Prefix",
///             },
///             type: azure_native.authorization.ParameterType.String,
///         },
///         suffix: {
///             metadata: {
///                 description: "Resource name suffix",
///                 displayName: "Suffix",
///             },
///             type: azure_native.authorization.ParameterType.String,
///         },
///     },
///     policyDefinitionName: "ResourceNaming",
///     policyRule: {
///         "if": {
///             not: {
///                 field: "name",
///                 like: "[concat(parameters('prefix'), '*', parameters('suffix'))]",
///             },
///         },
///         then: {
///             effect: "deny",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_definition = azure_native.authorization.PolicyDefinition("policyDefinition",
///     description="Force resource names to begin with given 'prefix' and/or end with given 'suffix'",
///     display_name="Enforce resource naming convention",
///     metadata={
///         "category": "Naming",
///     },
///     mode="All",
///     parameters={
///         "prefix": {
///             "metadata": {
///                 "description": "Resource name prefix",
///                 "display_name": "Prefix",
///             },
///             "type": azure_native.authorization.ParameterType.STRING,
///         },
///         "suffix": {
///             "metadata": {
///                 "description": "Resource name suffix",
///                 "display_name": "Suffix",
///             },
///             "type": azure_native.authorization.ParameterType.STRING,
///         },
///     },
///     policy_definition_name="ResourceNaming",
///     policy_rule={
///         "if": {
///             "not": {
///                 "field": "name",
///                 "like": "[concat(parameters('prefix'), '*', parameters('suffix'))]",
///             },
///         },
///         "then": {
///             "effect": "deny",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   policyDefinition:
///     type: azure-native:authorization:PolicyDefinition
///     properties:
///       description: Force resource names to begin with given 'prefix' and/or end with given 'suffix'
///       displayName: Enforce resource naming convention
///       metadata:
///         category: Naming
///       mode: All
///       parameters:
///         prefix:
///           metadata:
///             description: Resource name prefix
///             displayName: Prefix
///           type: String
///         suffix:
///           metadata:
///             description: Resource name suffix
///             displayName: Suffix
///           type: String
///       policyDefinitionName: ResourceNaming
///       policyRule:
///         if:
///           not:
///             field: name
///             like: '[concat(parameters(''prefix''), ''*'', parameters(''suffix''))]'
///         then:
///           effect: deny
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy definition with advanced parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyDefinition = new AzureNative.Authorization.PolicyDefinition("policyDefinition", new()
///     {
///         Description = "Audit enabling of logs and retain them up to a year. This enables recreation of activity trails for investigation purposes when a security incident occurs or your network is compromised",
///         DisplayName = "Event Hubs should have diagnostic logging enabled",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["category"] = "Event Hub",
///         },
///         Mode = "Indexed",
///         Parameters =
///         {
///             { "requiredRetentionDays", new AzureNative.Authorization.Inputs.ParameterDefinitionsValueArgs
///             {
///                 AllowedValues = new[]
///                 {
///                     0,
///                     30,
///                     90,
///                     180,
///                     365,
///                 },
///                 DefaultValue = 365,
///                 Metadata = new AzureNative.Authorization.Inputs.ParameterDefinitionsValueMetadataArgs
///                 {
///                     Description = "The required diagnostic logs retention in days",
///                     DisplayName = "Required retention (days)",
///                 },
///                 Type = AzureNative.Authorization.ParameterType.Integer,
///             } },
///         },
///         PolicyDefinitionName = "EventHubDiagnosticLogs",
///         PolicyRule = new Dictionary<string, object?>
///         {
///             ["if"] = new Dictionary<string, object?>
///             {
///                 ["equals"] = "Microsoft.EventHub/namespaces",
///                 ["field"] = "type",
///             },
///             ["then"] = new Dictionary<string, object?>
///             {
///                 ["details"] = new Dictionary<string, object?>
///                 {
///                     ["existenceCondition"] = new Dictionary<string, object?>
///                     {
///                         ["allOf"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["equals"] = "true",
///                                 ["field"] = "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.enabled",
///                             },
///                             new Dictionary<string, object?>
///                             {
///                                 ["equals"] = "[parameters('requiredRetentionDays')]",
///                                 ["field"] = "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.days",
///                             },
///                         },
///                     },
///                     ["type"] = "Microsoft.Insights/diagnosticSettings",
///                 },
///                 ["effect"] = "AuditIfNotExists",
///             },
///         },
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
/// 		_, err := authorization.NewPolicyDefinition(ctx, "policyDefinition", &authorization.PolicyDefinitionArgs{
/// 			Description: pulumi.String("Audit enabling of logs and retain them up to a year. This enables recreation of activity trails for investigation purposes when a security incident occurs or your network is compromised"),
/// 			DisplayName: pulumi.String("Event Hubs should have diagnostic logging enabled"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"category": "Event Hub",
/// 			}),
/// 			Mode: pulumi.String("Indexed"),
/// 			Parameters: authorization.ParameterDefinitionsValueMap{
/// 				"requiredRetentionDays": &authorization.ParameterDefinitionsValueArgs{
/// 					AllowedValues: pulumi.Array{
/// 						pulumi.Any(0),
/// 						pulumi.Any(30),
/// 						pulumi.Any(90),
/// 						pulumi.Any(180),
/// 						pulumi.Any(365),
/// 					},
/// 					DefaultValue: pulumi.Any(365),
/// 					Metadata: &authorization.ParameterDefinitionsValueMetadataArgs{
/// 						Description: pulumi.String("The required diagnostic logs retention in days"),
/// 						DisplayName: pulumi.String("Required retention (days)"),
/// 					},
/// 					Type: pulumi.String(authorization.ParameterTypeInteger),
/// 				},
/// 			},
/// 			PolicyDefinitionName: pulumi.String("EventHubDiagnosticLogs"),
/// 			PolicyRule: pulumi.Any(map[string]interface{}{
/// 				"if": map[string]interface{}{
/// 					"equals": "Microsoft.EventHub/namespaces",
/// 					"field":  "type",
/// 				},
/// 				"then": map[string]interface{}{
/// 					"details": map[string]interface{}{
/// 						"existenceCondition": map[string]interface{}{
/// 							"allOf": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"equals": "true",
/// 									"field":  "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.enabled",
/// 								},
/// 								map[string]interface{}{
/// 									"equals": "[parameters('requiredRetentionDays')]",
/// 									"field":  "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.days",
/// 								},
/// 							},
/// 						},
/// 						"type": "Microsoft.Insights/diagnosticSettings",
/// 					},
/// 					"effect": "AuditIfNotExists",
/// 				},
/// 			}),
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
/// import com.pulumi.azurenative.authorization.PolicyDefinition;
/// import com.pulumi.azurenative.authorization.PolicyDefinitionArgs;
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
///         var policyDefinition = new PolicyDefinition("policyDefinition", PolicyDefinitionArgs.builder()
///             .description("Audit enabling of logs and retain them up to a year. This enables recreation of activity trails for investigation purposes when a security incident occurs or your network is compromised")
///             .displayName("Event Hubs should have diagnostic logging enabled")
///             .metadata(Map.of("category", "Event Hub"))
///             .mode("Indexed")
///             .parameters(Map.of("requiredRetentionDays", ParameterDefinitionsValueArgs.builder()
///                 .allowedValues(
///                     0,
///                     30,
///                     90,
///                     180,
///                     365)
///                 .defaultValue(365)
///                 .metadata(ParameterDefinitionsValueMetadataArgs.builder()
///                     .description("The required diagnostic logs retention in days")
///                     .displayName("Required retention (days)")
///                     .build())
///                 .type("Integer")
///                 .build()))
///             .policyDefinitionName("EventHubDiagnosticLogs")
///             .policyRule(Map.ofEntries(
///                 Map.entry("if", Map.ofEntries(
///                     Map.entry("equals", "Microsoft.EventHub/namespaces"),
///                     Map.entry("field", "type")
///                 )),
///                 Map.entry("then", Map.ofEntries(
///                     Map.entry("details", Map.ofEntries(
///                         Map.entry("existenceCondition", Map.of("allOf",
///                             Map.ofEntries(
///                                 Map.entry("equals", "true"),
///                                 Map.entry("field", "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.enabled")
///                             ),
///                             Map.ofEntries(
///                                 Map.entry("equals", "[parameters('requiredRetentionDays')]"),
///                                 Map.entry("field", "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.days")
///                             ))),
///                         Map.entry("type", "Microsoft.Insights/diagnosticSettings")
///                     )),
///                     Map.entry("effect", "AuditIfNotExists")
///                 ))
///             ))
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
/// const policyDefinition = new azure_native.authorization.PolicyDefinition("policyDefinition", {
///     description: "Audit enabling of logs and retain them up to a year. This enables recreation of activity trails for investigation purposes when a security incident occurs or your network is compromised",
///     displayName: "Event Hubs should have diagnostic logging enabled",
///     metadata: {
///         category: "Event Hub",
///     },
///     mode: "Indexed",
///     parameters: {
///         requiredRetentionDays: {
///             allowedValues: [
///                 0,
///                 30,
///                 90,
///                 180,
///                 365,
///             ],
///             defaultValue: 365,
///             metadata: {
///                 description: "The required diagnostic logs retention in days",
///                 displayName: "Required retention (days)",
///             },
///             type: azure_native.authorization.ParameterType.Integer,
///         },
///     },
///     policyDefinitionName: "EventHubDiagnosticLogs",
///     policyRule: {
///         "if": {
///             equals: "Microsoft.EventHub/namespaces",
///             field: "type",
///         },
///         then: {
///             details: {
///                 existenceCondition: {
///                     allOf: [
///                         {
///                             equals: "true",
///                             field: "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.enabled",
///                         },
///                         {
///                             equals: "[parameters('requiredRetentionDays')]",
///                             field: "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.days",
///                         },
///                     ],
///                 },
///                 type: "Microsoft.Insights/diagnosticSettings",
///             },
///             effect: "AuditIfNotExists",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_definition = azure_native.authorization.PolicyDefinition("policyDefinition",
///     description="Audit enabling of logs and retain them up to a year. This enables recreation of activity trails for investigation purposes when a security incident occurs or your network is compromised",
///     display_name="Event Hubs should have diagnostic logging enabled",
///     metadata={
///         "category": "Event Hub",
///     },
///     mode="Indexed",
///     parameters={
///         "requiredRetentionDays": {
///             "allowed_values": [
///                 0,
///                 30,
///                 90,
///                 180,
///                 365,
///             ],
///             "default_value": 365,
///             "metadata": {
///                 "description": "The required diagnostic logs retention in days",
///                 "display_name": "Required retention (days)",
///             },
///             "type": azure_native.authorization.ParameterType.INTEGER,
///         },
///     },
///     policy_definition_name="EventHubDiagnosticLogs",
///     policy_rule={
///         "if": {
///             "equals": "Microsoft.EventHub/namespaces",
///             "field": "type",
///         },
///         "then": {
///             "details": {
///                 "existenceCondition": {
///                     "allOf": [
///                         {
///                             "equals": "true",
///                             "field": "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.enabled",
///                         },
///                         {
///                             "equals": "[parameters('requiredRetentionDays')]",
///                             "field": "Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.days",
///                         },
///                     ],
///                 },
///                 "type": "Microsoft.Insights/diagnosticSettings",
///             },
///             "effect": "AuditIfNotExists",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   policyDefinition:
///     type: azure-native:authorization:PolicyDefinition
///     properties:
///       description: Audit enabling of logs and retain them up to a year. This enables recreation of activity trails for investigation purposes when a security incident occurs or your network is compromised
///       displayName: Event Hubs should have diagnostic logging enabled
///       metadata:
///         category: Event Hub
///       mode: Indexed
///       parameters:
///         requiredRetentionDays:
///           allowedValues:
///             - 0
///             - 30
///             - 90
///             - 180
///             - 365
///           defaultValue: 365
///           metadata:
///             description: The required diagnostic logs retention in days
///             displayName: Required retention (days)
///           type: Integer
///       policyDefinitionName: EventHubDiagnosticLogs
///       policyRule:
///         if:
///           equals: Microsoft.EventHub/namespaces
///           field: type
///         then:
///           details:
///             existenceCondition:
///               allOf:
///                 - equals: 'true'
///                   field: Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.enabled
///                 - equals: '[parameters(''requiredRetentionDays'')]'
///                   field: Microsoft.Insights/diagnosticSettings/logs[*].retentionPolicy.days
///             type: Microsoft.Insights/diagnosticSettings
///           effect: AuditIfNotExists
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
/// $ pulumi import azure-native:authorization:PolicyDefinition ResourceNaming /subscriptions/{subscriptionId}/providers/Microsoft.Authorization/policyDefinitions/{policyDefinitionName}
/// ```
class PolicyDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The policy definition description.
  late final pulumi.Output<String?> description;
  /// The display name of the policy definition.
  late final pulumi.Output<String?> displayName;
  /// The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  late final pulumi.Output<dynamic> metadata;
  /// The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  late final pulumi.Output<String?> mode;
  /// The name of the policy definition.
  late final pulumi.Output<String> name;
  /// The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  late final pulumi.Output<Map<String, ParameterDefinitionsValueResponse>?> parameters;
  /// The policy rule.
  late final pulumi.Output<dynamic> policyRule;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  late final pulumi.Output<String?> policyType;
  /// The system metadata relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource (Microsoft.Authorization/policyDefinitions).
  late final pulumi.Output<String> type;
  /// The policy definition version in #.#.# format.
  late final pulumi.Output<String?> version;
  /// A list of available versions for this policy definition.
  late final pulumi.Output<List<String>?> versions;

  /// Creates a new [PolicyDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyDefinition]. {@macro pulumi_authorization_policy_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyDefinition(
    String name, {
    PolicyDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:PolicyDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    metadata = registerOutput<dynamic>('metadata');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, ParameterDefinitionsValueResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterDefinitionsValueResponse>(guardedValue, (value) => ParameterDefinitionsValueResponse.fromMap((value as Map).cast<String, dynamic>())); });
    policyRule = registerOutput<dynamic>('policyRule');
    policyType = registerOutput<String?>('policyType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
    versions = registerOutput<List<String>?>('versions');
  }
}
