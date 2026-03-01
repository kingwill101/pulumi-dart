import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_exemption_args.dart';
import 'resource_selector_response.dart';
import 'system_data_response.dart';

/// The policy exemption.
///
/// Uses Azure REST API version 2022-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-07-01-preview.
///
/// Other available API versions: 2020-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a policy exemption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyExemption = new AzureNative.Authorization.PolicyExemption("policyExemption", new()
///     {
///         Description = "Exempt demo cluster from limit sku",
///         DisplayName = "Exempt demo cluster",
///         ExemptionCategory = AzureNative.Authorization.ExemptionCategory.Waiver,
///         Metadata = new Dictionary<string, object?>
///         {
///             ["reason"] = "Temporary exemption for a expensive VM demo",
///         },
///         PolicyAssignmentId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement",
///         PolicyDefinitionReferenceIds = new[]
///         {
///             "Limit_Skus",
///         },
///         PolicyExemptionName = "DemoExpensiveVM",
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster",
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
/// 		_, err := authorization.NewPolicyExemption(ctx, "policyExemption", &authorization.PolicyExemptionArgs{
/// 			Description:       pulumi.String("Exempt demo cluster from limit sku"),
/// 			DisplayName:       pulumi.String("Exempt demo cluster"),
/// 			ExemptionCategory: pulumi.String(authorization.ExemptionCategoryWaiver),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"reason": "Temporary exemption for a expensive VM demo",
/// 			}),
/// 			PolicyAssignmentId: pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement"),
/// 			PolicyDefinitionReferenceIds: pulumi.StringArray{
/// 				pulumi.String("Limit_Skus"),
/// 			},
/// 			PolicyExemptionName: pulumi.String("DemoExpensiveVM"),
/// 			Scope:               pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster"),
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
/// import com.pulumi.azurenative.authorization.PolicyExemption;
/// import com.pulumi.azurenative.authorization.PolicyExemptionArgs;
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
///         var policyExemption = new PolicyExemption("policyExemption", PolicyExemptionArgs.builder()
///             .description("Exempt demo cluster from limit sku")
///             .displayName("Exempt demo cluster")
///             .exemptionCategory("Waiver")
///             .metadata(Map.of("reason", "Temporary exemption for a expensive VM demo"))
///             .policyAssignmentId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement")
///             .policyDefinitionReferenceIds("Limit_Skus")
///             .policyExemptionName("DemoExpensiveVM")
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster")
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
/// const policyExemption = new azure_native.authorization.PolicyExemption("policyExemption", {
///     description: "Exempt demo cluster from limit sku",
///     displayName: "Exempt demo cluster",
///     exemptionCategory: azure_native.authorization.ExemptionCategory.Waiver,
///     metadata: {
///         reason: "Temporary exemption for a expensive VM demo",
///     },
///     policyAssignmentId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement",
///     policyDefinitionReferenceIds: ["Limit_Skus"],
///     policyExemptionName: "DemoExpensiveVM",
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_exemption = azure_native.authorization.PolicyExemption("policyExemption",
///     description="Exempt demo cluster from limit sku",
///     display_name="Exempt demo cluster",
///     exemption_category=azure_native.authorization.ExemptionCategory.WAIVER,
///     metadata={
///         "reason": "Temporary exemption for a expensive VM demo",
///     },
///     policy_assignment_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement",
///     policy_definition_reference_ids=["Limit_Skus"],
///     policy_exemption_name="DemoExpensiveVM",
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster")
///
/// ```
///
/// ```yaml
/// resources:
///   policyExemption:
///     type: azure-native:authorization:PolicyExemption
///     properties:
///       description: Exempt demo cluster from limit sku
///       displayName: Exempt demo cluster
///       exemptionCategory: Waiver
///       metadata:
///         reason: Temporary exemption for a expensive VM demo
///       policyAssignmentId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement
///       policyDefinitionReferenceIds:
///         - Limit_Skus
///       policyExemptionName: DemoExpensiveVM
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy exemption with resource selectors
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyExemption = new AzureNative.Authorization.PolicyExemption("policyExemption", new()
///     {
///         AssignmentScopeValidation = AzureNative.Authorization.AssignmentScopeValidation.Default,
///         Description = "Exempt demo cluster from limit sku",
///         DisplayName = "Exempt demo cluster",
///         ExemptionCategory = AzureNative.Authorization.ExemptionCategory.Waiver,
///         Metadata = new Dictionary<string, object?>
///         {
///             ["reason"] = "Temporary exemption for a expensive VM demo",
///         },
///         PolicyAssignmentId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement",
///         PolicyDefinitionReferenceIds = new[]
///         {
///             "Limit_Skus",
///         },
///         PolicyExemptionName = "DemoExpensiveVM",
///         ResourceSelectors = new[]
///         {
///             new AzureNative.Authorization.Inputs.ResourceSelectorArgs
///             {
///                 Name = "SDPRegions",
///                 Selectors = new[]
///                 {
///                     new AzureNative.Authorization.Inputs.SelectorArgs
///                     {
///                         In = new[]
///                         {
///                             "eastus2euap",
///                             "centraluseuap",
///                         },
///                         Kind = AzureNative.Authorization.SelectorKind.ResourceLocation,
///                     },
///                 },
///             },
///         },
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster",
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
/// 		_, err := authorization.NewPolicyExemption(ctx, "policyExemption", &authorization.PolicyExemptionArgs{
/// 			AssignmentScopeValidation: pulumi.String(authorization.AssignmentScopeValidationDefault),
/// 			Description:               pulumi.String("Exempt demo cluster from limit sku"),
/// 			DisplayName:               pulumi.String("Exempt demo cluster"),
/// 			ExemptionCategory:         pulumi.String(authorization.ExemptionCategoryWaiver),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"reason": "Temporary exemption for a expensive VM demo",
/// 			}),
/// 			PolicyAssignmentId: pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement"),
/// 			PolicyDefinitionReferenceIds: pulumi.StringArray{
/// 				pulumi.String("Limit_Skus"),
/// 			},
/// 			PolicyExemptionName: pulumi.String("DemoExpensiveVM"),
/// 			ResourceSelectors: authorization.ResourceSelectorArray{
/// 				&authorization.ResourceSelectorArgs{
/// 					Name: pulumi.String("SDPRegions"),
/// 					Selectors: authorization.SelectorArray{
/// 						&authorization.SelectorArgs{
/// 							In: pulumi.StringArray{
/// 								pulumi.String("eastus2euap"),
/// 								pulumi.String("centraluseuap"),
/// 							},
/// 							Kind: pulumi.String(authorization.SelectorKindResourceLocation),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Scope: pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster"),
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
/// import com.pulumi.azurenative.authorization.PolicyExemption;
/// import com.pulumi.azurenative.authorization.PolicyExemptionArgs;
/// import com.pulumi.azurenative.authorization.inputs.ResourceSelectorArgs;
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
///         var policyExemption = new PolicyExemption("policyExemption", PolicyExemptionArgs.builder()
///             .assignmentScopeValidation("Default")
///             .description("Exempt demo cluster from limit sku")
///             .displayName("Exempt demo cluster")
///             .exemptionCategory("Waiver")
///             .metadata(Map.of("reason", "Temporary exemption for a expensive VM demo"))
///             .policyAssignmentId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement")
///             .policyDefinitionReferenceIds("Limit_Skus")
///             .policyExemptionName("DemoExpensiveVM")
///             .resourceSelectors(ResourceSelectorArgs.builder()
///                 .name("SDPRegions")
///                 .selectors(SelectorArgs.builder()
///                     .in(
///                         "eastus2euap",
///                         "centraluseuap")
///                     .kind("resourceLocation")
///                     .build())
///                 .build())
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster")
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
/// const policyExemption = new azure_native.authorization.PolicyExemption("policyExemption", {
///     assignmentScopeValidation: azure_native.authorization.AssignmentScopeValidation.Default,
///     description: "Exempt demo cluster from limit sku",
///     displayName: "Exempt demo cluster",
///     exemptionCategory: azure_native.authorization.ExemptionCategory.Waiver,
///     metadata: {
///         reason: "Temporary exemption for a expensive VM demo",
///     },
///     policyAssignmentId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement",
///     policyDefinitionReferenceIds: ["Limit_Skus"],
///     policyExemptionName: "DemoExpensiveVM",
///     resourceSelectors: [{
///         name: "SDPRegions",
///         selectors: [{
///             "in": [
///                 "eastus2euap",
///                 "centraluseuap",
///             ],
///             kind: azure_native.authorization.SelectorKind.ResourceLocation,
///         }],
///     }],
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_exemption = azure_native.authorization.PolicyExemption("policyExemption",
///     assignment_scope_validation=azure_native.authorization.AssignmentScopeValidation.DEFAULT,
///     description="Exempt demo cluster from limit sku",
///     display_name="Exempt demo cluster",
///     exemption_category=azure_native.authorization.ExemptionCategory.WAIVER,
///     metadata={
///         "reason": "Temporary exemption for a expensive VM demo",
///     },
///     policy_assignment_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement",
///     policy_definition_reference_ids=["Limit_Skus"],
///     policy_exemption_name="DemoExpensiveVM",
///     resource_selectors=[{
///         "name": "SDPRegions",
///         "selectors": [{
///             "in_": [
///                 "eastus2euap",
///                 "centraluseuap",
///             ],
///             "kind": azure_native.authorization.SelectorKind.RESOURCE_LOCATION,
///         }],
///     }],
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster")
///
/// ```
///
/// ```yaml
/// resources:
///   policyExemption:
///     type: azure-native:authorization:PolicyExemption
///     properties:
///       assignmentScopeValidation: Default
///       description: Exempt demo cluster from limit sku
///       displayName: Exempt demo cluster
///       exemptionCategory: Waiver
///       metadata:
///         reason: Temporary exemption for a expensive VM demo
///       policyAssignmentId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyAssignments/CostManagement
///       policyDefinitionReferenceIds:
///         - Limit_Skus
///       policyExemptionName: DemoExpensiveVM
///       resourceSelectors:
///         - name: SDPRegions
///           selectors:
///             - in:
///                 - eastus2euap
///                 - centraluseuap
///               kind: resourceLocation
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/resourceGroups/demoCluster
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
/// $ pulumi import azure-native:authorization:PolicyExemption DemoExpensiveVM /{scope}/providers/Microsoft.Authorization/policyExemptions/{policyExemptionName}
/// ```
class PolicyExemption extends pulumi.CustomResource {
  /// The option whether validate the exemption is at or under the assignment scope.
  late final pulumi.Output<String?> assignmentScopeValidation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the policy exemption.
  late final pulumi.Output<String?> description;
  /// The display name of the policy exemption.
  late final pulumi.Output<String?> displayName;
  /// The policy exemption category. Possible values are Waiver and Mitigated.
  late final pulumi.Output<String> exemptionCategory;
  /// The expiration date and time (in UTC ISO 8601 format yyyy-MM-ddTHH:mm:ssZ) of the policy exemption.
  late final pulumi.Output<String?> expiresOn;
  /// The policy exemption metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  late final pulumi.Output<dynamic> metadata;
  /// The name of the policy exemption.
  late final pulumi.Output<String> name;
  /// The ID of the policy assignment that is being exempted.
  late final pulumi.Output<String> policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  late final pulumi.Output<List<String>?> policyDefinitionReferenceIds;
  /// The resource selector list to filter policies by resource properties.
  late final pulumi.Output<List<ResourceSelectorResponse>?> resourceSelectors;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource (Microsoft.Authorization/policyExemptions).
  late final pulumi.Output<String> type;

  /// Creates a new [PolicyExemption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyExemption]. {@macro pulumi_authorization_policy_exemption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyExemption(
    String name, {
    PolicyExemptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:PolicyExemption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignmentScopeValidation = registerOutput<String?>('assignmentScopeValidation');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.exemptionCategory = registerOutput<String>('exemptionCategory');
    this.expiresOn = registerOutput<String?>('expiresOn');
    this.metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    this.policyAssignmentId = registerOutput<String>('policyAssignmentId');
    this.policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds');
    this.resourceSelectors = registerOutput<List<ResourceSelectorResponse>?>('resourceSelectors');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
