import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_args.dart';
import 'assignment_lock_settings_response.dart';
import 'assignment_status_response.dart';
import 'managed_service_identity_response.dart';
import 'parameter_value_response.dart';
import 'resource_group_value_response.dart';

/// Represents a blueprint assignment.
///
/// Uses Azure REST API version 2018-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Assignment with system-assigned managed identity at management group scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assignment = new AzureNative.Blueprint.Assignment("assignment", new()
///     {
///         AssignmentName = "assignSimpleBlueprint",
///         BlueprintId = "/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///         Description = "enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///         Identity = new AzureNative.Blueprint.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.Blueprint.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "eastus",
///         Parameters =
///         {
///             { "costCenter", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = "Contoso/Online/Shopping/Production",
///             } },
///             { "owners", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = new[]
///                 {
///                     "johnDoe@contoso.com",
///                     "johnsteam@contoso.com",
///                 },
///             } },
///             { "storageAccountType", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = "Standard_LRS",
///             } },
///         },
///         ResourceGroups =
///         {
///             { "storageRG", new AzureNative.Blueprint.Inputs.ResourceGroupValueArgs
///             {
///                 Location = "eastus",
///                 Name = "defaultRG",
///             } },
///         },
///         ResourceScope = "managementGroups/ContosoOnlineGroup",
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewAssignment(ctx, "assignment", &blueprint.AssignmentArgs{
/// 			AssignmentName: pulumi.String("assignSimpleBlueprint"),
/// 			BlueprintId:    pulumi.String("/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint"),
/// 			Description:    pulumi.String("enforce pre-defined simpleBlueprint to this XXXXXXXX subscription."),
/// 			Identity: &blueprint.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(blueprint.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Parameters: blueprint.ParameterValueMap{
/// 				"costCenter": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any("Contoso/Online/Shopping/Production"),
/// 				},
/// 				"owners": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any{
/// 						"johnDoe@contoso.com",
/// 						"johnsteam@contoso.com",
/// 					},
/// 				},
/// 				"storageAccountType": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any("Standard_LRS"),
/// 				},
/// 			},
/// 			ResourceGroups: blueprint.ResourceGroupValueMap{
/// 				"storageRG": &blueprint.ResourceGroupValueArgs{
/// 					Location: pulumi.String("eastus"),
/// 					Name:     pulumi.String("defaultRG"),
/// 				},
/// 			},
/// 			ResourceScope: pulumi.String("managementGroups/ContosoOnlineGroup"),
/// 			Scope:         pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
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
/// import com.pulumi.azurenative.blueprint.Assignment;
/// import com.pulumi.azurenative.blueprint.AssignmentArgs;
/// import com.pulumi.azurenative.blueprint.inputs.ManagedServiceIdentityArgs;
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
///         var assignment = new Assignment("assignment", AssignmentArgs.builder()
///             .assignmentName("assignSimpleBlueprint")
///             .blueprintId("/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint")
///             .description("enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("eastus")
///             .parameters(Map.ofEntries(
///                 Map.entry("costCenter", ParameterValueArgs.builder()
///                     .value("Contoso/Online/Shopping/Production")
///                     .build()),
///                 Map.entry("owners", ParameterValueArgs.builder()
///                     .value(
///                         "johnDoe@contoso.com",
///                         "johnsteam@contoso.com")
///                     .build()),
///                 Map.entry("storageAccountType", ParameterValueArgs.builder()
///                     .value("Standard_LRS")
///                     .build())
///             ))
///             .resourceGroups(Map.of("storageRG", ResourceGroupValueArgs.builder()
///                 .location("eastus")
///                 .name("defaultRG")
///                 .build()))
///             .resourceScope("managementGroups/ContosoOnlineGroup")
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000")
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
/// const assignment = new azure_native.blueprint.Assignment("assignment", {
///     assignmentName: "assignSimpleBlueprint",
///     blueprintId: "/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///     description: "enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///     identity: {
///         type: azure_native.blueprint.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "eastus",
///     parameters: {
///         costCenter: {
///             value: "Contoso/Online/Shopping/Production",
///         },
///         owners: {
///             value: [
///                 "johnDoe@contoso.com",
///                 "johnsteam@contoso.com",
///             ],
///         },
///         storageAccountType: {
///             value: "Standard_LRS",
///         },
///     },
///     resourceGroups: {
///         storageRG: {
///             location: "eastus",
///             name: "defaultRG",
///         },
///     },
///     resourceScope: "managementGroups/ContosoOnlineGroup",
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assignment = azure_native.blueprint.Assignment("assignment",
///     assignment_name="assignSimpleBlueprint",
///     blueprint_id="/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///     description="enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///     identity={
///         "type": azure_native.blueprint.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="eastus",
///     parameters={
///         "costCenter": {
///             "value": "Contoso/Online/Shopping/Production",
///         },
///         "owners": {
///             "value": [
///                 "johnDoe@contoso.com",
///                 "johnsteam@contoso.com",
///             ],
///         },
///         "storageAccountType": {
///             "value": "Standard_LRS",
///         },
///     },
///     resource_groups={
///         "storageRG": {
///             "location": "eastus",
///             "name": "defaultRG",
///         },
///     },
///     resource_scope="managementGroups/ContosoOnlineGroup",
///     scope="subscriptions/00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   assignment:
///     type: azure-native:blueprint:Assignment
///     properties:
///       assignmentName: assignSimpleBlueprint
///       blueprintId: /providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint
///       description: enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.
///       identity:
///         type: SystemAssigned
///       location: eastus
///       parameters:
///         costCenter:
///           value: Contoso/Online/Shopping/Production
///         owners:
///           value:
///             - johnDoe@contoso.com
///             - johnsteam@contoso.com
///         storageAccountType:
///           value: Standard_LRS
///       resourceGroups:
///         storageRG:
///           location: eastus
///           name: defaultRG
///       resourceScope: managementGroups/ContosoOnlineGroup
///       scope: subscriptions/00000000-0000-0000-0000-000000000000
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Assignment with system-assigned managed identity at subscription scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assignment = new AzureNative.Blueprint.Assignment("assignment", new()
///     {
///         AssignmentName = "assignSimpleBlueprint",
///         BlueprintId = "/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///         Description = "enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///         Identity = new AzureNative.Blueprint.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.Blueprint.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "eastus",
///         Parameters =
///         {
///             { "costCenter", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = "Contoso/Online/Shopping/Production",
///             } },
///             { "owners", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = new[]
///                 {
///                     "johnDoe@contoso.com",
///                     "johnsteam@contoso.com",
///                 },
///             } },
///             { "storageAccountType", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = "Standard_LRS",
///             } },
///         },
///         ResourceGroups =
///         {
///             { "storageRG", new AzureNative.Blueprint.Inputs.ResourceGroupValueArgs
///             {
///                 Location = "eastus",
///                 Name = "defaultRG",
///             } },
///         },
///         ResourceScope = "subscriptions/00000000-0000-0000-0000-000000000000",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewAssignment(ctx, "assignment", &blueprint.AssignmentArgs{
/// 			AssignmentName: pulumi.String("assignSimpleBlueprint"),
/// 			BlueprintId:    pulumi.String("/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint"),
/// 			Description:    pulumi.String("enforce pre-defined simpleBlueprint to this XXXXXXXX subscription."),
/// 			Identity: &blueprint.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(blueprint.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Parameters: blueprint.ParameterValueMap{
/// 				"costCenter": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any("Contoso/Online/Shopping/Production"),
/// 				},
/// 				"owners": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any{
/// 						"johnDoe@contoso.com",
/// 						"johnsteam@contoso.com",
/// 					},
/// 				},
/// 				"storageAccountType": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any("Standard_LRS"),
/// 				},
/// 			},
/// 			ResourceGroups: blueprint.ResourceGroupValueMap{
/// 				"storageRG": &blueprint.ResourceGroupValueArgs{
/// 					Location: pulumi.String("eastus"),
/// 					Name:     pulumi.String("defaultRG"),
/// 				},
/// 			},
/// 			ResourceScope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
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
/// import com.pulumi.azurenative.blueprint.Assignment;
/// import com.pulumi.azurenative.blueprint.AssignmentArgs;
/// import com.pulumi.azurenative.blueprint.inputs.ManagedServiceIdentityArgs;
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
///         var assignment = new Assignment("assignment", AssignmentArgs.builder()
///             .assignmentName("assignSimpleBlueprint")
///             .blueprintId("/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint")
///             .description("enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("eastus")
///             .parameters(Map.ofEntries(
///                 Map.entry("costCenter", ParameterValueArgs.builder()
///                     .value("Contoso/Online/Shopping/Production")
///                     .build()),
///                 Map.entry("owners", ParameterValueArgs.builder()
///                     .value(
///                         "johnDoe@contoso.com",
///                         "johnsteam@contoso.com")
///                     .build()),
///                 Map.entry("storageAccountType", ParameterValueArgs.builder()
///                     .value("Standard_LRS")
///                     .build())
///             ))
///             .resourceGroups(Map.of("storageRG", ResourceGroupValueArgs.builder()
///                 .location("eastus")
///                 .name("defaultRG")
///                 .build()))
///             .resourceScope("subscriptions/00000000-0000-0000-0000-000000000000")
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
/// const assignment = new azure_native.blueprint.Assignment("assignment", {
///     assignmentName: "assignSimpleBlueprint",
///     blueprintId: "/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///     description: "enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///     identity: {
///         type: azure_native.blueprint.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "eastus",
///     parameters: {
///         costCenter: {
///             value: "Contoso/Online/Shopping/Production",
///         },
///         owners: {
///             value: [
///                 "johnDoe@contoso.com",
///                 "johnsteam@contoso.com",
///             ],
///         },
///         storageAccountType: {
///             value: "Standard_LRS",
///         },
///     },
///     resourceGroups: {
///         storageRG: {
///             location: "eastus",
///             name: "defaultRG",
///         },
///     },
///     resourceScope: "subscriptions/00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assignment = azure_native.blueprint.Assignment("assignment",
///     assignment_name="assignSimpleBlueprint",
///     blueprint_id="/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///     description="enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///     identity={
///         "type": azure_native.blueprint.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="eastus",
///     parameters={
///         "costCenter": {
///             "value": "Contoso/Online/Shopping/Production",
///         },
///         "owners": {
///             "value": [
///                 "johnDoe@contoso.com",
///                 "johnsteam@contoso.com",
///             ],
///         },
///         "storageAccountType": {
///             "value": "Standard_LRS",
///         },
///     },
///     resource_groups={
///         "storageRG": {
///             "location": "eastus",
///             "name": "defaultRG",
///         },
///     },
///     resource_scope="subscriptions/00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   assignment:
///     type: azure-native:blueprint:Assignment
///     properties:
///       assignmentName: assignSimpleBlueprint
///       blueprintId: /providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint
///       description: enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.
///       identity:
///         type: SystemAssigned
///       location: eastus
///       parameters:
///         costCenter:
///           value: Contoso/Online/Shopping/Production
///         owners:
///           value:
///             - johnDoe@contoso.com
///             - johnsteam@contoso.com
///         storageAccountType:
///           value: Standard_LRS
///       resourceGroups:
///         storageRG:
///           location: eastus
///           name: defaultRG
///       resourceScope: subscriptions/00000000-0000-0000-0000-000000000000
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Assignment with user-assigned managed identity at management group scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assignment = new AzureNative.Blueprint.Assignment("assignment", new()
///     {
///         AssignmentName = "assignSimpleBlueprint",
///         BlueprintId = "/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///         Description = "enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///         Identity = new AzureNative.Blueprint.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.Blueprint.ManagedServiceIdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity", null },
///             },
///         },
///         Location = "eastus",
///         Parameters =
///         {
///             { "costCenter", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = "Contoso/Online/Shopping/Production",
///             } },
///             { "owners", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = new[]
///                 {
///                     "johnDoe@contoso.com",
///                     "johnsteam@contoso.com",
///                 },
///             } },
///             { "storageAccountType", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = "Standard_LRS",
///             } },
///         },
///         ResourceGroups =
///         {
///             { "storageRG", new AzureNative.Blueprint.Inputs.ResourceGroupValueArgs
///             {
///                 Location = "eastus",
///                 Name = "defaultRG",
///             } },
///         },
///         ResourceScope = "managementGroups/ContosoOnlineGroup",
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewAssignment(ctx, "assignment", &blueprint.AssignmentArgs{
/// 			AssignmentName: pulumi.String("assignSimpleBlueprint"),
/// 			BlueprintId:    pulumi.String("/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint"),
/// 			Description:    pulumi.String("enforce pre-defined simpleBlueprint to this XXXXXXXX subscription."),
/// 			Identity: &blueprint.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(blueprint.ManagedServiceIdentityTypeUserAssigned),
/// 				UserAssignedIdentities: blueprint.UserAssignedIdentityMap{
/// 					"/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity": &blueprint.UserAssignedIdentityArgs{},
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Parameters: blueprint.ParameterValueMap{
/// 				"costCenter": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any("Contoso/Online/Shopping/Production"),
/// 				},
/// 				"owners": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any{
/// 						"johnDoe@contoso.com",
/// 						"johnsteam@contoso.com",
/// 					},
/// 				},
/// 				"storageAccountType": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any("Standard_LRS"),
/// 				},
/// 			},
/// 			ResourceGroups: blueprint.ResourceGroupValueMap{
/// 				"storageRG": &blueprint.ResourceGroupValueArgs{
/// 					Location: pulumi.String("eastus"),
/// 					Name:     pulumi.String("defaultRG"),
/// 				},
/// 			},
/// 			ResourceScope: pulumi.String("managementGroups/ContosoOnlineGroup"),
/// 			Scope:         pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
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
/// import com.pulumi.azurenative.blueprint.Assignment;
/// import com.pulumi.azurenative.blueprint.AssignmentArgs;
/// import com.pulumi.azurenative.blueprint.inputs.ManagedServiceIdentityArgs;
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
///         var assignment = new Assignment("assignment", AssignmentArgs.builder()
///             .assignmentName("assignSimpleBlueprint")
///             .blueprintId("/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint")
///             .description("enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity", UserAssignedIdentityArgs.builder()
///                     .build()))
///                 .build())
///             .location("eastus")
///             .parameters(Map.ofEntries(
///                 Map.entry("costCenter", ParameterValueArgs.builder()
///                     .value("Contoso/Online/Shopping/Production")
///                     .build()),
///                 Map.entry("owners", ParameterValueArgs.builder()
///                     .value(
///                         "johnDoe@contoso.com",
///                         "johnsteam@contoso.com")
///                     .build()),
///                 Map.entry("storageAccountType", ParameterValueArgs.builder()
///                     .value("Standard_LRS")
///                     .build())
///             ))
///             .resourceGroups(Map.of("storageRG", ResourceGroupValueArgs.builder()
///                 .location("eastus")
///                 .name("defaultRG")
///                 .build()))
///             .resourceScope("managementGroups/ContosoOnlineGroup")
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000")
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
/// const assignment = new azure_native.blueprint.Assignment("assignment", {
///     assignmentName: "assignSimpleBlueprint",
///     blueprintId: "/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///     description: "enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///     identity: {
///         type: azure_native.blueprint.ManagedServiceIdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity": {},
///         },
///     },
///     location: "eastus",
///     parameters: {
///         costCenter: {
///             value: "Contoso/Online/Shopping/Production",
///         },
///         owners: {
///             value: [
///                 "johnDoe@contoso.com",
///                 "johnsteam@contoso.com",
///             ],
///         },
///         storageAccountType: {
///             value: "Standard_LRS",
///         },
///     },
///     resourceGroups: {
///         storageRG: {
///             location: "eastus",
///             name: "defaultRG",
///         },
///     },
///     resourceScope: "managementGroups/ContosoOnlineGroup",
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assignment = azure_native.blueprint.Assignment("assignment",
///     assignment_name="assignSimpleBlueprint",
///     blueprint_id="/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///     description="enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///     identity={
///         "type": azure_native.blueprint.ManagedServiceIdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity": {},
///         },
///     },
///     location="eastus",
///     parameters={
///         "costCenter": {
///             "value": "Contoso/Online/Shopping/Production",
///         },
///         "owners": {
///             "value": [
///                 "johnDoe@contoso.com",
///                 "johnsteam@contoso.com",
///             ],
///         },
///         "storageAccountType": {
///             "value": "Standard_LRS",
///         },
///     },
///     resource_groups={
///         "storageRG": {
///             "location": "eastus",
///             "name": "defaultRG",
///         },
///     },
///     resource_scope="managementGroups/ContosoOnlineGroup",
///     scope="subscriptions/00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   assignment:
///     type: azure-native:blueprint:Assignment
///     properties:
///       assignmentName: assignSimpleBlueprint
///       blueprintId: /providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint
///       description: enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity
///           : {}
///       location: eastus
///       parameters:
///         costCenter:
///           value: Contoso/Online/Shopping/Production
///         owners:
///           value:
///             - johnDoe@contoso.com
///             - johnsteam@contoso.com
///         storageAccountType:
///           value: Standard_LRS
///       resourceGroups:
///         storageRG:
///           location: eastus
///           name: defaultRG
///       resourceScope: managementGroups/ContosoOnlineGroup
///       scope: subscriptions/00000000-0000-0000-0000-000000000000
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Assignment with user-assigned managed identity at subscription scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assignment = new AzureNative.Blueprint.Assignment("assignment", new()
///     {
///         AssignmentName = "assignSimpleBlueprint",
///         BlueprintId = "/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///         Description = "enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///         Identity = new AzureNative.Blueprint.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.Blueprint.ManagedServiceIdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity", null },
///             },
///         },
///         Location = "eastus",
///         Parameters =
///         {
///             { "costCenter", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = "Contoso/Online/Shopping/Production",
///             } },
///             { "owners", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = new[]
///                 {
///                     "johnDoe@contoso.com",
///                     "johnsteam@contoso.com",
///                 },
///             } },
///             { "storageAccountType", new AzureNative.Blueprint.Inputs.ParameterValueArgs
///             {
///                 Value = "Standard_LRS",
///             } },
///         },
///         ResourceGroups =
///         {
///             { "storageRG", new AzureNative.Blueprint.Inputs.ResourceGroupValueArgs
///             {
///                 Location = "eastus",
///                 Name = "defaultRG",
///             } },
///         },
///         ResourceScope = "subscriptions/00000000-0000-0000-0000-000000000000",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewAssignment(ctx, "assignment", &blueprint.AssignmentArgs{
/// 			AssignmentName: pulumi.String("assignSimpleBlueprint"),
/// 			BlueprintId:    pulumi.String("/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint"),
/// 			Description:    pulumi.String("enforce pre-defined simpleBlueprint to this XXXXXXXX subscription."),
/// 			Identity: &blueprint.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(blueprint.ManagedServiceIdentityTypeUserAssigned),
/// 				UserAssignedIdentities: blueprint.UserAssignedIdentityMap{
/// 					"/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity": &blueprint.UserAssignedIdentityArgs{},
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Parameters: blueprint.ParameterValueMap{
/// 				"costCenter": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any("Contoso/Online/Shopping/Production"),
/// 				},
/// 				"owners": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any{
/// 						"johnDoe@contoso.com",
/// 						"johnsteam@contoso.com",
/// 					},
/// 				},
/// 				"storageAccountType": &blueprint.ParameterValueArgs{
/// 					Value: pulumi.Any("Standard_LRS"),
/// 				},
/// 			},
/// 			ResourceGroups: blueprint.ResourceGroupValueMap{
/// 				"storageRG": &blueprint.ResourceGroupValueArgs{
/// 					Location: pulumi.String("eastus"),
/// 					Name:     pulumi.String("defaultRG"),
/// 				},
/// 			},
/// 			ResourceScope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
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
/// import com.pulumi.azurenative.blueprint.Assignment;
/// import com.pulumi.azurenative.blueprint.AssignmentArgs;
/// import com.pulumi.azurenative.blueprint.inputs.ManagedServiceIdentityArgs;
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
///         var assignment = new Assignment("assignment", AssignmentArgs.builder()
///             .assignmentName("assignSimpleBlueprint")
///             .blueprintId("/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint")
///             .description("enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity", UserAssignedIdentityArgs.builder()
///                     .build()))
///                 .build())
///             .location("eastus")
///             .parameters(Map.ofEntries(
///                 Map.entry("costCenter", ParameterValueArgs.builder()
///                     .value("Contoso/Online/Shopping/Production")
///                     .build()),
///                 Map.entry("owners", ParameterValueArgs.builder()
///                     .value(
///                         "johnDoe@contoso.com",
///                         "johnsteam@contoso.com")
///                     .build()),
///                 Map.entry("storageAccountType", ParameterValueArgs.builder()
///                     .value("Standard_LRS")
///                     .build())
///             ))
///             .resourceGroups(Map.of("storageRG", ResourceGroupValueArgs.builder()
///                 .location("eastus")
///                 .name("defaultRG")
///                 .build()))
///             .resourceScope("subscriptions/00000000-0000-0000-0000-000000000000")
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
/// const assignment = new azure_native.blueprint.Assignment("assignment", {
///     assignmentName: "assignSimpleBlueprint",
///     blueprintId: "/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///     description: "enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///     identity: {
///         type: azure_native.blueprint.ManagedServiceIdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity": {},
///         },
///     },
///     location: "eastus",
///     parameters: {
///         costCenter: {
///             value: "Contoso/Online/Shopping/Production",
///         },
///         owners: {
///             value: [
///                 "johnDoe@contoso.com",
///                 "johnsteam@contoso.com",
///             ],
///         },
///         storageAccountType: {
///             value: "Standard_LRS",
///         },
///     },
///     resourceGroups: {
///         storageRG: {
///             location: "eastus",
///             name: "defaultRG",
///         },
///     },
///     resourceScope: "subscriptions/00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assignment = azure_native.blueprint.Assignment("assignment",
///     assignment_name="assignSimpleBlueprint",
///     blueprint_id="/providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint",
///     description="enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.",
///     identity={
///         "type": azure_native.blueprint.ManagedServiceIdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity": {},
///         },
///     },
///     location="eastus",
///     parameters={
///         "costCenter": {
///             "value": "Contoso/Online/Shopping/Production",
///         },
///         "owners": {
///             "value": [
///                 "johnDoe@contoso.com",
///                 "johnsteam@contoso.com",
///             ],
///         },
///         "storageAccountType": {
///             "value": "Standard_LRS",
///         },
///     },
///     resource_groups={
///         "storageRG": {
///             "location": "eastus",
///             "name": "defaultRG",
///         },
///     },
///     resource_scope="subscriptions/00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   assignment:
///     type: azure-native:blueprint:Assignment
///     properties:
///       assignmentName: assignSimpleBlueprint
///       blueprintId: /providers/Microsoft.Management/managementGroups/ContosoOnlineGroup/providers/Microsoft.Blueprint/blueprints/simpleBlueprint
///       description: enforce pre-defined simpleBlueprint to this XXXXXXXX subscription.
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/contoso-identity
///           : {}
///       location: eastus
///       parameters:
///         costCenter:
///           value: Contoso/Online/Shopping/Production
///         owners:
///           value:
///             - johnDoe@contoso.com
///             - johnsteam@contoso.com
///         storageAccountType:
///           value: Standard_LRS
///       resourceGroups:
///         storageRG:
///           location: eastus
///           name: defaultRG
///       resourceScope: subscriptions/00000000-0000-0000-0000-000000000000
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
/// $ pulumi import azure-native:blueprint:Assignment assignSimpleBlueprint /{resourceScope}/providers/Microsoft.Blueprint/blueprintAssignments/{assignmentName}
/// ```
class Assignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// ID of the published version of a blueprint definition.
  late final pulumi.Output<String?> blueprintId;

  /// Multi-line explain this resource.
  late final pulumi.Output<String?> description;

  /// One-liner string explain this resource.
  late final pulumi.Output<String?> displayName;

  /// Managed identity for this blueprint assignment.
  late final pulumi.Output<ManagedServiceIdentityResponse> identity;

  /// The location of this blueprint assignment.
  late final pulumi.Output<String> location;

  /// Defines how resources deployed by a blueprint assignment are locked.
  late final pulumi.Output<AssignmentLockSettingsResponse?> locks;

  /// Name of this resource.
  late final pulumi.Output<String> name;

  /// Blueprint assignment parameter values.
  late final pulumi.Output<Map<String, ParameterValueResponse>> parameters;

  /// State of the blueprint assignment.
  late final pulumi.Output<String> provisioningState;

  /// Names and locations of resource group placeholders.
  late final pulumi.Output<Map<String, ResourceGroupValueResponse>>
  resourceGroups;

  /// The target subscription scope of the blueprint assignment (format: '/subscriptions/{subscriptionId}'). For management group level assignments, the property is required.
  late final pulumi.Output<String?> scope;

  /// Status of blueprint assignment. This field is readonly.
  late final pulumi.Output<AssignmentStatusResponse> status;

  /// Type of this resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Assignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assignment]. {@macro pulumi_blueprint_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assignment(
    String name, {
    AssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:blueprint:Assignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blueprintId = registerOutput<String?>('blueprintId');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    identity = registerOutput<ManagedServiceIdentityResponse>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    locks = registerOutput<AssignmentLockSettingsResponse?>(
      'locks',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AssignmentLockSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, ParameterValueResponse>>(
      'parameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return pulumi.Input.decodeMapValues<ParameterValueResponse>(
          guardedValue,
          (value) => ParameterValueResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      },
    );
    provisioningState = registerOutput<String>('provisioningState');
    resourceGroups = registerOutput<Map<String, ResourceGroupValueResponse>>(
      'resourceGroups',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return pulumi.Input.decodeMapValues<ResourceGroupValueResponse>(
          guardedValue,
          (value) => ResourceGroupValueResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      },
    );
    scope = registerOutput<String?>('scope');
    status = registerOutput<AssignmentStatusResponse>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AssignmentStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
