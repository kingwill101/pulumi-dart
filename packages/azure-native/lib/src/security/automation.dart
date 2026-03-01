import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_action_event_hub_response.dart';
import 'automation_args.dart';
import 'automation_scope_response.dart';
import 'automation_source_response.dart';

/// The security automation resource.
///
/// Uses Azure REST API version 2023-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-01-01-preview.
///
/// Other available API versions: 2019-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a security automation for all assessments (including all severities)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var automation = new AzureNative.Security.Automation("automation", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationActionLogicAppArgs
///             {
///                 ActionType = "LogicApp",
///                 LogicAppResourceId = "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///                 Uri = "https://exampleTriggerUri1.com",
///             },
///         },
///         AutomationName = "exampleAutomation",
///         Description = "An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment",
///         IsEnabled = true,
///         Location = "Central US",
///         ResourceGroupName = "exampleResourceGroup",
///         Scopes = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationScopeArgs
///             {
///                 Description = "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///                 ScopePath = "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///             },
///         },
///         Sources = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationSourceArgs
///             {
///                 EventSource = AzureNative.Security.EventSource.Assessments,
///             },
///         },
///         Tags = null,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAutomation(ctx, "automation", &security.AutomationArgs{
/// 			Actions: pulumi.Array{
/// 				security.AutomationActionLogicApp{
/// 					ActionType:         "LogicApp",
/// 					LogicAppResourceId: "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
/// 					Uri:                "https://exampleTriggerUri1.com",
/// 				},
/// 			},
/// 			AutomationName:    pulumi.String("exampleAutomation"),
/// 			Description:       pulumi.String("An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment"),
/// 			IsEnabled:         pulumi.Bool(true),
/// 			Location:          pulumi.String("Central US"),
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
/// 			Scopes: security.AutomationScopeArray{
/// 				&security.AutomationScopeArgs{
/// 					Description: pulumi.String("A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5"),
/// 					ScopePath:   pulumi.String("/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup"),
/// 				},
/// 			},
/// 			Sources: security.AutomationSourceArray{
/// 				&security.AutomationSourceArgs{
/// 					EventSource: pulumi.String(security.EventSourceAssessments),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.security.Automation;
/// import com.pulumi.azurenative.security.AutomationArgs;
/// import com.pulumi.azurenative.security.inputs.AutomationScopeArgs;
/// import com.pulumi.azurenative.security.inputs.AutomationSourceArgs;
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
///         var automation = new Automation("automation", AutomationArgs.builder()
///             .actions(AutomationActionLogicAppArgs.builder()
///                 .actionType("LogicApp")
///                 .logicAppResourceId("/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1")
///                 .uri("https://exampleTriggerUri1.com")
///                 .build())
///             .automationName("exampleAutomation")
///             .description("An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment")
///             .isEnabled(true)
///             .location("Central US")
///             .resourceGroupName("exampleResourceGroup")
///             .scopes(AutomationScopeArgs.builder()
///                 .description("A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5")
///                 .scopePath("/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup")
///                 .build())
///             .sources(AutomationSourceArgs.builder()
///                 .eventSource("Assessments")
///                 .build())
///             .tags(Map.ofEntries(
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
/// const automation = new azure_native.security.Automation("automation", {
///     actions: [{
///         actionType: "LogicApp",
///         logicAppResourceId: "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///         uri: "https://exampleTriggerUri1.com",
///     }],
///     automationName: "exampleAutomation",
///     description: "An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment",
///     isEnabled: true,
///     location: "Central US",
///     resourceGroupName: "exampleResourceGroup",
///     scopes: [{
///         description: "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///         scopePath: "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///     }],
///     sources: [{
///         eventSource: azure_native.security.EventSource.Assessments,
///     }],
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// automation = azure_native.security.Automation("automation",
///     actions=[{
///         "action_type": "LogicApp",
///         "logic_app_resource_id": "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///         "uri": "https://exampleTriggerUri1.com",
///     }],
///     automation_name="exampleAutomation",
///     description="An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment",
///     is_enabled=True,
///     location="Central US",
///     resource_group_name="exampleResourceGroup",
///     scopes=[{
///         "description": "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///         "scope_path": "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///     }],
///     sources=[{
///         "event_source": azure_native.security.EventSource.ASSESSMENTS,
///     }],
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   automation:
///     type: azure-native:security:Automation
///     properties:
///       actions:
///         - actionType: LogicApp
///           logicAppResourceId: /subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1
///           uri: https://exampleTriggerUri1.com
///       automationName: exampleAutomation
///       description: An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment
///       isEnabled: true
///       location: Central US
///       resourceGroupName: exampleResourceGroup
///       scopes:
///         - description: 'A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5'
///           scopePath: /subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup
///       sources:
///         - eventSource: Assessments
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a security automation for all high severity assessments
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var automation = new AzureNative.Security.Automation("automation", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationActionLogicAppArgs
///             {
///                 ActionType = "LogicApp",
///                 LogicAppResourceId = "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///                 Uri = "https://exampleTriggerUri1.com",
///             },
///         },
///         AutomationName = "exampleAutomation",
///         Description = "An example of a security automation that triggers one LogicApp resource (myTest1) on any high severity security assessment",
///         IsEnabled = true,
///         Location = "Central US",
///         ResourceGroupName = "exampleResourceGroup",
///         Scopes = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationScopeArgs
///             {
///                 Description = "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///                 ScopePath = "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///             },
///         },
///         Sources = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationSourceArgs
///             {
///                 EventSource = AzureNative.Security.EventSource.Assessments,
///                 RuleSets = new[]
///                 {
///                     new AzureNative.Security.Inputs.AutomationRuleSetArgs
///                     {
///                         Rules = new[]
///                         {
///                             new AzureNative.Security.Inputs.AutomationTriggeringRuleArgs
///                             {
///                                 ExpectedValue = "High",
///                                 Operator = AzureNative.Security.Operator.EqualsValue,
///                                 PropertyJPath = "properties.metadata.severity",
///                                 PropertyType = AzureNative.Security.PropertyType.String,
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tags = null,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAutomation(ctx, "automation", &security.AutomationArgs{
/// 			Actions: pulumi.Array{
/// 				security.AutomationActionLogicApp{
/// 					ActionType:         "LogicApp",
/// 					LogicAppResourceId: "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
/// 					Uri:                "https://exampleTriggerUri1.com",
/// 				},
/// 			},
/// 			AutomationName:    pulumi.String("exampleAutomation"),
/// 			Description:       pulumi.String("An example of a security automation that triggers one LogicApp resource (myTest1) on any high severity security assessment"),
/// 			IsEnabled:         pulumi.Bool(true),
/// 			Location:          pulumi.String("Central US"),
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
/// 			Scopes: security.AutomationScopeArray{
/// 				&security.AutomationScopeArgs{
/// 					Description: pulumi.String("A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5"),
/// 					ScopePath:   pulumi.String("/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup"),
/// 				},
/// 			},
/// 			Sources: security.AutomationSourceArray{
/// 				&security.AutomationSourceArgs{
/// 					EventSource: pulumi.String(security.EventSourceAssessments),
/// 					RuleSets: security.AutomationRuleSetArray{
/// 						&security.AutomationRuleSetArgs{
/// 							Rules: security.AutomationTriggeringRuleArray{
/// 								&security.AutomationTriggeringRuleArgs{
/// 									ExpectedValue: pulumi.String("High"),
/// 									Operator:      pulumi.String(security.OperatorEquals),
/// 									PropertyJPath: pulumi.String("properties.metadata.severity"),
/// 									PropertyType:  pulumi.String(security.PropertyTypeString),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.security.Automation;
/// import com.pulumi.azurenative.security.AutomationArgs;
/// import com.pulumi.azurenative.security.inputs.AutomationScopeArgs;
/// import com.pulumi.azurenative.security.inputs.AutomationSourceArgs;
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
///         var automation = new Automation("automation", AutomationArgs.builder()
///             .actions(AutomationActionLogicAppArgs.builder()
///                 .actionType("LogicApp")
///                 .logicAppResourceId("/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1")
///                 .uri("https://exampleTriggerUri1.com")
///                 .build())
///             .automationName("exampleAutomation")
///             .description("An example of a security automation that triggers one LogicApp resource (myTest1) on any high severity security assessment")
///             .isEnabled(true)
///             .location("Central US")
///             .resourceGroupName("exampleResourceGroup")
///             .scopes(AutomationScopeArgs.builder()
///                 .description("A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5")
///                 .scopePath("/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup")
///                 .build())
///             .sources(AutomationSourceArgs.builder()
///                 .eventSource("Assessments")
///                 .ruleSets(AutomationRuleSetArgs.builder()
///                     .rules(AutomationTriggeringRuleArgs.builder()
///                         .expectedValue("High")
///                         .operator("Equals")
///                         .propertyJPath("properties.metadata.severity")
///                         .propertyType("String")
///                         .build())
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
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
/// const automation = new azure_native.security.Automation("automation", {
///     actions: [{
///         actionType: "LogicApp",
///         logicAppResourceId: "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///         uri: "https://exampleTriggerUri1.com",
///     }],
///     automationName: "exampleAutomation",
///     description: "An example of a security automation that triggers one LogicApp resource (myTest1) on any high severity security assessment",
///     isEnabled: true,
///     location: "Central US",
///     resourceGroupName: "exampleResourceGroup",
///     scopes: [{
///         description: "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///         scopePath: "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///     }],
///     sources: [{
///         eventSource: azure_native.security.EventSource.Assessments,
///         ruleSets: [{
///             rules: [{
///                 expectedValue: "High",
///                 operator: azure_native.security.Operator.Equals,
///                 propertyJPath: "properties.metadata.severity",
///                 propertyType: azure_native.security.PropertyType.String,
///             }],
///         }],
///     }],
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// automation = azure_native.security.Automation("automation",
///     actions=[{
///         "action_type": "LogicApp",
///         "logic_app_resource_id": "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///         "uri": "https://exampleTriggerUri1.com",
///     }],
///     automation_name="exampleAutomation",
///     description="An example of a security automation that triggers one LogicApp resource (myTest1) on any high severity security assessment",
///     is_enabled=True,
///     location="Central US",
///     resource_group_name="exampleResourceGroup",
///     scopes=[{
///         "description": "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///         "scope_path": "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///     }],
///     sources=[{
///         "event_source": azure_native.security.EventSource.ASSESSMENTS,
///         "rule_sets": [{
///             "rules": [{
///                 "expected_value": "High",
///                 "operator": azure_native.security.Operator.EQUALS,
///                 "property_j_path": "properties.metadata.severity",
///                 "property_type": azure_native.security.PropertyType.STRING,
///             }],
///         }],
///     }],
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   automation:
///     type: azure-native:security:Automation
///     properties:
///       actions:
///         - actionType: LogicApp
///           logicAppResourceId: /subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1
///           uri: https://exampleTriggerUri1.com
///       automationName: exampleAutomation
///       description: An example of a security automation that triggers one LogicApp resource (myTest1) on any high severity security assessment
///       isEnabled: true
///       location: Central US
///       resourceGroupName: exampleResourceGroup
///       scopes:
///         - description: 'A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5'
///           scopePath: /subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup
///       sources:
///         - eventSource: Assessments
///           ruleSets:
///             - rules:
///                 - expectedValue: High
///                   operator: Equals
///                   propertyJPath: properties.metadata.severity
///                   propertyType: String
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Disable or enable a security automation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var automation = new AzureNative.Security.Automation("automation", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationActionLogicAppArgs
///             {
///                 ActionType = "LogicApp",
///                 LogicAppResourceId = "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///                 Uri = "https://exampleTriggerUri1.com",
///             },
///         },
///         AutomationName = "exampleAutomation",
///         Description = "An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment of type customAssessment",
///         IsEnabled = false,
///         Location = "Central US",
///         ResourceGroupName = "exampleResourceGroup",
///         Scopes = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationScopeArgs
///             {
///                 Description = "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///                 ScopePath = "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///             },
///         },
///         Sources = new[]
///         {
///             new AzureNative.Security.Inputs.AutomationSourceArgs
///             {
///                 EventSource = AzureNative.Security.EventSource.Assessments,
///                 RuleSets = new[]
///                 {
///                     new AzureNative.Security.Inputs.AutomationRuleSetArgs
///                     {
///                         Rules = new[]
///                         {
///                             new AzureNative.Security.Inputs.AutomationTriggeringRuleArgs
///                             {
///                                 ExpectedValue = "customAssessment",
///                                 Operator = AzureNative.Security.Operator.EqualsValue,
///                                 PropertyJPath = "$.Entity.AssessmentType",
///                                 PropertyType = AzureNative.Security.PropertyType.String,
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tags = null,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAutomation(ctx, "automation", &security.AutomationArgs{
/// 			Actions: pulumi.Array{
/// 				security.AutomationActionLogicApp{
/// 					ActionType:         "LogicApp",
/// 					LogicAppResourceId: "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
/// 					Uri:                "https://exampleTriggerUri1.com",
/// 				},
/// 			},
/// 			AutomationName:    pulumi.String("exampleAutomation"),
/// 			Description:       pulumi.String("An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment of type customAssessment"),
/// 			IsEnabled:         pulumi.Bool(false),
/// 			Location:          pulumi.String("Central US"),
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
/// 			Scopes: security.AutomationScopeArray{
/// 				&security.AutomationScopeArgs{
/// 					Description: pulumi.String("A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5"),
/// 					ScopePath:   pulumi.String("/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup"),
/// 				},
/// 			},
/// 			Sources: security.AutomationSourceArray{
/// 				&security.AutomationSourceArgs{
/// 					EventSource: pulumi.String(security.EventSourceAssessments),
/// 					RuleSets: security.AutomationRuleSetArray{
/// 						&security.AutomationRuleSetArgs{
/// 							Rules: security.AutomationTriggeringRuleArray{
/// 								&security.AutomationTriggeringRuleArgs{
/// 									ExpectedValue: pulumi.String("customAssessment"),
/// 									Operator:      pulumi.String(security.OperatorEquals),
/// 									PropertyJPath: pulumi.String("$.Entity.AssessmentType"),
/// 									PropertyType:  pulumi.String(security.PropertyTypeString),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.security.Automation;
/// import com.pulumi.azurenative.security.AutomationArgs;
/// import com.pulumi.azurenative.security.inputs.AutomationScopeArgs;
/// import com.pulumi.azurenative.security.inputs.AutomationSourceArgs;
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
///         var automation = new Automation("automation", AutomationArgs.builder()
///             .actions(AutomationActionLogicAppArgs.builder()
///                 .actionType("LogicApp")
///                 .logicAppResourceId("/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1")
///                 .uri("https://exampleTriggerUri1.com")
///                 .build())
///             .automationName("exampleAutomation")
///             .description("An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment of type customAssessment")
///             .isEnabled(false)
///             .location("Central US")
///             .resourceGroupName("exampleResourceGroup")
///             .scopes(AutomationScopeArgs.builder()
///                 .description("A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5")
///                 .scopePath("/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup")
///                 .build())
///             .sources(AutomationSourceArgs.builder()
///                 .eventSource("Assessments")
///                 .ruleSets(AutomationRuleSetArgs.builder()
///                     .rules(AutomationTriggeringRuleArgs.builder()
///                         .expectedValue("customAssessment")
///                         .operator("Equals")
///                         .propertyJPath("$.Entity.AssessmentType")
///                         .propertyType("String")
///                         .build())
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
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
/// const automation = new azure_native.security.Automation("automation", {
///     actions: [{
///         actionType: "LogicApp",
///         logicAppResourceId: "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///         uri: "https://exampleTriggerUri1.com",
///     }],
///     automationName: "exampleAutomation",
///     description: "An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment of type customAssessment",
///     isEnabled: false,
///     location: "Central US",
///     resourceGroupName: "exampleResourceGroup",
///     scopes: [{
///         description: "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///         scopePath: "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///     }],
///     sources: [{
///         eventSource: azure_native.security.EventSource.Assessments,
///         ruleSets: [{
///             rules: [{
///                 expectedValue: "customAssessment",
///                 operator: azure_native.security.Operator.Equals,
///                 propertyJPath: "$.Entity.AssessmentType",
///                 propertyType: azure_native.security.PropertyType.String,
///             }],
///         }],
///     }],
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// automation = azure_native.security.Automation("automation",
///     actions=[{
///         "action_type": "LogicApp",
///         "logic_app_resource_id": "/subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1",
///         "uri": "https://exampleTriggerUri1.com",
///     }],
///     automation_name="exampleAutomation",
///     description="An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment of type customAssessment",
///     is_enabled=False,
///     location="Central US",
///     resource_group_name="exampleResourceGroup",
///     scopes=[{
///         "description": "A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5",
///         "scope_path": "/subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup",
///     }],
///     sources=[{
///         "event_source": azure_native.security.EventSource.ASSESSMENTS,
///         "rule_sets": [{
///             "rules": [{
///                 "expected_value": "customAssessment",
///                 "operator": azure_native.security.Operator.EQUALS,
///                 "property_j_path": "$.Entity.AssessmentType",
///                 "property_type": azure_native.security.PropertyType.STRING,
///             }],
///         }],
///     }],
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   automation:
///     type: azure-native:security:Automation
///     properties:
///       actions:
///         - actionType: LogicApp
///           logicAppResourceId: /subscriptions/e54a4a18-5b94-4f90-9471-bd3decad8a2e/resourceGroups/sample/providers/Microsoft.Logic/workflows/MyTest1
///           uri: https://exampleTriggerUri1.com
///       automationName: exampleAutomation
///       description: An example of a security automation that triggers one LogicApp resource (myTest1) on any security assessment of type customAssessment
///       isEnabled: false
///       location: Central US
///       resourceGroupName: exampleResourceGroup
///       scopes:
///         - description: 'A description that helps to identify this scope - for example: security assessments that relate to the resource group myResourceGroup within the subscription a5caac9c-5c04-49af-b3d0-e204f40345d5'
///           scopePath: /subscriptions/a5caac9c-5c04-49af-b3d0-e204f40345d5/resourceGroups/myResourceGroup
///       sources:
///         - eventSource: Assessments
///           ruleSets:
///             - rules:
///                 - expectedValue: customAssessment
///                   operator: Equals
///                   propertyJPath: $.Entity.AssessmentType
///                   propertyType: String
///       tags: {}
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
/// $ pulumi import azure-native:security:Automation exampleAutomation /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/automations/{automationName}
/// ```
class Automation extends pulumi.CustomResource {
  /// A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true.
  late final pulumi.Output<List<AutomationActionEventHubResponse>?> actions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The security automation description.
  late final pulumi.Output<String?> description;
  /// Entity tag is used for comparing two or more entities from the same requested resource.
  late final pulumi.Output<String?> etag;
  /// Indicates whether the security automation is enabled.
  late final pulumi.Output<bool?> isEnabled;
  /// Kind of the resource
  late final pulumi.Output<String?> kind;
  /// Location where the resource is stored
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// A collection of scopes on which the security automations logic is applied. Supported scopes are the subscription itself or a resource group under that subscription. The automation will only apply on defined scopes.
  late final pulumi.Output<List<AutomationScopeResponse>?> scopes;
  /// A collection of the source event types which evaluate the security automation set of rules.
  late final pulumi.Output<List<AutomationSourceResponse>?> sources;
  /// A list of key value pairs that describe the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Automation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Automation]. {@macro pulumi_security_automation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Automation(
    String name, {
    AutomationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:Automation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<AutomationActionEventHubResponse>?>('actions');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String?>('etag');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.kind = registerOutput<String?>('kind');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.scopes = registerOutput<List<AutomationScopeResponse>?>('scopes');
    this.sources = registerOutput<List<AutomationSourceResponse>?>('sources');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
