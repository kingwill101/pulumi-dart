import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'policy_set_definition_version_at_management_group_args.dart';
import 'system_data_response.dart';

/// The policy set definition version.
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2024-05-01, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a policy set definition version at management group level
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policySetDefinitionVersionAtManagementGroup = new AzureNative.Authorization.PolicySetDefinitionVersionAtManagementGroup("policySetDefinitionVersionAtManagementGroup", new()
///     {
///         Description = "Policies to enforce low cost storage SKUs",
///         DisplayName = "Cost Management",
///         ManagementGroupName = "MyManagementGroup",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["category"] = "Cost Management",
///         },
///         PolicyDefinitionVersion = "1.2.1",
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
///         Version = "1.2.1",
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
/// 		_, err := authorization.NewPolicySetDefinitionVersionAtManagementGroup(ctx, "policySetDefinitionVersionAtManagementGroup", &authorization.PolicySetDefinitionVersionAtManagementGroupArgs{
/// 			Description:         pulumi.String("Policies to enforce low cost storage SKUs"),
/// 			DisplayName:         pulumi.String("Cost Management"),
/// 			ManagementGroupName: pulumi.String("MyManagementGroup"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"category": "Cost Management",
/// 			}),
/// 			PolicyDefinitionVersion: pulumi.String("1.2.1"),
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
/// 			Version:                 pulumi.String("1.2.1"),
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
/// import com.pulumi.azurenative.authorization.PolicySetDefinitionVersionAtManagementGroup;
/// import com.pulumi.azurenative.authorization.PolicySetDefinitionVersionAtManagementGroupArgs;
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
///         var policySetDefinitionVersionAtManagementGroup = new PolicySetDefinitionVersionAtManagementGroup("policySetDefinitionVersionAtManagementGroup", PolicySetDefinitionVersionAtManagementGroupArgs.builder()
///             .description("Policies to enforce low cost storage SKUs")
///             .displayName("Cost Management")
///             .managementGroupName("MyManagementGroup")
///             .metadata(Map.of("category", "Cost Management"))
///             .policyDefinitionVersion("1.2.1")
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
///             .version("1.2.1")
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
/// const policySetDefinitionVersionAtManagementGroup = new azure_native.authorization.PolicySetDefinitionVersionAtManagementGroup("policySetDefinitionVersionAtManagementGroup", {
///     description: "Policies to enforce low cost storage SKUs",
///     displayName: "Cost Management",
///     managementGroupName: "MyManagementGroup",
///     metadata: {
///         category: "Cost Management",
///     },
///     policyDefinitionVersion: "1.2.1",
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
///     version: "1.2.1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_set_definition_version_at_management_group = azure_native.authorization.PolicySetDefinitionVersionAtManagementGroup("policySetDefinitionVersionAtManagementGroup",
///     description="Policies to enforce low cost storage SKUs",
///     display_name="Cost Management",
///     management_group_name="MyManagementGroup",
///     metadata={
///         "category": "Cost Management",
///     },
///     policy_definition_version="1.2.1",
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
///     policy_set_definition_name="CostManagement",
///     version="1.2.1")
///
/// ```
///
/// ```yaml
/// resources:
///   policySetDefinitionVersionAtManagementGroup:
///     type: azure-native:authorization:PolicySetDefinitionVersionAtManagementGroup
///     properties:
///       description: Policies to enforce low cost storage SKUs
///       displayName: Cost Management
///       managementGroupName: MyManagementGroup
///       metadata:
///         category: Cost Management
///       policyDefinitionVersion: 1.2.1
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
///       version: 1.2.1
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
/// $ pulumi import azure-native:authorization:PolicySetDefinitionVersionAtManagementGroup CostManagement /providers/Microsoft.Management/managementGroups/{managementGroupName}/providers/Microsoft.Authorization/policySetDefinitions/{policySetDefinitionName}/versions/{policyDefinitionVersion}
/// ```
class PolicySetDefinitionVersionAtManagementGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The policy set definition description.
  late final pulumi.Output<String?> description;
  /// The display name of the policy set definition.
  late final pulumi.Output<String?> displayName;
  /// The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  late final pulumi.Output<dynamic> metadata;
  /// The name of the policy set definition version.
  late final pulumi.Output<String> name;
  /// The policy set definition parameters that can be used in policy definition references.
  late final pulumi.Output<Map<String, ParameterDefinitionsValueResponse>?> parameters;
  /// The metadata describing groups of policy definition references within the policy set definition.
  late final pulumi.Output<List<Map<String, dynamic>>?> policyDefinitionGroups;
  /// An array of policy definition references.
  late final pulumi.Output<List<Map<String, dynamic>>> policyDefinitions;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  late final pulumi.Output<String?> policyType;
  /// The system metadata relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource (Microsoft.Authorization/policySetDefinitions/versions).
  late final pulumi.Output<String> type;
  /// The policy set definition version in #.#.# format.
  late final pulumi.Output<String?> version;

  /// Creates a new [PolicySetDefinitionVersionAtManagementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicySetDefinitionVersionAtManagementGroup]. {@macro pulumi_authorization_policy_set_definition_version_at_management_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicySetDefinitionVersionAtManagementGroup(
    String name, {
    PolicySetDefinitionVersionAtManagementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:PolicySetDefinitionVersionAtManagementGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, ParameterDefinitionsValueResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterDefinitionsValueResponse>(guardedValue, (value) => ParameterDefinitionsValueResponse.fromMap((value as Map).cast<String, dynamic>())); });
    policyDefinitionGroups = registerOutput<List<Map<String, dynamic>>?>('policyDefinitionGroups');
    policyDefinitions = registerOutput<List<Map<String, dynamic>>>('policyDefinitions');
    policyType = registerOutput<String?>('policyType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
