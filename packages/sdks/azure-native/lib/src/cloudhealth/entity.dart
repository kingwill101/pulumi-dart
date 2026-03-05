import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_args.dart';
import 'entity_properties_response.dart';
import 'system_data_response.dart';

/// An entity (aka node) of a health model
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Entities_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var entity = new AzureNative.CloudHealth.Entity("entity", new()
///     {
///         EntityName = "uszrxbdkxesdrxhmagmzywebgbjj",
///         HealthModelName = "myHealthModel",
///         Properties = new AzureNative.CloudHealth.Inputs.EntityPropertiesArgs
///         {
///             Alerts = new AzureNative.CloudHealth.Inputs.EntityAlertsArgs
///             {
///                 Degraded = new AzureNative.CloudHealth.Inputs.AlertConfigurationArgs
///                 {
///                     ActionGroupIds = new[]
///                     {
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup",
///                     },
///                     Description = "Alert description",
///                     Severity = AzureNative.CloudHealth.AlertSeverity.Sev4,
///                 },
///                 Unhealthy = new AzureNative.CloudHealth.Inputs.AlertConfigurationArgs
///                 {
///                     ActionGroupIds = new[]
///                     {
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup",
///                     },
///                     Description = "Alert description",
///                     Severity = AzureNative.CloudHealth.AlertSeverity.Sev1,
///                 },
///             },
///             CanvasPosition = new AzureNative.CloudHealth.Inputs.EntityCoordinatesArgs
///             {
///                 X = 14,
///                 Y = 13,
///             },
///             DisplayName = "My entity",
///             HealthObjective = 62,
///             Icon = new AzureNative.CloudHealth.Inputs.IconDefinitionArgs
///             {
///                 CustomData = "rcitntvapruccrhtxmkqjphbxunkz",
///                 IconName = "Custom",
///             },
///             Impact = AzureNative.CloudHealth.EntityImpact.Standard,
///             Labels =
///             {
///                 { "key1376", "ixfvzsfnpvkkbrce" },
///             },
///             Signals = new AzureNative.CloudHealth.Inputs.SignalGroupArgs
///             {
///                 AzureLogAnalytics = new AzureNative.CloudHealth.Inputs.LogAnalyticsSignalGroupArgs
///                 {
///                     AuthenticationSetting = "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                     LogAnalyticsWorkspaceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace",
///                     SignalAssignments = new[]
///                     {
///                         new AzureNative.CloudHealth.Inputs.SignalAssignmentArgs
///                         {
///                             SignalDefinitions = new[]
///                             {
///                                 "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                             },
///                         },
///                     },
///                 },
///                 AzureMonitorWorkspace = new AzureNative.CloudHealth.Inputs.AzureMonitorWorkspaceSignalGroupArgs
///                 {
///                     AuthenticationSetting = "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                     AzureMonitorWorkspaceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace",
///                     SignalAssignments = new[]
///                     {
///                         new AzureNative.CloudHealth.Inputs.SignalAssignmentArgs
///                         {
///                             SignalDefinitions = new[]
///                             {
///                                 "sigdef2",
///                             },
///                         },
///                         new AzureNative.CloudHealth.Inputs.SignalAssignmentArgs
///                         {
///                             SignalDefinitions = new[]
///                             {
///                                 "sigdef3",
///                             },
///                         },
///                     },
///                 },
///                 AzureResource = new AzureNative.CloudHealth.Inputs.AzureResourceSignalGroupArgs
///                 {
///                     AuthenticationSetting = "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                     AzureResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1",
///                     SignalAssignments = new[]
///                     {
///                         new AzureNative.CloudHealth.Inputs.SignalAssignmentArgs
///                         {
///                             SignalDefinitions = new[]
///                             {
///                                 "sigdef1",
///                             },
///                         },
///                     },
///                 },
///                 Dependencies = new AzureNative.CloudHealth.Inputs.DependenciesSignalGroupArgs
///                 {
///                     AggregationType = AzureNative.CloudHealth.DependenciesAggregationType.WorstOf,
///                 },
///             },
///         },
///         ResourceGroupName = "rgopenapi",
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
/// 	cloudhealth "github.com/pulumi/pulumi-azure-native-sdk/cloudhealth/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudhealth.NewEntity(ctx, "entity", &cloudhealth.EntityArgs{
/// 			EntityName:      pulumi.String("uszrxbdkxesdrxhmagmzywebgbjj"),
/// 			HealthModelName: pulumi.String("myHealthModel"),
/// 			Properties: &cloudhealth.EntityPropertiesArgs{
/// 				Alerts: &cloudhealth.EntityAlertsArgs{
/// 					Degraded: &cloudhealth.AlertConfigurationArgs{
/// 						ActionGroupIds: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup"),
/// 						},
/// 						Description: pulumi.String("Alert description"),
/// 						Severity:    pulumi.String(cloudhealth.AlertSeveritySev4),
/// 					},
/// 					Unhealthy: &cloudhealth.AlertConfigurationArgs{
/// 						ActionGroupIds: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup"),
/// 						},
/// 						Description: pulumi.String("Alert description"),
/// 						Severity:    pulumi.String(cloudhealth.AlertSeveritySev1),
/// 					},
/// 				},
/// 				CanvasPosition: &cloudhealth.EntityCoordinatesArgs{
/// 					X: pulumi.Float64(14),
/// 					Y: pulumi.Float64(13),
/// 				},
/// 				DisplayName:     pulumi.String("My entity"),
/// 				HealthObjective: pulumi.Float64(62),
/// 				Icon: &cloudhealth.IconDefinitionArgs{
/// 					CustomData: pulumi.String("rcitntvapruccrhtxmkqjphbxunkz"),
/// 					IconName:   pulumi.String("Custom"),
/// 				},
/// 				Impact: pulumi.String(cloudhealth.EntityImpactStandard),
/// 				Labels: pulumi.StringMap{
/// 					"key1376": pulumi.String("ixfvzsfnpvkkbrce"),
/// 				},
/// 				Signals: &cloudhealth.SignalGroupArgs{
/// 					AzureLogAnalytics: &cloudhealth.LogAnalyticsSignalGroupArgs{
/// 						AuthenticationSetting:           pulumi.String("B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX"),
/// 						LogAnalyticsWorkspaceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace"),
/// 						SignalAssignments: cloudhealth.SignalAssignmentArray{
/// 							&cloudhealth.SignalAssignmentArgs{
/// 								SignalDefinitions: pulumi.StringArray{
/// 									pulumi.String("B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					AzureMonitorWorkspace: &cloudhealth.AzureMonitorWorkspaceSignalGroupArgs{
/// 						AuthenticationSetting:           pulumi.String("B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX"),
/// 						AzureMonitorWorkspaceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace"),
/// 						SignalAssignments: cloudhealth.SignalAssignmentArray{
/// 							&cloudhealth.SignalAssignmentArgs{
/// 								SignalDefinitions: pulumi.StringArray{
/// 									pulumi.String("sigdef2"),
/// 								},
/// 							},
/// 							&cloudhealth.SignalAssignmentArgs{
/// 								SignalDefinitions: pulumi.StringArray{
/// 									pulumi.String("sigdef3"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					AzureResource: &cloudhealth.AzureResourceSignalGroupArgs{
/// 						AuthenticationSetting: pulumi.String("B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX"),
/// 						AzureResourceId:       pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 						SignalAssignments: cloudhealth.SignalAssignmentArray{
/// 							&cloudhealth.SignalAssignmentArgs{
/// 								SignalDefinitions: pulumi.StringArray{
/// 									pulumi.String("sigdef1"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Dependencies: &cloudhealth.DependenciesSignalGroupArgs{
/// 						AggregationType: pulumi.String(cloudhealth.DependenciesAggregationTypeWorstOf),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
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
/// import com.pulumi.azurenative.cloudhealth.Entity;
/// import com.pulumi.azurenative.cloudhealth.EntityArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.EntityPropertiesArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.EntityAlertsArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.AlertConfigurationArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.EntityCoordinatesArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.IconDefinitionArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.SignalGroupArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.LogAnalyticsSignalGroupArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.AzureMonitorWorkspaceSignalGroupArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.AzureResourceSignalGroupArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.DependenciesSignalGroupArgs;
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
///         var entity = new Entity("entity", EntityArgs.builder()
///             .entityName("uszrxbdkxesdrxhmagmzywebgbjj")
///             .healthModelName("myHealthModel")
///             .properties(EntityPropertiesArgs.builder()
///                 .alerts(EntityAlertsArgs.builder()
///                     .degraded(AlertConfigurationArgs.builder()
///                         .actionGroupIds("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup")
///                         .description("Alert description")
///                         .severity("Sev4")
///                         .build())
///                     .unhealthy(AlertConfigurationArgs.builder()
///                         .actionGroupIds("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup")
///                         .description("Alert description")
///                         .severity("Sev1")
///                         .build())
///                     .build())
///                 .canvasPosition(EntityCoordinatesArgs.builder()
///                     .x(14.0)
///                     .y(13.0)
///                     .build())
///                 .displayName("My entity")
///                 .healthObjective(62.0)
///                 .icon(IconDefinitionArgs.builder()
///                     .customData("rcitntvapruccrhtxmkqjphbxunkz")
///                     .iconName("Custom")
///                     .build())
///                 .impact("Standard")
///                 .labels(Map.of("key1376", "ixfvzsfnpvkkbrce"))
///                 .signals(SignalGroupArgs.builder()
///                     .azureLogAnalytics(LogAnalyticsSignalGroupArgs.builder()
///                         .authenticationSetting("B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX")
///                         .logAnalyticsWorkspaceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace")
///                         .signalAssignments(SignalAssignmentArgs.builder()
///                             .signalDefinitions("B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX")
///                             .build())
///                         .build())
///                     .azureMonitorWorkspace(AzureMonitorWorkspaceSignalGroupArgs.builder()
///                         .authenticationSetting("B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX")
///                         .azureMonitorWorkspaceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace")
///                         .signalAssignments(
///                             SignalAssignmentArgs.builder()
///                                 .signalDefinitions("sigdef2")
///                                 .build(),
///                             SignalAssignmentArgs.builder()
///                                 .signalDefinitions("sigdef3")
///                                 .build())
///                         .build())
///                     .azureResource(AzureResourceSignalGroupArgs.builder()
///                         .authenticationSetting("B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX")
///                         .azureResourceId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1")
///                         .signalAssignments(SignalAssignmentArgs.builder()
///                             .signalDefinitions("sigdef1")
///                             .build())
///                         .build())
///                     .dependencies(DependenciesSignalGroupArgs.builder()
///                         .aggregationType("WorstOf")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rgopenapi")
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
/// const entity = new azure_native.cloudhealth.Entity("entity", {
///     entityName: "uszrxbdkxesdrxhmagmzywebgbjj",
///     healthModelName: "myHealthModel",
///     properties: {
///         alerts: {
///             degraded: {
///                 actionGroupIds: ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup"],
///                 description: "Alert description",
///                 severity: azure_native.cloudhealth.AlertSeverity.Sev4,
///             },
///             unhealthy: {
///                 actionGroupIds: ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup"],
///                 description: "Alert description",
///                 severity: azure_native.cloudhealth.AlertSeverity.Sev1,
///             },
///         },
///         canvasPosition: {
///             x: 14,
///             y: 13,
///         },
///         displayName: "My entity",
///         healthObjective: 62,
///         icon: {
///             customData: "rcitntvapruccrhtxmkqjphbxunkz",
///             iconName: "Custom",
///         },
///         impact: azure_native.cloudhealth.EntityImpact.Standard,
///         labels: {
///             key1376: "ixfvzsfnpvkkbrce",
///         },
///         signals: {
///             azureLogAnalytics: {
///                 authenticationSetting: "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                 logAnalyticsWorkspaceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace",
///                 signalAssignments: [{
///                     signalDefinitions: ["B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX"],
///                 }],
///             },
///             azureMonitorWorkspace: {
///                 authenticationSetting: "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                 azureMonitorWorkspaceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace",
///                 signalAssignments: [
///                     {
///                         signalDefinitions: ["sigdef2"],
///                     },
///                     {
///                         signalDefinitions: ["sigdef3"],
///                     },
///                 ],
///             },
///             azureResource: {
///                 authenticationSetting: "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                 azureResourceId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1",
///                 signalAssignments: [{
///                     signalDefinitions: ["sigdef1"],
///                 }],
///             },
///             dependencies: {
///                 aggregationType: azure_native.cloudhealth.DependenciesAggregationType.WorstOf,
///             },
///         },
///     },
///     resourceGroupName: "rgopenapi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// entity = azure_native.cloudhealth.Entity("entity",
///     entity_name="uszrxbdkxesdrxhmagmzywebgbjj",
///     health_model_name="myHealthModel",
///     properties={
///         "alerts": {
///             "degraded": {
///                 "action_group_ids": ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup"],
///                 "description": "Alert description",
///                 "severity": azure_native.cloudhealth.AlertSeverity.SEV4,
///             },
///             "unhealthy": {
///                 "action_group_ids": ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup"],
///                 "description": "Alert description",
///                 "severity": azure_native.cloudhealth.AlertSeverity.SEV1,
///             },
///         },
///         "canvas_position": {
///             "x": 14,
///             "y": 13,
///         },
///         "display_name": "My entity",
///         "health_objective": 62,
///         "icon": {
///             "custom_data": "rcitntvapruccrhtxmkqjphbxunkz",
///             "icon_name": "Custom",
///         },
///         "impact": azure_native.cloudhealth.EntityImpact.STANDARD,
///         "labels": {
///             "key1376": "ixfvzsfnpvkkbrce",
///         },
///         "signals": {
///             "azure_log_analytics": {
///                 "authentication_setting": "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                 "log_analytics_workspace_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace",
///                 "signal_assignments": [{
///                     "signal_definitions": ["B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX"],
///                 }],
///             },
///             "azure_monitor_workspace": {
///                 "authentication_setting": "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                 "azure_monitor_workspace_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace",
///                 "signal_assignments": [
///                     {
///                         "signal_definitions": ["sigdef2"],
///                     },
///                     {
///                         "signal_definitions": ["sigdef3"],
///                     },
///                 ],
///             },
///             "azure_resource": {
///                 "authentication_setting": "B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX",
///                 "azure_resource_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1",
///                 "signal_assignments": [{
///                     "signal_definitions": ["sigdef1"],
///                 }],
///             },
///             "dependencies": {
///                 "aggregation_type": azure_native.cloudhealth.DependenciesAggregationType.WORST_OF,
///             },
///         },
///     },
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   entity:
///     type: azure-native:cloudhealth:Entity
///     properties:
///       entityName: uszrxbdkxesdrxhmagmzywebgbjj
///       healthModelName: myHealthModel
///       properties:
///         alerts:
///           degraded:
///             actionGroupIds:
///               - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup
///             description: Alert description
///             severity: Sev4
///           unhealthy:
///             actionGroupIds:
///               - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Insights/actionGroups/myactiongroup
///             description: Alert description
///             severity: Sev1
///         canvasPosition:
///           x: 14
///           y: 13
///         displayName: My entity
///         healthObjective: 62
///         icon:
///           customData: rcitntvapruccrhtxmkqjphbxunkz
///           iconName: Custom
///         impact: Standard
///         labels:
///           key1376: ixfvzsfnpvkkbrce
///         signals:
///           azureLogAnalytics:
///             authenticationSetting: B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX
///             logAnalyticsWorkspaceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace
///             signalAssignments:
///               - signalDefinitions:
///                   - B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX
///           azureMonitorWorkspace:
///             authenticationSetting: B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX
///             azureMonitorWorkspaceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.OperationalInsights/workspaces/myworkspace
///             signalAssignments:
///               - signalDefinitions:
///                   - sigdef2
///               - signalDefinitions:
///                   - sigdef3
///           azureResource:
///             authenticationSetting: B3P1X3e-FZtZ-4Ak-2VLHGQ-4m4-05DE-XNW5zW3P-46XY-DC3SSX
///             azureResourceId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1
///             signalAssignments:
///               - signalDefinitions:
///                   - sigdef1
///           dependencies:
///             aggregationType: WorstOf
///       resourceGroupName: rgopenapi
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
/// $ pulumi import azure-native:cloudhealth:Entity uszrxbdkxesdrxhmagmzywebgbjj /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CloudHealth/healthmodels/{healthModelName}/entities/{entityName}
/// ```
class Entity extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EntityPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Entity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Entity]. {@macro pulumi_cloudhealth_entity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Entity(String name, {EntityArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:cloudhealth:Entity',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EntityPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EntityPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
  }
}
