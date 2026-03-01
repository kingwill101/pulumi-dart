import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_policy_exemption_args.dart';

/// Manages a Resource Group Policy Exemption.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "resourceGroup1",
///     location: "westus",
/// });
/// const example = azure.policy.getPolicyDefintion({
///     displayName: "Allowed locations",
/// });
/// const exampleResourceGroupPolicyAssignment = new azure.core.ResourceGroupPolicyAssignment("example", {
///     name: "exampleAssignment",
///     resourceGroupId: exampleResourceGroup.id,
///     policyDefinitionId: example.then(example => example.id),
///     parameters: pulumi.jsonStringify({
///         listOfAllowedLocations: {
///             value: [exampleResourceGroup.location],
///         },
///     }),
/// });
/// const exampleResourceGroupPolicyExemption = new azure.core.ResourceGroupPolicyExemption("example", {
///     name: "exampleExemption",
///     resourceGroupId: exampleResourceGroup.id,
///     policyAssignmentId: exampleResourceGroupPolicyAssignment.id,
///     exemptionCategory: "Mitigated",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="resourceGroup1",
///     location="westus")
/// example = azure.policy.get_policy_defintion(display_name="Allowed locations")
/// example_resource_group_policy_assignment = azure.core.ResourceGroupPolicyAssignment("example",
///     name="exampleAssignment",
///     resource_group_id=example_resource_group.id,
///     policy_definition_id=example.id,
///     parameters=pulumi.Output.json_dumps({
///         "listOfAllowedLocations": {
///             "value": [example_resource_group.location],
///         },
///     }))
/// example_resource_group_policy_exemption = azure.core.ResourceGroupPolicyExemption("example",
///     name="exampleExemption",
///     resource_group_id=example_resource_group.id,
///     policy_assignment_id=example_resource_group_policy_assignment.id,
///     exemption_category="Mitigated")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "resourceGroup1",
///         Location = "westus",
///     });
///
///     var example = Azure.Policy.GetPolicyDefintion.Invoke(new()
///     {
///         DisplayName = "Allowed locations",
///     });
///
///     var exampleResourceGroupPolicyAssignment = new Azure.Core.ResourceGroupPolicyAssignment("example", new()
///     {
///         Name = "exampleAssignment",
///         ResourceGroupId = exampleResourceGroup.Id,
///         PolicyDefinitionId = example.Apply(getPolicyDefintionResult => getPolicyDefintionResult.Id),
///         Parameters = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["listOfAllowedLocations"] = new Dictionary<string, object?>
///             {
///                 ["value"] = new[]
///                 {
///                     exampleResourceGroup.Location,
///                 },
///             },
///         })),
///     });
///
///     var exampleResourceGroupPolicyExemption = new Azure.Core.ResourceGroupPolicyExemption("example", new()
///     {
///         Name = "exampleExemption",
///         ResourceGroupId = exampleResourceGroup.Id,
///         PolicyAssignmentId = exampleResourceGroupPolicyAssignment.Id,
///         ExemptionCategory = "Mitigated",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("resourceGroup1"),
/// 			Location: pulumi.String("westus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := policy.GetPolicyDefintion(ctx, &policy.GetPolicyDefintionArgs{
/// 			DisplayName: pulumi.StringRef("Allowed locations"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroupPolicyAssignment, err := core.NewResourceGroupPolicyAssignment(ctx, "example", &core.ResourceGroupPolicyAssignmentArgs{
/// 			Name:               pulumi.String("exampleAssignment"),
/// 			ResourceGroupId:    exampleResourceGroup.ID(),
/// 			PolicyDefinitionId: pulumi.String(example.Id),
/// 			Parameters: exampleResourceGroup.Location.ApplyT(func(location string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"listOfAllowedLocations": map[string]interface{}{
/// 						"value": []string{
/// 							location,
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewResourceGroupPolicyExemption(ctx, "example", &core.ResourceGroupPolicyExemptionArgs{
/// 			Name:               pulumi.String("exampleExemption"),
/// 			ResourceGroupId:    exampleResourceGroup.ID(),
/// 			PolicyAssignmentId: exampleResourceGroupPolicyAssignment.ID(),
/// 			ExemptionCategory:  pulumi.String("Mitigated"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.policy.PolicyFunctions;
/// import com.pulumi.azure.policy.inputs.GetPolicyDefintionArgs;
/// import com.pulumi.azure.core.ResourceGroupPolicyAssignment;
/// import com.pulumi.azure.core.ResourceGroupPolicyAssignmentArgs;
/// import com.pulumi.azure.core.ResourceGroupPolicyExemption;
/// import com.pulumi.azure.core.ResourceGroupPolicyExemptionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("resourceGroup1")
///             .location("westus")
///             .build());
///
///         final var example = PolicyFunctions.getPolicyDefintion(GetPolicyDefintionArgs.builder()
///             .displayName("Allowed locations")
///             .build());
///
///         var exampleResourceGroupPolicyAssignment = new ResourceGroupPolicyAssignment("exampleResourceGroupPolicyAssignment", ResourceGroupPolicyAssignmentArgs.builder()
///             .name("exampleAssignment")
///             .resourceGroupId(exampleResourceGroup.id())
///             .policyDefinitionId(example.id())
///             .parameters(exampleResourceGroup.location().applyValue(_location -> serializeJson(
///                 jsonObject(
///                     jsonProperty("listOfAllowedLocations", jsonObject(
///                         jsonProperty("value", jsonArray(_location))
///                     ))
///                 ))))
///             .build());
///
///         var exampleResourceGroupPolicyExemption = new ResourceGroupPolicyExemption("exampleResourceGroupPolicyExemption", ResourceGroupPolicyExemptionArgs.builder()
///             .name("exampleExemption")
///             .resourceGroupId(exampleResourceGroup.id())
///             .policyAssignmentId(exampleResourceGroupPolicyAssignment.id())
///             .exemptionCategory("Mitigated")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: resourceGroup1
///       location: westus
///   exampleResourceGroupPolicyAssignment:
///     type: azure:core:ResourceGroupPolicyAssignment
///     name: example
///     properties:
///       name: exampleAssignment
///       resourceGroupId: ${exampleResourceGroup.id}
///       policyDefinitionId: ${example.id}
///       parameters:
///         fn::toJSON:
///           listOfAllowedLocations:
///             value:
///               - ${exampleResourceGroup.location}
///   exampleResourceGroupPolicyExemption:
///     type: azure:core:ResourceGroupPolicyExemption
///     name: example
///     properties:
///       name: exampleExemption
///       resourceGroupId: ${exampleResourceGroup.id}
///       policyAssignmentId: ${exampleResourceGroupPolicyAssignment.id}
///       exemptionCategory: Mitigated
/// variables:
///   example:
///     fn::invoke:
///       function: azure:policy:getPolicyDefintion
///       arguments:
///         displayName: Allowed locations
/// ```
///
///
/// ## Import
///
/// Policy Exemptions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceGroupPolicyExemption:ResourceGroupPolicyExemption exemption1 /subscriptions/00000000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Authorization/policyExemptions/exemption1
/// ```
class ResourceGroupPolicyExemption extends pulumi.CustomResource {
  /// A description to use for this Policy Exemption.
  late final pulumi.Output<String?> description;
  /// A friendly display name to use for this Policy Exemption.
  late final pulumi.Output<String?> displayName;
  /// The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  late final pulumi.Output<String> exemptionCategory;
  /// The expiration date and time in UTC ISO 8601 format of this policy exemption.
  late final pulumi.Output<String?> expiresOn;
  /// The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  late final pulumi.Output<String> metadata;
  /// The name of the Policy Exemption. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created.
  late final pulumi.Output<String> policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  late final pulumi.Output<List<String>?> policyDefinitionReferenceIds;
  /// The Resource Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupId;

  /// Creates a new [ResourceGroupPolicyExemption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroupPolicyExemption]. {@macro pulumi_core_resource_group_policy_exemption_resource_group_policy_exemption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroupPolicyExemption(
    String name, {
    ResourceGroupPolicyExemptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceGroupPolicyExemption:ResourceGroupPolicyExemption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.exemptionCategory = registerOutput<String>('exemptionCategory');
    this.expiresOn = registerOutput<String?>('expiresOn');
    this.metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    this.policyAssignmentId = registerOutput<String>('policyAssignmentId');
    this.policyDefinitionReferenceIds = registerOutput<List<String>?>('policyDefinitionReferenceIds');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
  }
}
