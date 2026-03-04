import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'parameter_values_value_response.dart';
import 'policy_assignment_args.dart';
import 'system_data_response.dart';

/// The policy assignment.
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2020-09-01, 2021-06-01, 2022-06-01, 2023-04-01, 2024-04-01, 2024-05-01, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a policy assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyAssignment = new AzureNative.Authorization.PolicyAssignment("policyAssignment", new()
///     {
///         Description = "Force resource names to begin with given DeptA and end with -LC",
///         DisplayName = "Enforce resource naming rules",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["assignedBy"] = "Special Someone",
///         },
///         NonComplianceMessages = new[]
///         {
///             new AzureNative.Authorization.Inputs.NonComplianceMessageArgs
///             {
///                 Message = "Resource names must start with 'DeptA' and end with '-LC'.",
///             },
///         },
///         Parameters =
///         {
///             { "prefix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///             {
///                 Value = "DeptA",
///             } },
///             { "suffix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///             {
///                 Value = "-LC",
///             } },
///         },
///         PolicyAssignmentName = "EnforceNaming",
///         PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
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
/// 		_, err := authorization.NewPolicyAssignment(ctx, "policyAssignment", &authorization.PolicyAssignmentArgs{
/// 			Description: pulumi.String("Force resource names to begin with given DeptA and end with -LC"),
/// 			DisplayName: pulumi.String("Enforce resource naming rules"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"assignedBy": "Special Someone",
/// 			}),
/// 			NonComplianceMessages: authorization.NonComplianceMessageArray{
/// 				&authorization.NonComplianceMessageArgs{
/// 					Message: pulumi.String("Resource names must start with 'DeptA' and end with '-LC'."),
/// 				},
/// 			},
/// 			Parameters: authorization.ParameterValuesValueMap{
/// 				"prefix": &authorization.ParameterValuesValueArgs{
/// 					Value: pulumi.Any("DeptA"),
/// 				},
/// 				"suffix": &authorization.ParameterValuesValueArgs{
/// 					Value: pulumi.Any("-LC"),
/// 				},
/// 			},
/// 			PolicyAssignmentName: pulumi.String("EnforceNaming"),
/// 			PolicyDefinitionId:   pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming"),
/// 			Scope:                pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2"),
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
/// import com.pulumi.azurenative.authorization.PolicyAssignment;
/// import com.pulumi.azurenative.authorization.PolicyAssignmentArgs;
/// import com.pulumi.azurenative.authorization.inputs.NonComplianceMessageArgs;
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
///         var policyAssignment = new PolicyAssignment("policyAssignment", PolicyAssignmentArgs.builder()
///             .description("Force resource names to begin with given DeptA and end with -LC")
///             .displayName("Enforce resource naming rules")
///             .metadata(Map.of("assignedBy", "Special Someone"))
///             .nonComplianceMessages(NonComplianceMessageArgs.builder()
///                 .message("Resource names must start with 'DeptA' and end with '-LC'.")
///                 .build())
///             .parameters(Map.ofEntries(
///                 Map.entry("prefix", ParameterValuesValueArgs.builder()
///                     .value("DeptA")
///                     .build()),
///                 Map.entry("suffix", ParameterValuesValueArgs.builder()
///                     .value("-LC")
///                     .build())
///             ))
///             .policyAssignmentName("EnforceNaming")
///             .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming")
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
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
/// const policyAssignment = new azure_native.authorization.PolicyAssignment("policyAssignment", {
///     description: "Force resource names to begin with given DeptA and end with -LC",
///     displayName: "Enforce resource naming rules",
///     metadata: {
///         assignedBy: "Special Someone",
///     },
///     nonComplianceMessages: [{
///         message: "Resource names must start with 'DeptA' and end with '-LC'.",
///     }],
///     parameters: {
///         prefix: {
///             value: "DeptA",
///         },
///         suffix: {
///             value: "-LC",
///         },
///     },
///     policyAssignmentName: "EnforceNaming",
///     policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_assignment = azure_native.authorization.PolicyAssignment("policyAssignment",
///     description="Force resource names to begin with given DeptA and end with -LC",
///     display_name="Enforce resource naming rules",
///     metadata={
///         "assignedBy": "Special Someone",
///     },
///     non_compliance_messages=[{
///         "message": "Resource names must start with 'DeptA' and end with '-LC'.",
///     }],
///     parameters={
///         "prefix": {
///             "value": "DeptA",
///         },
///         "suffix": {
///             "value": "-LC",
///         },
///     },
///     policy_assignment_name="EnforceNaming",
///     policy_definition_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
///
/// ```
///
/// ```yaml
/// resources:
///   policyAssignment:
///     type: azure-native:authorization:PolicyAssignment
///     properties:
///       description: Force resource names to begin with given DeptA and end with -LC
///       displayName: Enforce resource naming rules
///       metadata:
///         assignedBy: Special Someone
///       nonComplianceMessages:
///         - message: Resource names must start with 'DeptA' and end with '-LC'.
///       parameters:
///         prefix:
///           value: DeptA
///         suffix:
///           value: -LC
///       policyAssignmentName: EnforceNaming
///       policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy assignment to enforce policy effect only on enrolled resources during resource creation or update.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyAssignment = new AzureNative.Authorization.PolicyAssignment("policyAssignment", new()
///     {
///         Description = "Force resource names to begin with given DeptA and end with -LC",
///         DisplayName = "Enforce resource naming rules",
///         EnforcementMode = AzureNative.Authorization.EnforcementMode.Enroll,
///         Metadata = new Dictionary<string, object?>
///         {
///             ["assignedBy"] = "Special Someone",
///         },
///         Parameters =
///         {
///             { "prefix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///             {
///                 Value = "DeptA",
///             } },
///             { "suffix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///             {
///                 Value = "-LC",
///             } },
///         },
///         PolicyAssignmentName = "EnforceNamingEnroll",
///         PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
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
/// 		_, err := authorization.NewPolicyAssignment(ctx, "policyAssignment", &authorization.PolicyAssignmentArgs{
/// 			Description:     pulumi.String("Force resource names to begin with given DeptA and end with -LC"),
/// 			DisplayName:     pulumi.String("Enforce resource naming rules"),
/// 			EnforcementMode: pulumi.String(authorization.EnforcementModeEnroll),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"assignedBy": "Special Someone",
/// 			}),
/// 			Parameters: authorization.ParameterValuesValueMap{
/// 				"prefix": &authorization.ParameterValuesValueArgs{
/// 					Value: pulumi.Any("DeptA"),
/// 				},
/// 				"suffix": &authorization.ParameterValuesValueArgs{
/// 					Value: pulumi.Any("-LC"),
/// 				},
/// 			},
/// 			PolicyAssignmentName: pulumi.String("EnforceNamingEnroll"),
/// 			PolicyDefinitionId:   pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming"),
/// 			Scope:                pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2"),
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
/// import com.pulumi.azurenative.authorization.PolicyAssignment;
/// import com.pulumi.azurenative.authorization.PolicyAssignmentArgs;
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
///         var policyAssignment = new PolicyAssignment("policyAssignment", PolicyAssignmentArgs.builder()
///             .description("Force resource names to begin with given DeptA and end with -LC")
///             .displayName("Enforce resource naming rules")
///             .enforcementMode("Enroll")
///             .metadata(Map.of("assignedBy", "Special Someone"))
///             .parameters(Map.ofEntries(
///                 Map.entry("prefix", ParameterValuesValueArgs.builder()
///                     .value("DeptA")
///                     .build()),
///                 Map.entry("suffix", ParameterValuesValueArgs.builder()
///                     .value("-LC")
///                     .build())
///             ))
///             .policyAssignmentName("EnforceNamingEnroll")
///             .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming")
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
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
/// const policyAssignment = new azure_native.authorization.PolicyAssignment("policyAssignment", {
///     description: "Force resource names to begin with given DeptA and end with -LC",
///     displayName: "Enforce resource naming rules",
///     enforcementMode: azure_native.authorization.EnforcementMode.Enroll,
///     metadata: {
///         assignedBy: "Special Someone",
///     },
///     parameters: {
///         prefix: {
///             value: "DeptA",
///         },
///         suffix: {
///             value: "-LC",
///         },
///     },
///     policyAssignmentName: "EnforceNamingEnroll",
///     policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_assignment = azure_native.authorization.PolicyAssignment("policyAssignment",
///     description="Force resource names to begin with given DeptA and end with -LC",
///     display_name="Enforce resource naming rules",
///     enforcement_mode=azure_native.authorization.EnforcementMode.ENROLL,
///     metadata={
///         "assignedBy": "Special Someone",
///     },
///     parameters={
///         "prefix": {
///             "value": "DeptA",
///         },
///         "suffix": {
///             "value": "-LC",
///         },
///     },
///     policy_assignment_name="EnforceNamingEnroll",
///     policy_definition_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
///
/// ```
///
/// ```yaml
/// resources:
///   policyAssignment:
///     type: azure-native:authorization:PolicyAssignment
///     properties:
///       description: Force resource names to begin with given DeptA and end with -LC
///       displayName: Enforce resource naming rules
///       enforcementMode: Enroll
///       metadata:
///         assignedBy: Special Someone
///       parameters:
///         prefix:
///           value: DeptA
///         suffix:
///           value: -LC
///       policyAssignmentName: EnforceNamingEnroll
///       policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy assignment with a system assigned identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyAssignment = new AzureNative.Authorization.PolicyAssignment("policyAssignment", new()
///     {
///         Description = "Force resource names to begin with given DeptA and end with -LC",
///         DisplayName = "Enforce resource naming rules",
///         EnforcementMode = AzureNative.Authorization.EnforcementMode.Default,
///         Identity = new AzureNative.Authorization.Inputs.IdentityArgs
///         {
///             Type = AzureNative.Authorization.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "eastus",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["assignedBy"] = "Foo Bar",
///         },
///         Parameters =
///         {
///             { "prefix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///             {
///                 Value = "DeptA",
///             } },
///             { "suffix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///             {
///                 Value = "-LC",
///             } },
///         },
///         PolicyAssignmentName = "EnforceNaming",
///         PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
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
/// 		_, err := authorization.NewPolicyAssignment(ctx, "policyAssignment", &authorization.PolicyAssignmentArgs{
/// 			Description:     pulumi.String("Force resource names to begin with given DeptA and end with -LC"),
/// 			DisplayName:     pulumi.String("Enforce resource naming rules"),
/// 			EnforcementMode: pulumi.String(authorization.EnforcementModeDefault),
/// 			Identity: &authorization.IdentityArgs{
/// 				Type: authorization.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"assignedBy": "Foo Bar",
/// 			}),
/// 			Parameters: authorization.ParameterValuesValueMap{
/// 				"prefix": &authorization.ParameterValuesValueArgs{
/// 					Value: pulumi.Any("DeptA"),
/// 				},
/// 				"suffix": &authorization.ParameterValuesValueArgs{
/// 					Value: pulumi.Any("-LC"),
/// 				},
/// 			},
/// 			PolicyAssignmentName: pulumi.String("EnforceNaming"),
/// 			PolicyDefinitionId:   pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming"),
/// 			Scope:                pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2"),
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
/// import com.pulumi.azurenative.authorization.PolicyAssignment;
/// import com.pulumi.azurenative.authorization.PolicyAssignmentArgs;
/// import com.pulumi.azurenative.authorization.inputs.IdentityArgs;
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
///         var policyAssignment = new PolicyAssignment("policyAssignment", PolicyAssignmentArgs.builder()
///             .description("Force resource names to begin with given DeptA and end with -LC")
///             .displayName("Enforce resource naming rules")
///             .enforcementMode("Default")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("eastus")
///             .metadata(Map.of("assignedBy", "Foo Bar"))
///             .parameters(Map.ofEntries(
///                 Map.entry("prefix", ParameterValuesValueArgs.builder()
///                     .value("DeptA")
///                     .build()),
///                 Map.entry("suffix", ParameterValuesValueArgs.builder()
///                     .value("-LC")
///                     .build())
///             ))
///             .policyAssignmentName("EnforceNaming")
///             .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming")
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
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
/// const policyAssignment = new azure_native.authorization.PolicyAssignment("policyAssignment", {
///     description: "Force resource names to begin with given DeptA and end with -LC",
///     displayName: "Enforce resource naming rules",
///     enforcementMode: azure_native.authorization.EnforcementMode.Default,
///     identity: {
///         type: azure_native.authorization.ResourceIdentityType.SystemAssigned,
///     },
///     location: "eastus",
///     metadata: {
///         assignedBy: "Foo Bar",
///     },
///     parameters: {
///         prefix: {
///             value: "DeptA",
///         },
///         suffix: {
///             value: "-LC",
///         },
///     },
///     policyAssignmentName: "EnforceNaming",
///     policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_assignment = azure_native.authorization.PolicyAssignment("policyAssignment",
///     description="Force resource names to begin with given DeptA and end with -LC",
///     display_name="Enforce resource naming rules",
///     enforcement_mode=azure_native.authorization.EnforcementMode.DEFAULT,
///     identity={
///         "type": azure_native.authorization.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="eastus",
///     metadata={
///         "assignedBy": "Foo Bar",
///     },
///     parameters={
///         "prefix": {
///             "value": "DeptA",
///         },
///         "suffix": {
///             "value": "-LC",
///         },
///     },
///     policy_assignment_name="EnforceNaming",
///     policy_definition_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
///
/// ```
///
/// ```yaml
/// resources:
///   policyAssignment:
///     type: azure-native:authorization:PolicyAssignment
///     properties:
///       description: Force resource names to begin with given DeptA and end with -LC
///       displayName: Enforce resource naming rules
///       enforcementMode: Default
///       identity:
///         type: SystemAssigned
///       location: eastus
///       metadata:
///         assignedBy: Foo Bar
///       parameters:
///         prefix:
///           value: DeptA
///         suffix:
///           value: -LC
///       policyAssignmentName: EnforceNaming
///       policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy assignment with multiple non-compliance messages
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyAssignment = new AzureNative.Authorization.PolicyAssignment("policyAssignment", new()
///     {
///         DisplayName = "Enforce security policies",
///         NonComplianceMessages = new[]
///         {
///             new AzureNative.Authorization.Inputs.NonComplianceMessageArgs
///             {
///                 Message = "Resources must comply with all internal security policies. See <internal site URL> for more info.",
///             },
///             new AzureNative.Authorization.Inputs.NonComplianceMessageArgs
///             {
///                 Message = "Resource names must start with 'DeptA' and end with '-LC'.",
///                 PolicyDefinitionReferenceId = "10420126870854049575",
///             },
///             new AzureNative.Authorization.Inputs.NonComplianceMessageArgs
///             {
///                 Message = "Storage accounts must have firewall rules configured.",
///                 PolicyDefinitionReferenceId = "8572513655450389710",
///             },
///         },
///         PolicyAssignmentName = "securityInitAssignment",
///         PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/securityInitiative",
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
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
/// 		_, err := authorization.NewPolicyAssignment(ctx, "policyAssignment", &authorization.PolicyAssignmentArgs{
/// 			DisplayName: pulumi.String("Enforce security policies"),
/// 			NonComplianceMessages: authorization.NonComplianceMessageArray{
/// 				&authorization.NonComplianceMessageArgs{
/// 					Message: pulumi.String("Resources must comply with all internal security policies. See <internal site URL> for more info."),
/// 				},
/// 				&authorization.NonComplianceMessageArgs{
/// 					Message:                     pulumi.String("Resource names must start with 'DeptA' and end with '-LC'."),
/// 					PolicyDefinitionReferenceId: pulumi.String("10420126870854049575"),
/// 				},
/// 				&authorization.NonComplianceMessageArgs{
/// 					Message:                     pulumi.String("Storage accounts must have firewall rules configured."),
/// 					PolicyDefinitionReferenceId: pulumi.String("8572513655450389710"),
/// 				},
/// 			},
/// 			PolicyAssignmentName: pulumi.String("securityInitAssignment"),
/// 			PolicyDefinitionId:   pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/securityInitiative"),
/// 			Scope:                pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2"),
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
/// import com.pulumi.azurenative.authorization.PolicyAssignment;
/// import com.pulumi.azurenative.authorization.PolicyAssignmentArgs;
/// import com.pulumi.azurenative.authorization.inputs.NonComplianceMessageArgs;
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
///         var policyAssignment = new PolicyAssignment("policyAssignment", PolicyAssignmentArgs.builder()
///             .displayName("Enforce security policies")
///             .nonComplianceMessages(
///                 NonComplianceMessageArgs.builder()
///                     .message("Resources must comply with all internal security policies. See <internal site URL> for more info.")
///                     .build(),
///                 NonComplianceMessageArgs.builder()
///                     .message("Resource names must start with 'DeptA' and end with '-LC'.")
///                     .policyDefinitionReferenceId("10420126870854049575")
///                     .build(),
///                 NonComplianceMessageArgs.builder()
///                     .message("Storage accounts must have firewall rules configured.")
///                     .policyDefinitionReferenceId("8572513655450389710")
///                     .build())
///             .policyAssignmentName("securityInitAssignment")
///             .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/securityInitiative")
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
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
/// const policyAssignment = new azure_native.authorization.PolicyAssignment("policyAssignment", {
///     displayName: "Enforce security policies",
///     nonComplianceMessages: [
///         {
///             message: "Resources must comply with all internal security policies. See <internal site URL> for more info.",
///         },
///         {
///             message: "Resource names must start with 'DeptA' and end with '-LC'.",
///             policyDefinitionReferenceId: "10420126870854049575",
///         },
///         {
///             message: "Storage accounts must have firewall rules configured.",
///             policyDefinitionReferenceId: "8572513655450389710",
///         },
///     ],
///     policyAssignmentName: "securityInitAssignment",
///     policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/securityInitiative",
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_assignment = azure_native.authorization.PolicyAssignment("policyAssignment",
///     display_name="Enforce security policies",
///     non_compliance_messages=[
///         {
///             "message": "Resources must comply with all internal security policies. See <internal site URL> for more info.",
///         },
///         {
///             "message": "Resource names must start with 'DeptA' and end with '-LC'.",
///             "policy_definition_reference_id": "10420126870854049575",
///         },
///         {
///             "message": "Storage accounts must have firewall rules configured.",
///             "policy_definition_reference_id": "8572513655450389710",
///         },
///     ],
///     policy_assignment_name="securityInitAssignment",
///     policy_definition_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/securityInitiative",
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
///
/// ```
///
/// ```yaml
/// resources:
///   policyAssignment:
///     type: azure-native:authorization:PolicyAssignment
///     properties:
///       displayName: Enforce security policies
///       nonComplianceMessages:
///         - message: Resources must comply with all internal security policies. See <internal site URL> for more info.
///         - message: Resource names must start with 'DeptA' and end with '-LC'.
///           policyDefinitionReferenceId: '10420126870854049575'
///         - message: Storage accounts must have firewall rules configured.
///           policyDefinitionReferenceId: '8572513655450389710'
///       policyAssignmentName: securityInitAssignment
///       policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/securityInitiative
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy assignment with overrides
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyAssignment = new AzureNative.Authorization.PolicyAssignment("policyAssignment", new()
///     {
///         DefinitionVersion = "1.*.*",
///         Description = "Limit the resource location and resource SKU",
///         DisplayName = "Limit the resource location and resource SKU",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["assignedBy"] = "Special Someone",
///         },
///         Overrides = new[]
///         {
///             new AzureNative.Authorization.Inputs.OverrideArgs
///             {
///                 Kind = AzureNative.Authorization.OverrideKind.PolicyEffect,
///                 Selectors = new[]
///                 {
///                     new AzureNative.Authorization.Inputs.SelectorArgs
///                     {
///                         In = new[]
///                         {
///                             "Limit_Skus",
///                             "Limit_Locations",
///                         },
///                         Kind = AzureNative.Authorization.SelectorKind.PolicyDefinitionReferenceId,
///                     },
///                 },
///                 Value = "Audit",
///             },
///             new AzureNative.Authorization.Inputs.OverrideArgs
///             {
///                 Kind = AzureNative.Authorization.OverrideKind.DefinitionVersion,
///                 Selectors = new[]
///                 {
///                     new AzureNative.Authorization.Inputs.SelectorArgs
///                     {
///                         In = new[]
///                         {
///                             "eastUSEuap",
///                             "centralUSEuap",
///                         },
///                         Kind = AzureNative.Authorization.SelectorKind.ResourceLocation,
///                     },
///                 },
///                 Value = "2.*.*",
///             },
///         },
///         PolicyAssignmentName = "CostManagement",
///         PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement",
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
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
/// 		_, err := authorization.NewPolicyAssignment(ctx, "policyAssignment", &authorization.PolicyAssignmentArgs{
/// 			DefinitionVersion: pulumi.String("1.*.*"),
/// 			Description:       pulumi.String("Limit the resource location and resource SKU"),
/// 			DisplayName:       pulumi.String("Limit the resource location and resource SKU"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"assignedBy": "Special Someone",
/// 			}),
/// 			Overrides: authorization.OverrideArray{
/// 				&authorization.OverrideArgs{
/// 					Kind: pulumi.String(authorization.OverrideKindPolicyEffect),
/// 					Selectors: authorization.SelectorArray{
/// 						&authorization.SelectorArgs{
/// 							In: pulumi.StringArray{
/// 								pulumi.String("Limit_Skus"),
/// 								pulumi.String("Limit_Locations"),
/// 							},
/// 							Kind: pulumi.String(authorization.SelectorKindPolicyDefinitionReferenceId),
/// 						},
/// 					},
/// 					Value: pulumi.String("Audit"),
/// 				},
/// 				&authorization.OverrideArgs{
/// 					Kind: pulumi.String(authorization.OverrideKindDefinitionVersion),
/// 					Selectors: authorization.SelectorArray{
/// 						&authorization.SelectorArgs{
/// 							In: pulumi.StringArray{
/// 								pulumi.String("eastUSEuap"),
/// 								pulumi.String("centralUSEuap"),
/// 							},
/// 							Kind: pulumi.String(authorization.SelectorKindResourceLocation),
/// 						},
/// 					},
/// 					Value: pulumi.String("2.*.*"),
/// 				},
/// 			},
/// 			PolicyAssignmentName: pulumi.String("CostManagement"),
/// 			PolicyDefinitionId:   pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement"),
/// 			Scope:                pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2"),
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
/// import com.pulumi.azurenative.authorization.PolicyAssignment;
/// import com.pulumi.azurenative.authorization.PolicyAssignmentArgs;
/// import com.pulumi.azurenative.authorization.inputs.OverrideArgs;
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
///         var policyAssignment = new PolicyAssignment("policyAssignment", PolicyAssignmentArgs.builder()
///             .definitionVersion("1.*.*")
///             .description("Limit the resource location and resource SKU")
///             .displayName("Limit the resource location and resource SKU")
///             .metadata(Map.of("assignedBy", "Special Someone"))
///             .overrides(
///                 OverrideArgs.builder()
///                     .kind("policyEffect")
///                     .selectors(SelectorArgs.builder()
///                         .in(
///                             "Limit_Skus",
///                             "Limit_Locations")
///                         .kind("policyDefinitionReferenceId")
///                         .build())
///                     .value("Audit")
///                     .build(),
///                 OverrideArgs.builder()
///                     .kind("definitionVersion")
///                     .selectors(SelectorArgs.builder()
///                         .in(
///                             "eastUSEuap",
///                             "centralUSEuap")
///                         .kind("resourceLocation")
///                         .build())
///                     .value("2.*.*")
///                     .build())
///             .policyAssignmentName("CostManagement")
///             .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement")
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
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
/// const policyAssignment = new azure_native.authorization.PolicyAssignment("policyAssignment", {
///     definitionVersion: "1.*.*",
///     description: "Limit the resource location and resource SKU",
///     displayName: "Limit the resource location and resource SKU",
///     metadata: {
///         assignedBy: "Special Someone",
///     },
///     overrides: [
///         {
///             kind: azure_native.authorization.OverrideKind.PolicyEffect,
///             selectors: [{
///                 "in": [
///                     "Limit_Skus",
///                     "Limit_Locations",
///                 ],
///                 kind: azure_native.authorization.SelectorKind.PolicyDefinitionReferenceId,
///             }],
///             value: "Audit",
///         },
///         {
///             kind: azure_native.authorization.OverrideKind.DefinitionVersion,
///             selectors: [{
///                 "in": [
///                     "eastUSEuap",
///                     "centralUSEuap",
///                 ],
///                 kind: azure_native.authorization.SelectorKind.ResourceLocation,
///             }],
///             value: "2.*.*",
///         },
///     ],
///     policyAssignmentName: "CostManagement",
///     policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement",
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_assignment = azure_native.authorization.PolicyAssignment("policyAssignment",
///     definition_version="1.*.*",
///     description="Limit the resource location and resource SKU",
///     display_name="Limit the resource location and resource SKU",
///     metadata={
///         "assignedBy": "Special Someone",
///     },
///     overrides=[
///         {
///             "kind": azure_native.authorization.OverrideKind.POLICY_EFFECT,
///             "selectors": [{
///                 "in_": [
///                     "Limit_Skus",
///                     "Limit_Locations",
///                 ],
///                 "kind": azure_native.authorization.SelectorKind.POLICY_DEFINITION_REFERENCE_ID,
///             }],
///             "value": "Audit",
///         },
///         {
///             "kind": azure_native.authorization.OverrideKind.DEFINITION_VERSION,
///             "selectors": [{
///                 "in_": [
///                     "eastUSEuap",
///                     "centralUSEuap",
///                 ],
///                 "kind": azure_native.authorization.SelectorKind.RESOURCE_LOCATION,
///             }],
///             "value": "2.*.*",
///         },
///     ],
///     policy_assignment_name="CostManagement",
///     policy_definition_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement",
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
///
/// ```
///
/// ```yaml
/// resources:
///   policyAssignment:
///     type: azure-native:authorization:PolicyAssignment
///     properties:
///       definitionVersion: 1.*.*
///       description: Limit the resource location and resource SKU
///       displayName: Limit the resource location and resource SKU
///       metadata:
///         assignedBy: Special Someone
///       overrides:
///         - kind: policyEffect
///           selectors:
///             - in:
///                 - Limit_Skus
///                 - Limit_Locations
///               kind: policyDefinitionReferenceId
///           value: Audit
///         - kind: definitionVersion
///           selectors:
///             - in:
///                 - eastUSEuap
///                 - centralUSEuap
///               kind: resourceLocation
///           value: 2.*.*
///       policyAssignmentName: CostManagement
///       policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy assignment with resource selectors
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyAssignment = new AzureNative.Authorization.PolicyAssignment("policyAssignment", new()
///     {
///         Description = "Limit the resource location and resource SKU",
///         DisplayName = "Limit the resource location and resource SKU",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["assignedBy"] = "Special Someone",
///         },
///         PolicyAssignmentName = "CostManagement",
///         PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement",
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
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
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
/// 		_, err := authorization.NewPolicyAssignment(ctx, "policyAssignment", &authorization.PolicyAssignmentArgs{
/// 			Description: pulumi.String("Limit the resource location and resource SKU"),
/// 			DisplayName: pulumi.String("Limit the resource location and resource SKU"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"assignedBy": "Special Someone",
/// 			}),
/// 			PolicyAssignmentName: pulumi.String("CostManagement"),
/// 			PolicyDefinitionId:   pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement"),
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
/// 			Scope: pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2"),
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
/// import com.pulumi.azurenative.authorization.PolicyAssignment;
/// import com.pulumi.azurenative.authorization.PolicyAssignmentArgs;
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
///         var policyAssignment = new PolicyAssignment("policyAssignment", PolicyAssignmentArgs.builder()
///             .description("Limit the resource location and resource SKU")
///             .displayName("Limit the resource location and resource SKU")
///             .metadata(Map.of("assignedBy", "Special Someone"))
///             .policyAssignmentName("CostManagement")
///             .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement")
///             .resourceSelectors(ResourceSelectorArgs.builder()
///                 .name("SDPRegions")
///                 .selectors(SelectorArgs.builder()
///                     .in(
///                         "eastus2euap",
///                         "centraluseuap")
///                     .kind("resourceLocation")
///                     .build())
///                 .build())
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
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
/// const policyAssignment = new azure_native.authorization.PolicyAssignment("policyAssignment", {
///     description: "Limit the resource location and resource SKU",
///     displayName: "Limit the resource location and resource SKU",
///     metadata: {
///         assignedBy: "Special Someone",
///     },
///     policyAssignmentName: "CostManagement",
///     policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement",
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
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_assignment = azure_native.authorization.PolicyAssignment("policyAssignment",
///     description="Limit the resource location and resource SKU",
///     display_name="Limit the resource location and resource SKU",
///     metadata={
///         "assignedBy": "Special Someone",
///     },
///     policy_assignment_name="CostManagement",
///     policy_definition_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement",
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
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
///
/// ```
///
/// ```yaml
/// resources:
///   policyAssignment:
///     type: azure-native:authorization:PolicyAssignment
///     properties:
///       description: Limit the resource location and resource SKU
///       displayName: Limit the resource location and resource SKU
///       metadata:
///         assignedBy: Special Someone
///       policyAssignmentName: CostManagement
///       policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policySetDefinitions/CostManagement
///       resourceSelectors:
///         - name: SDPRegions
///           selectors:
///             - in:
///                 - eastus2euap
///                 - centraluseuap
///               kind: resourceLocation
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a policy assignment without enforcing policy effect during resource creation or update.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyAssignment = new AzureNative.Authorization.PolicyAssignment("policyAssignment", new()
///     {
///         Description = "Force resource names to begin with given DeptA and end with -LC",
///         DisplayName = "Enforce resource naming rules",
///         EnforcementMode = AzureNative.Authorization.EnforcementMode.DoNotEnforce,
///         Metadata = new Dictionary<string, object?>
///         {
///             ["assignedBy"] = "Special Someone",
///         },
///         Parameters =
///         {
///             { "prefix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///             {
///                 Value = "DeptA",
///             } },
///             { "suffix", new AzureNative.Authorization.Inputs.ParameterValuesValueArgs
///             {
///                 Value = "-LC",
///             } },
///         },
///         PolicyAssignmentName = "EnforceNaming",
///         PolicyDefinitionId = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///         Scope = "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
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
/// 		_, err := authorization.NewPolicyAssignment(ctx, "policyAssignment", &authorization.PolicyAssignmentArgs{
/// 			Description:     pulumi.String("Force resource names to begin with given DeptA and end with -LC"),
/// 			DisplayName:     pulumi.String("Enforce resource naming rules"),
/// 			EnforcementMode: pulumi.String(authorization.EnforcementModeDoNotEnforce),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"assignedBy": "Special Someone",
/// 			}),
/// 			Parameters: authorization.ParameterValuesValueMap{
/// 				"prefix": &authorization.ParameterValuesValueArgs{
/// 					Value: pulumi.Any("DeptA"),
/// 				},
/// 				"suffix": &authorization.ParameterValuesValueArgs{
/// 					Value: pulumi.Any("-LC"),
/// 				},
/// 			},
/// 			PolicyAssignmentName: pulumi.String("EnforceNaming"),
/// 			PolicyDefinitionId:   pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming"),
/// 			Scope:                pulumi.String("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2"),
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
/// import com.pulumi.azurenative.authorization.PolicyAssignment;
/// import com.pulumi.azurenative.authorization.PolicyAssignmentArgs;
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
///         var policyAssignment = new PolicyAssignment("policyAssignment", PolicyAssignmentArgs.builder()
///             .description("Force resource names to begin with given DeptA and end with -LC")
///             .displayName("Enforce resource naming rules")
///             .enforcementMode("DoNotEnforce")
///             .metadata(Map.of("assignedBy", "Special Someone"))
///             .parameters(Map.ofEntries(
///                 Map.entry("prefix", ParameterValuesValueArgs.builder()
///                     .value("DeptA")
///                     .build()),
///                 Map.entry("suffix", ParameterValuesValueArgs.builder()
///                     .value("-LC")
///                     .build())
///             ))
///             .policyAssignmentName("EnforceNaming")
///             .policyDefinitionId("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming")
///             .scope("subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
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
/// const policyAssignment = new azure_native.authorization.PolicyAssignment("policyAssignment", {
///     description: "Force resource names to begin with given DeptA and end with -LC",
///     displayName: "Enforce resource naming rules",
///     enforcementMode: azure_native.authorization.EnforcementMode.DoNotEnforce,
///     metadata: {
///         assignedBy: "Special Someone",
///     },
///     parameters: {
///         prefix: {
///             value: "DeptA",
///         },
///         suffix: {
///             value: "-LC",
///         },
///     },
///     policyAssignmentName: "EnforceNaming",
///     policyDefinitionId: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///     scope: "subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy_assignment = azure_native.authorization.PolicyAssignment("policyAssignment",
///     description="Force resource names to begin with given DeptA and end with -LC",
///     display_name="Enforce resource naming rules",
///     enforcement_mode=azure_native.authorization.EnforcementMode.DO_NOT_ENFORCE,
///     metadata={
///         "assignedBy": "Special Someone",
///     },
///     parameters={
///         "prefix": {
///             "value": "DeptA",
///         },
///         "suffix": {
///             "value": "-LC",
///         },
///     },
///     policy_assignment_name="EnforceNaming",
///     policy_definition_id="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming",
///     scope="subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2")
///
/// ```
///
/// ```yaml
/// resources:
///   policyAssignment:
///     type: azure-native:authorization:PolicyAssignment
///     properties:
///       description: Force resource names to begin with given DeptA and end with -LC
///       displayName: Enforce resource naming rules
///       enforcementMode: DoNotEnforce
///       metadata:
///         assignedBy: Special Someone
///       parameters:
///         prefix:
///           value: DeptA
///         suffix:
///           value: -LC
///       policyAssignmentName: EnforceNaming
///       policyDefinitionId: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/providers/Microsoft.Authorization/policyDefinitions/ResourceNaming
///       scope: subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2
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
/// $ pulumi import azure-native:authorization:PolicyAssignment EnforceNaming /{scope}/providers/Microsoft.Authorization/policyAssignments/{policyAssignmentName}
/// ```
class PolicyAssignment extends pulumi.CustomResource {
  /// The type of policy assignment. Possible values are NotSpecified, System, SystemHidden, and Custom. Immutable.
  late final pulumi.Output<String?> assignmentType;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The version of the policy definition to use.
  late final pulumi.Output<String?> definitionVersion;

  /// This message will be part of response in case of policy violation.
  late final pulumi.Output<String?> description;

  /// The display name of the policy assignment.
  late final pulumi.Output<String?> displayName;

  /// The effective version of the policy definition in use. This is only present if requested via the $expand query parameter.
  late final pulumi.Output<String> effectiveDefinitionVersion;

  /// The policy assignment enforcement mode. Possible values are Default, DoNotEnforce, and Enroll
  late final pulumi.Output<String?> enforcementMode;

  /// The managed identity associated with the policy assignment.
  late final pulumi.Output<IdentityResponse?> identity;

  /// The instance ID of the policy assignment. This ID only and always changes when the assignment is deleted and recreated.
  late final pulumi.Output<String> instanceId;

  /// The latest version of the policy definition available. This is only present if requested via the $expand query parameter.
  late final pulumi.Output<String> latestDefinitionVersion;

  /// The location of the policy assignment. Only required when utilizing managed identity.
  late final pulumi.Output<String?> location;

  /// The policy assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  late final pulumi.Output<dynamic> metadata;

  /// The name of the policy assignment.
  late final pulumi.Output<String> name;

  /// The messages that describe why a resource is non-compliant with the policy.
  late final pulumi.Output<List<Map<String, dynamic>>?> nonComplianceMessages;

  /// The policy's excluded scopes.
  late final pulumi.Output<List<String>?> notScopes;

  /// The policy property value override.
  late final pulumi.Output<List<Map<String, dynamic>>?> overrides;

  /// The parameter values for the assigned policy rule. The keys are the parameter names.
  late final pulumi.Output<Map<String, ParameterValuesValueResponse>?>
  parameters;

  /// The ID of the policy definition or policy set definition being assigned.
  late final pulumi.Output<String?> policyDefinitionId;

  /// The resource selector list to filter policies by resource properties.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourceSelectors;

  /// The scope for the policy assignment.
  late final pulumi.Output<String> scope;

  /// The system metadata relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the policy assignment.
  late final pulumi.Output<String> type;

  /// Creates a new [PolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyAssignment]. {@macro pulumi_authorization_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyAssignment(
    String name, {
    PolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:authorization:PolicyAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignmentType = registerOutput<String?>('assignmentType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    definitionVersion = registerOutput<String?>('definitionVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveDefinitionVersion = registerOutput<String>(
      'effectiveDefinitionVersion',
    );
    enforcementMode = registerOutput<String?>('enforcementMode');
    identity = registerOutput<IdentityResponse?>('identity');
    instanceId = registerOutput<String>('instanceId');
    latestDefinitionVersion = registerOutput<String>('latestDefinitionVersion');
    location = registerOutput<String?>('location');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    nonComplianceMessages = registerOutput<List<Map<String, dynamic>>?>(
      'nonComplianceMessages',
    );
    notScopes = registerOutput<List<String>?>('notScopes');
    overrides = registerOutput<List<Map<String, dynamic>>?>('overrides');
    parameters = registerOutput<Map<String, ParameterValuesValueResponse>?>(
      'parameters',
    );
    policyDefinitionId = registerOutput<String?>('policyDefinitionId');
    resourceSelectors = registerOutput<List<Map<String, dynamic>>?>(
      'resourceSelectors',
    );
    scope = registerOutput<String>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
