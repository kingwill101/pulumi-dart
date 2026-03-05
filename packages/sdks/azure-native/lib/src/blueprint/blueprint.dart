import 'package:pulumi/pulumi.dart' as pulumi;
import 'blueprint_args.dart';
import 'blueprint_status_response.dart';
import 'parameter_definition_response.dart';
import 'resource_group_definition_response.dart';

/// Represents a Blueprint definition.
///
/// Uses Azure REST API version 2018-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagementGroupBlueprint
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blueprint = new AzureNative.Blueprint.Blueprint("blueprint", new()
///     {
///         BlueprintName = "simpleBlueprint",
///         Description = "blueprint contains all artifact kinds {'template', 'rbac', 'policy'}",
///         Parameters =
///         {
///             { "costCenter", new AzureNative.Blueprint.Inputs.ParameterDefinitionArgs
///             {
///                 DisplayName = "force cost center tag for all resources under given subscription.",
///                 Type = AzureNative.Blueprint.TemplateParameterType.@String,
///             } },
///             { "owners", new AzureNative.Blueprint.Inputs.ParameterDefinitionArgs
///             {
///                 DisplayName = "assign owners to subscription along with blueprint assignment.",
///                 Type = AzureNative.Blueprint.TemplateParameterType.Array,
///             } },
///             { "storageAccountType", new AzureNative.Blueprint.Inputs.ParameterDefinitionArgs
///             {
///                 DisplayName = "storage account type.",
///                 Type = AzureNative.Blueprint.TemplateParameterType.@String,
///             } },
///         },
///         ResourceGroups =
///         {
///             { "storageRG", new AzureNative.Blueprint.Inputs.ResourceGroupDefinitionArgs
///             {
///                 Description = "Contains storageAccounts that collect all shoebox logs.",
///                 DisplayName = "storage resource group",
///             } },
///         },
///         ResourceScope = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///         TargetScope = AzureNative.Blueprint.BlueprintTargetScope.Subscription,
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
/// 		_, err := blueprint.NewBlueprint(ctx, "blueprint", &blueprint.BlueprintArgs{
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			Description:   pulumi.String("blueprint contains all artifact kinds {'template', 'rbac', 'policy'}"),
/// 			Parameters: blueprint.ParameterDefinitionMap{
/// 				"costCenter": &blueprint.ParameterDefinitionArgs{
/// 					DisplayName: pulumi.String("force cost center tag for all resources under given subscription."),
/// 					Type:        pulumi.String(blueprint.TemplateParameterTypeString),
/// 				},
/// 				"owners": &blueprint.ParameterDefinitionArgs{
/// 					DisplayName: pulumi.String("assign owners to subscription along with blueprint assignment."),
/// 					Type:        pulumi.String(blueprint.TemplateParameterTypeArray),
/// 				},
/// 				"storageAccountType": &blueprint.ParameterDefinitionArgs{
/// 					DisplayName: pulumi.String("storage account type."),
/// 					Type:        pulumi.String(blueprint.TemplateParameterTypeString),
/// 				},
/// 			},
/// 			ResourceGroups: blueprint.ResourceGroupDefinitionMap{
/// 				"storageRG": &blueprint.ResourceGroupDefinitionArgs{
/// 					Description: pulumi.String("Contains storageAccounts that collect all shoebox logs."),
/// 					DisplayName: pulumi.String("storage resource group"),
/// 				},
/// 			},
/// 			ResourceScope: pulumi.String("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"),
/// 			TargetScope:   pulumi.String(blueprint.BlueprintTargetScopeSubscription),
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
/// import com.pulumi.azurenative.blueprint.Blueprint;
/// import com.pulumi.azurenative.blueprint.BlueprintArgs;
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
///         var blueprint = new Blueprint("blueprint", BlueprintArgs.builder()
///             .blueprintName("simpleBlueprint")
///             .description("blueprint contains all artifact kinds {'template', 'rbac', 'policy'}")
///             .parameters(Map.ofEntries(
///                 Map.entry("costCenter", ParameterDefinitionArgs.builder()
///                     .displayName("force cost center tag for all resources under given subscription.")
///                     .type("string")
///                     .build()),
///                 Map.entry("owners", ParameterDefinitionArgs.builder()
///                     .displayName("assign owners to subscription along with blueprint assignment.")
///                     .type("array")
///                     .build()),
///                 Map.entry("storageAccountType", ParameterDefinitionArgs.builder()
///                     .displayName("storage account type.")
///                     .type("string")
///                     .build())
///             ))
///             .resourceGroups(Map.of("storageRG", ResourceGroupDefinitionArgs.builder()
///                 .description("Contains storageAccounts that collect all shoebox logs.")
///                 .displayName("storage resource group")
///                 .build()))
///             .resourceScope("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup")
///             .targetScope("subscription")
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
/// const blueprint = new azure_native.blueprint.Blueprint("blueprint", {
///     blueprintName: "simpleBlueprint",
///     description: "blueprint contains all artifact kinds {'template', 'rbac', 'policy'}",
///     parameters: {
///         costCenter: {
///             displayName: "force cost center tag for all resources under given subscription.",
///             type: azure_native.blueprint.TemplateParameterType.String,
///         },
///         owners: {
///             displayName: "assign owners to subscription along with blueprint assignment.",
///             type: azure_native.blueprint.TemplateParameterType.Array,
///         },
///         storageAccountType: {
///             displayName: "storage account type.",
///             type: azure_native.blueprint.TemplateParameterType.String,
///         },
///     },
///     resourceGroups: {
///         storageRG: {
///             description: "Contains storageAccounts that collect all shoebox logs.",
///             displayName: "storage resource group",
///         },
///     },
///     resourceScope: "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///     targetScope: azure_native.blueprint.BlueprintTargetScope.Subscription,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blueprint = azure_native.blueprint.Blueprint("blueprint",
///     blueprint_name="simpleBlueprint",
///     description="blueprint contains all artifact kinds {'template', 'rbac', 'policy'}",
///     parameters={
///         "costCenter": {
///             "display_name": "force cost center tag for all resources under given subscription.",
///             "type": azure_native.blueprint.TemplateParameterType.STRING,
///         },
///         "owners": {
///             "display_name": "assign owners to subscription along with blueprint assignment.",
///             "type": azure_native.blueprint.TemplateParameterType.ARRAY,
///         },
///         "storageAccountType": {
///             "display_name": "storage account type.",
///             "type": azure_native.blueprint.TemplateParameterType.STRING,
///         },
///     },
///     resource_groups={
///         "storageRG": {
///             "description": "Contains storageAccounts that collect all shoebox logs.",
///             "display_name": "storage resource group",
///         },
///     },
///     resource_scope="providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///     target_scope=azure_native.blueprint.BlueprintTargetScope.SUBSCRIPTION)
///
/// ```
///
/// ```yaml
/// resources:
///   blueprint:
///     type: azure-native:blueprint:Blueprint
///     properties:
///       blueprintName: simpleBlueprint
///       description: blueprint contains all artifact kinds {'template', 'rbac', 'policy'}
///       parameters:
///         costCenter:
///           displayName: force cost center tag for all resources under given subscription.
///           type: string
///         owners:
///           displayName: assign owners to subscription along with blueprint assignment.
///           type: array
///         storageAccountType:
///           displayName: storage account type.
///           type: string
///       resourceGroups:
///         storageRG:
///           description: Contains storageAccounts that collect all shoebox logs.
///           displayName: storage resource group
///       resourceScope: providers/Microsoft.Management/managementGroups/ContosoOnlineGroup
///       targetScope: subscription
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ResourceGroupWithTags
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blueprint = new AzureNative.Blueprint.Blueprint("blueprint", new()
///     {
///         BlueprintName = "simpleBlueprint",
///         Description = "An example blueprint containing an RG with two tags.",
///         ResourceGroups =
///         {
///             { "myRGName", new AzureNative.Blueprint.Inputs.ResourceGroupDefinitionArgs
///             {
///                 DisplayName = "My Resource Group",
///                 Location = "westus",
///                 Name = "myRGName",
///                 Tags =
///                 {
///                     { "costcenter", "123456" },
///                     { "nameOnlyTag", "" },
///                 },
///             } },
///         },
///         ResourceScope = "providers/Microsoft.Management/managementGroups/{ManagementGroupId}",
///         TargetScope = AzureNative.Blueprint.BlueprintTargetScope.Subscription,
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
/// 		_, err := blueprint.NewBlueprint(ctx, "blueprint", &blueprint.BlueprintArgs{
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			Description:   pulumi.String("An example blueprint containing an RG with two tags."),
/// 			ResourceGroups: blueprint.ResourceGroupDefinitionMap{
/// 				"myRGName": &blueprint.ResourceGroupDefinitionArgs{
/// 					DisplayName: pulumi.String("My Resource Group"),
/// 					Location:    pulumi.String("westus"),
/// 					Name:        pulumi.String("myRGName"),
/// 					Tags: pulumi.StringMap{
/// 						"costcenter":  pulumi.String("123456"),
/// 						"nameOnlyTag": pulumi.String(""),
/// 					},
/// 				},
/// 			},
/// 			ResourceScope: pulumi.String("providers/Microsoft.Management/managementGroups/{ManagementGroupId}"),
/// 			TargetScope:   pulumi.String(blueprint.BlueprintTargetScopeSubscription),
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
/// import com.pulumi.azurenative.blueprint.Blueprint;
/// import com.pulumi.azurenative.blueprint.BlueprintArgs;
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
///         var blueprint = new Blueprint("blueprint", BlueprintArgs.builder()
///             .blueprintName("simpleBlueprint")
///             .description("An example blueprint containing an RG with two tags.")
///             .resourceGroups(Map.of("myRGName", ResourceGroupDefinitionArgs.builder()
///                 .displayName("My Resource Group")
///                 .location("westus")
///                 .name("myRGName")
///                 .tags(Map.ofEntries(
///                     Map.entry("costcenter", "123456"),
///                     Map.entry("nameOnlyTag", "")
///                 ))
///                 .build()))
///             .resourceScope("providers/Microsoft.Management/managementGroups/{ManagementGroupId}")
///             .targetScope("subscription")
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
/// const blueprint = new azure_native.blueprint.Blueprint("blueprint", {
///     blueprintName: "simpleBlueprint",
///     description: "An example blueprint containing an RG with two tags.",
///     resourceGroups: {
///         myRGName: {
///             displayName: "My Resource Group",
///             location: "westus",
///             name: "myRGName",
///             tags: {
///                 costcenter: "123456",
///                 nameOnlyTag: "",
///             },
///         },
///     },
///     resourceScope: "providers/Microsoft.Management/managementGroups/{ManagementGroupId}",
///     targetScope: azure_native.blueprint.BlueprintTargetScope.Subscription,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blueprint = azure_native.blueprint.Blueprint("blueprint",
///     blueprint_name="simpleBlueprint",
///     description="An example blueprint containing an RG with two tags.",
///     resource_groups={
///         "myRGName": {
///             "display_name": "My Resource Group",
///             "location": "westus",
///             "name": "myRGName",
///             "tags": {
///                 "costcenter": "123456",
///                 "nameOnlyTag": "",
///             },
///         },
///     },
///     resource_scope="providers/Microsoft.Management/managementGroups/{ManagementGroupId}",
///     target_scope=azure_native.blueprint.BlueprintTargetScope.SUBSCRIPTION)
///
/// ```
///
/// ```yaml
/// resources:
///   blueprint:
///     type: azure-native:blueprint:Blueprint
///     properties:
///       blueprintName: simpleBlueprint
///       description: An example blueprint containing an RG with two tags.
///       resourceGroups:
///         myRGName:
///           displayName: My Resource Group
///           location: westus
///           name: myRGName
///           tags:
///             costcenter: '123456'
///             nameOnlyTag: ""
///       resourceScope: providers/Microsoft.Management/managementGroups/{ManagementGroupId}
///       targetScope: subscription
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SubscriptionBlueprint
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blueprint = new AzureNative.Blueprint.Blueprint("blueprint", new()
///     {
///         BlueprintName = "simpleBlueprint",
///         Description = "blueprint contains all artifact kinds {'template', 'rbac', 'policy'}",
///         Parameters =
///         {
///             { "costCenter", new AzureNative.Blueprint.Inputs.ParameterDefinitionArgs
///             {
///                 DisplayName = "force cost center tag for all resources under given subscription.",
///                 Type = AzureNative.Blueprint.TemplateParameterType.@String,
///             } },
///             { "owners", new AzureNative.Blueprint.Inputs.ParameterDefinitionArgs
///             {
///                 DisplayName = "assign owners to subscription along with blueprint assignment.",
///                 Type = AzureNative.Blueprint.TemplateParameterType.Array,
///             } },
///             { "storageAccountType", new AzureNative.Blueprint.Inputs.ParameterDefinitionArgs
///             {
///                 DisplayName = "storage account type.",
///                 Type = AzureNative.Blueprint.TemplateParameterType.@String,
///             } },
///         },
///         ResourceGroups =
///         {
///             { "storageRG", new AzureNative.Blueprint.Inputs.ResourceGroupDefinitionArgs
///             {
///                 Description = "Contains storageAccounts that collect all shoebox logs.",
///                 DisplayName = "storage resource group",
///             } },
///         },
///         ResourceScope = "subscriptions/00000000-0000-0000-0000-000000000000",
///         TargetScope = AzureNative.Blueprint.BlueprintTargetScope.Subscription,
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
/// 		_, err := blueprint.NewBlueprint(ctx, "blueprint", &blueprint.BlueprintArgs{
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			Description:   pulumi.String("blueprint contains all artifact kinds {'template', 'rbac', 'policy'}"),
/// 			Parameters: blueprint.ParameterDefinitionMap{
/// 				"costCenter": &blueprint.ParameterDefinitionArgs{
/// 					DisplayName: pulumi.String("force cost center tag for all resources under given subscription."),
/// 					Type:        pulumi.String(blueprint.TemplateParameterTypeString),
/// 				},
/// 				"owners": &blueprint.ParameterDefinitionArgs{
/// 					DisplayName: pulumi.String("assign owners to subscription along with blueprint assignment."),
/// 					Type:        pulumi.String(blueprint.TemplateParameterTypeArray),
/// 				},
/// 				"storageAccountType": &blueprint.ParameterDefinitionArgs{
/// 					DisplayName: pulumi.String("storage account type."),
/// 					Type:        pulumi.String(blueprint.TemplateParameterTypeString),
/// 				},
/// 			},
/// 			ResourceGroups: blueprint.ResourceGroupDefinitionMap{
/// 				"storageRG": &blueprint.ResourceGroupDefinitionArgs{
/// 					Description: pulumi.String("Contains storageAccounts that collect all shoebox logs."),
/// 					DisplayName: pulumi.String("storage resource group"),
/// 				},
/// 			},
/// 			ResourceScope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			TargetScope:   pulumi.String(blueprint.BlueprintTargetScopeSubscription),
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
/// import com.pulumi.azurenative.blueprint.Blueprint;
/// import com.pulumi.azurenative.blueprint.BlueprintArgs;
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
///         var blueprint = new Blueprint("blueprint", BlueprintArgs.builder()
///             .blueprintName("simpleBlueprint")
///             .description("blueprint contains all artifact kinds {'template', 'rbac', 'policy'}")
///             .parameters(Map.ofEntries(
///                 Map.entry("costCenter", ParameterDefinitionArgs.builder()
///                     .displayName("force cost center tag for all resources under given subscription.")
///                     .type("string")
///                     .build()),
///                 Map.entry("owners", ParameterDefinitionArgs.builder()
///                     .displayName("assign owners to subscription along with blueprint assignment.")
///                     .type("array")
///                     .build()),
///                 Map.entry("storageAccountType", ParameterDefinitionArgs.builder()
///                     .displayName("storage account type.")
///                     .type("string")
///                     .build())
///             ))
///             .resourceGroups(Map.of("storageRG", ResourceGroupDefinitionArgs.builder()
///                 .description("Contains storageAccounts that collect all shoebox logs.")
///                 .displayName("storage resource group")
///                 .build()))
///             .resourceScope("subscriptions/00000000-0000-0000-0000-000000000000")
///             .targetScope("subscription")
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
/// const blueprint = new azure_native.blueprint.Blueprint("blueprint", {
///     blueprintName: "simpleBlueprint",
///     description: "blueprint contains all artifact kinds {'template', 'rbac', 'policy'}",
///     parameters: {
///         costCenter: {
///             displayName: "force cost center tag for all resources under given subscription.",
///             type: azure_native.blueprint.TemplateParameterType.String,
///         },
///         owners: {
///             displayName: "assign owners to subscription along with blueprint assignment.",
///             type: azure_native.blueprint.TemplateParameterType.Array,
///         },
///         storageAccountType: {
///             displayName: "storage account type.",
///             type: azure_native.blueprint.TemplateParameterType.String,
///         },
///     },
///     resourceGroups: {
///         storageRG: {
///             description: "Contains storageAccounts that collect all shoebox logs.",
///             displayName: "storage resource group",
///         },
///     },
///     resourceScope: "subscriptions/00000000-0000-0000-0000-000000000000",
///     targetScope: azure_native.blueprint.BlueprintTargetScope.Subscription,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blueprint = azure_native.blueprint.Blueprint("blueprint",
///     blueprint_name="simpleBlueprint",
///     description="blueprint contains all artifact kinds {'template', 'rbac', 'policy'}",
///     parameters={
///         "costCenter": {
///             "display_name": "force cost center tag for all resources under given subscription.",
///             "type": azure_native.blueprint.TemplateParameterType.STRING,
///         },
///         "owners": {
///             "display_name": "assign owners to subscription along with blueprint assignment.",
///             "type": azure_native.blueprint.TemplateParameterType.ARRAY,
///         },
///         "storageAccountType": {
///             "display_name": "storage account type.",
///             "type": azure_native.blueprint.TemplateParameterType.STRING,
///         },
///     },
///     resource_groups={
///         "storageRG": {
///             "description": "Contains storageAccounts that collect all shoebox logs.",
///             "display_name": "storage resource group",
///         },
///     },
///     resource_scope="subscriptions/00000000-0000-0000-0000-000000000000",
///     target_scope=azure_native.blueprint.BlueprintTargetScope.SUBSCRIPTION)
///
/// ```
///
/// ```yaml
/// resources:
///   blueprint:
///     type: azure-native:blueprint:Blueprint
///     properties:
///       blueprintName: simpleBlueprint
///       description: blueprint contains all artifact kinds {'template', 'rbac', 'policy'}
///       parameters:
///         costCenter:
///           displayName: force cost center tag for all resources under given subscription.
///           type: string
///         owners:
///           displayName: assign owners to subscription along with blueprint assignment.
///           type: array
///         storageAccountType:
///           displayName: storage account type.
///           type: string
///       resourceGroups:
///         storageRG:
///           description: Contains storageAccounts that collect all shoebox logs.
///           displayName: storage resource group
///       resourceScope: subscriptions/00000000-0000-0000-0000-000000000000
///       targetScope: subscription
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
/// $ pulumi import azure-native:blueprint:Blueprint simpleBlueprint /{resourceScope}/providers/Microsoft.Blueprint/blueprints/{blueprintName}
/// ```
class Blueprint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Multi-line explain this resource.
  late final pulumi.Output<String?> description;
  /// One-liner string explain this resource.
  late final pulumi.Output<String?> displayName;
  /// Layout view of the blueprint definition for UI reference.
  late final pulumi.Output<dynamic> layout;
  /// Name of this resource.
  late final pulumi.Output<String> name;
  /// Parameters required by this blueprint definition.
  late final pulumi.Output<Map<String, ParameterDefinitionResponse>?> parameters;
  /// Resource group placeholders defined by this blueprint definition.
  late final pulumi.Output<Map<String, ResourceGroupDefinitionResponse>?> resourceGroups;
  /// Status of the blueprint. This field is readonly.
  late final pulumi.Output<BlueprintStatusResponse> status;
  /// The scope where this blueprint definition can be assigned.
  late final pulumi.Output<String> targetScope;
  /// Type of this resource.
  late final pulumi.Output<String> type;
  /// Published versions of this blueprint definition.
  late final pulumi.Output<dynamic> versions;

  /// Creates a new [Blueprint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Blueprint]. {@macro pulumi_blueprint_blueprint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Blueprint(
    String name, {
    BlueprintArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:blueprint:Blueprint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    layout = registerOutput<dynamic>('layout');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, ParameterDefinitionResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterDefinitionResponse>(guardedValue, (value) => ParameterDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroups = registerOutput<Map<String, ResourceGroupDefinitionResponse>?>('resourceGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ResourceGroupDefinitionResponse>(guardedValue, (value) => ResourceGroupDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<BlueprintStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlueprintStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetScope = registerOutput<String>('targetScope');
    type = registerOutput<String>('type');
    versions = registerOutput<dynamic>('versions');
  }
}
