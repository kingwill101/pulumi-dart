import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_impact_args.dart';
import 'workload_impact_properties_response.dart';

/// Workload Impact properties
///
/// Uses Azure REST API version 2024-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2025-01-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native impact [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Reporting Arm operation failure
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadImpact = new AzureNative.Impact.WorkloadImpact("workloadImpact", new()
///     {
///         Properties = new AzureNative.Impact.Inputs.WorkloadImpactPropertiesArgs
///         {
///             ArmCorrelationIds = new[]
///             {
///                 "00000000-0000-0000-0000-000000000000",
///             },
///             ClientIncidentDetails = new AzureNative.Impact.Inputs.ClientIncidentDetailsArgs
///             {
///                 ClientIncidentId = "AA123",
///                 ClientIncidentSource = AzureNative.Impact.IncidentSource.Jira,
///             },
///             ImpactCategory = "ArmOperation",
///             ImpactDescription = "deletion of resource failed",
///             ImpactedResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///             StartDateTime = "2022-06-15T05:59:46.6517821Z",
///             Workload = new AzureNative.Impact.Inputs.WorkloadArgs
///             {
///                 Context = "webapp/scenario1",
///                 Toolset = AzureNative.Impact.Toolset.Other,
///             },
///         },
///         WorkloadImpactName = "impact-002",
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
/// 	impact "github.com/pulumi/pulumi-azure-native-sdk/impact/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := impact.NewWorkloadImpact(ctx, "workloadImpact", &impact.WorkloadImpactArgs{
/// 			Properties: &impact.WorkloadImpactPropertiesArgs{
/// 				ArmCorrelationIds: pulumi.StringArray{
/// 					pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				},
/// 				ClientIncidentDetails: &impact.ClientIncidentDetailsArgs{
/// 					ClientIncidentId:     pulumi.String("AA123"),
/// 					ClientIncidentSource: pulumi.String(impact.IncidentSourceJira),
/// 				},
/// 				ImpactCategory:     pulumi.String("ArmOperation"),
/// 				ImpactDescription:  pulumi.String("deletion of resource failed"),
/// 				ImpactedResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext"),
/// 				StartDateTime:      pulumi.String("2022-06-15T05:59:46.6517821Z"),
/// 				Workload: &impact.WorkloadArgs{
/// 					Context: pulumi.String("webapp/scenario1"),
/// 					Toolset: pulumi.String(impact.ToolsetOther),
/// 				},
/// 			},
/// 			WorkloadImpactName: pulumi.String("impact-002"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_impact_workloadimpact" "workloadImpact" {
///   properties = {
///     arm_correlation_ids = ["00000000-0000-0000-0000-000000000000"]
///     client_incident_details = {
///       client_incident_id     = "AA123"
///       client_incident_source = "Jira"
///     }
///     impact_category      = "ArmOperation"
///     impact_description   = "deletion of resource failed"
///     impacted_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext"
///     start_date_time      = "2022-06-15T05:59:46.6517821Z"
///     workload = {
///       context = "webapp/scenario1"
///       toolset = "Other"
///     }
///   }
///   workload_impact_name = "impact-002"
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
/// import com.pulumi.azurenative.impact.WorkloadImpact;
/// import com.pulumi.azurenative.impact.WorkloadImpactArgs;
/// import com.pulumi.azurenative.impact.inputs.WorkloadImpactPropertiesArgs;
/// import com.pulumi.azurenative.impact.inputs.ClientIncidentDetailsArgs;
/// import com.pulumi.azurenative.impact.inputs.WorkloadArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workloadImpact = new WorkloadImpact("workloadImpact", WorkloadImpactArgs.builder()
///             .properties(WorkloadImpactPropertiesArgs.builder()
///                 .armCorrelationIds("00000000-0000-0000-0000-000000000000")
///                 .clientIncidentDetails(ClientIncidentDetailsArgs.builder()
///                     .clientIncidentId("AA123")
///                     .clientIncidentSource("Jira")
///                     .build())
///                 .impactCategory("ArmOperation")
///                 .impactDescription("deletion of resource failed")
///                 .impactedResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext")
///                 .startDateTime("2022-06-15T05:59:46.6517821Z")
///                 .workload(WorkloadArgs.builder()
///                     .context("webapp/scenario1")
///                     .toolset("Other")
///                     .build())
///                 .build())
///             .workloadImpactName("impact-002")
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
/// const workloadImpact = new azure_native.impact.WorkloadImpact("workloadImpact", {
///     properties: {
///         armCorrelationIds: ["00000000-0000-0000-0000-000000000000"],
///         clientIncidentDetails: {
///             clientIncidentId: "AA123",
///             clientIncidentSource: azure_native.impact.IncidentSource.Jira,
///         },
///         impactCategory: "ArmOperation",
///         impactDescription: "deletion of resource failed",
///         impactedResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///         startDateTime: "2022-06-15T05:59:46.6517821Z",
///         workload: {
///             context: "webapp/scenario1",
///             toolset: azure_native.impact.Toolset.Other,
///         },
///     },
///     workloadImpactName: "impact-002",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_impact = azure_native.impact.WorkloadImpact("workloadImpact",
///     properties={
///         "arm_correlation_ids": ["00000000-0000-0000-0000-000000000000"],
///         "client_incident_details": {
///             "client_incident_id": "AA123",
///             "client_incident_source": azure_native.impact.IncidentSource.JIRA,
///         },
///         "impact_category": "ArmOperation",
///         "impact_description": "deletion of resource failed",
///         "impacted_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///         "start_date_time": "2022-06-15T05:59:46.6517821Z",
///         "workload": {
///             "context": "webapp/scenario1",
///             "toolset": azure_native.impact.Toolset.OTHER,
///         },
///     },
///     workload_impact_name="impact-002")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadImpact:
///     type: azure-native:impact:WorkloadImpact
///     properties:
///       properties:
///         armCorrelationIds:
///           - 00000000-0000-0000-0000-000000000000
///         clientIncidentDetails:
///           clientIncidentId: AA123
///           clientIncidentSource: Jira
///         impactCategory: ArmOperation
///         impactDescription: deletion of resource failed
///         impactedResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext
///         startDateTime: 2022-06-15T05:59:46.6517821Z
///         workload:
///           context: webapp/scenario1
///           toolset: Other
///       workloadImpactName: impact-002
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Reporting a connectivity impact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadImpact = new AzureNative.Impact.WorkloadImpact("workloadImpact", new()
///     {
///         Properties = new AzureNative.Impact.Inputs.WorkloadImpactPropertiesArgs
///         {
///             ClientIncidentDetails = new AzureNative.Impact.Inputs.ClientIncidentDetailsArgs
///             {
///                 ClientIncidentId = "AA123",
///                 ClientIncidentSource = AzureNative.Impact.IncidentSource.Jira,
///             },
///             Connectivity = new AzureNative.Impact.Inputs.ConnectivityArgs
///             {
///                 Port = 1443,
///                 Protocol = AzureNative.Impact.Protocol.TCP,
///                 Source = new AzureNative.Impact.Inputs.SourceOrTargetArgs
///                 {
///                     AzureResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm1",
///                 },
///                 Target = new AzureNative.Impact.Inputs.SourceOrTargetArgs
///                 {
///                     AzureResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm2",
///                 },
///             },
///             ImpactCategory = "Resource.Connectivity",
///             ImpactDescription = "conection failure",
///             ImpactedResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///             StartDateTime = "2022-06-15T05:59:46.6517821Z",
///             Workload = new AzureNative.Impact.Inputs.WorkloadArgs
///             {
///                 Context = "webapp/scenario1",
///                 Toolset = AzureNative.Impact.Toolset.Other,
///             },
///         },
///         WorkloadImpactName = "impact-001",
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
/// 	impact "github.com/pulumi/pulumi-azure-native-sdk/impact/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := impact.NewWorkloadImpact(ctx, "workloadImpact", &impact.WorkloadImpactArgs{
/// 			Properties: &impact.WorkloadImpactPropertiesArgs{
/// 				ClientIncidentDetails: &impact.ClientIncidentDetailsArgs{
/// 					ClientIncidentId:     pulumi.String("AA123"),
/// 					ClientIncidentSource: pulumi.String(impact.IncidentSourceJira),
/// 				},
/// 				Connectivity: &impact.ConnectivityArgs{
/// 					Port:     pulumi.Int(1443),
/// 					Protocol: pulumi.String(impact.ProtocolTCP),
/// 					Source: &impact.SourceOrTargetArgs{
/// 						AzureResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm1"),
/// 					},
/// 					Target: &impact.SourceOrTargetArgs{
/// 						AzureResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm2"),
/// 					},
/// 				},
/// 				ImpactCategory:     pulumi.String("Resource.Connectivity"),
/// 				ImpactDescription:  pulumi.String("conection failure"),
/// 				ImpactedResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext"),
/// 				StartDateTime:      pulumi.String("2022-06-15T05:59:46.6517821Z"),
/// 				Workload: &impact.WorkloadArgs{
/// 					Context: pulumi.String("webapp/scenario1"),
/// 					Toolset: pulumi.String(impact.ToolsetOther),
/// 				},
/// 			},
/// 			WorkloadImpactName: pulumi.String("impact-001"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_impact_workloadimpact" "workloadImpact" {
///   properties = {
///     client_incident_details = {
///       client_incident_id     = "AA123"
///       client_incident_source = "Jira"
///     }
///     connectivity = {
///       port     = 1443
///       protocol = "TCP"
///       source = {
///         azure_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm1"
///       }
///       target = {
///         azure_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm2"
///       }
///     }
///     impact_category      = "Resource.Connectivity"
///     impact_description   = "conection failure"
///     impacted_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext"
///     start_date_time      = "2022-06-15T05:59:46.6517821Z"
///     workload = {
///       context = "webapp/scenario1"
///       toolset = "Other"
///     }
///   }
///   workload_impact_name = "impact-001"
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
/// import com.pulumi.azurenative.impact.WorkloadImpact;
/// import com.pulumi.azurenative.impact.WorkloadImpactArgs;
/// import com.pulumi.azurenative.impact.inputs.WorkloadImpactPropertiesArgs;
/// import com.pulumi.azurenative.impact.inputs.ClientIncidentDetailsArgs;
/// import com.pulumi.azurenative.impact.inputs.ConnectivityArgs;
/// import com.pulumi.azurenative.impact.inputs.SourceOrTargetArgs;
/// import com.pulumi.azurenative.impact.inputs.WorkloadArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workloadImpact = new WorkloadImpact("workloadImpact", WorkloadImpactArgs.builder()
///             .properties(WorkloadImpactPropertiesArgs.builder()
///                 .clientIncidentDetails(ClientIncidentDetailsArgs.builder()
///                     .clientIncidentId("AA123")
///                     .clientIncidentSource("Jira")
///                     .build())
///                 .connectivity(ConnectivityArgs.builder()
///                     .port(1443)
///                     .protocol("TCP")
///                     .source(SourceOrTargetArgs.builder()
///                         .azureResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm1")
///                         .build())
///                     .target(SourceOrTargetArgs.builder()
///                         .azureResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm2")
///                         .build())
///                     .build())
///                 .impactCategory("Resource.Connectivity")
///                 .impactDescription("conection failure")
///                 .impactedResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext")
///                 .startDateTime("2022-06-15T05:59:46.6517821Z")
///                 .workload(WorkloadArgs.builder()
///                     .context("webapp/scenario1")
///                     .toolset("Other")
///                     .build())
///                 .build())
///             .workloadImpactName("impact-001")
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
/// const workloadImpact = new azure_native.impact.WorkloadImpact("workloadImpact", {
///     properties: {
///         clientIncidentDetails: {
///             clientIncidentId: "AA123",
///             clientIncidentSource: azure_native.impact.IncidentSource.Jira,
///         },
///         connectivity: {
///             port: 1443,
///             protocol: azure_native.impact.Protocol.TCP,
///             source: {
///                 azureResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm1",
///             },
///             target: {
///                 azureResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm2",
///             },
///         },
///         impactCategory: "Resource.Connectivity",
///         impactDescription: "conection failure",
///         impactedResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///         startDateTime: "2022-06-15T05:59:46.6517821Z",
///         workload: {
///             context: "webapp/scenario1",
///             toolset: azure_native.impact.Toolset.Other,
///         },
///     },
///     workloadImpactName: "impact-001",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_impact = azure_native.impact.WorkloadImpact("workloadImpact",
///     properties={
///         "client_incident_details": {
///             "client_incident_id": "AA123",
///             "client_incident_source": azure_native.impact.IncidentSource.JIRA,
///         },
///         "connectivity": {
///             "port": 1443,
///             "protocol": azure_native.impact.Protocol.TCP,
///             "source": {
///                 "azure_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm1",
///             },
///             "target": {
///                 "azure_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm2",
///             },
///         },
///         "impact_category": "Resource.Connectivity",
///         "impact_description": "conection failure",
///         "impacted_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///         "start_date_time": "2022-06-15T05:59:46.6517821Z",
///         "workload": {
///             "context": "webapp/scenario1",
///             "toolset": azure_native.impact.Toolset.OTHER,
///         },
///     },
///     workload_impact_name="impact-001")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadImpact:
///     type: azure-native:impact:WorkloadImpact
///     properties:
///       properties:
///         clientIncidentDetails:
///           clientIncidentId: AA123
///           clientIncidentSource: Jira
///         connectivity:
///           port: 1443
///           protocol: TCP
///           source:
///             azureResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm1
///           target:
///             azureResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceSub/providers/Microsoft.compute/virtualmachines/vm2
///         impactCategory: Resource.Connectivity
///         impactDescription: conection failure
///         impactedResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext
///         startDateTime: 2022-06-15T05:59:46.6517821Z
///         workload:
///           context: webapp/scenario1
///           toolset: Other
///       workloadImpactName: impact-001
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Reporting availability related impact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadImpact = new AzureNative.Impact.WorkloadImpact("workloadImpact", new()
///     {
///         Properties = new AzureNative.Impact.Inputs.WorkloadImpactPropertiesArgs
///         {
///             ClientIncidentDetails = new AzureNative.Impact.Inputs.ClientIncidentDetailsArgs
///             {
///                 ClientIncidentId = "AA123",
///                 ClientIncidentSource = AzureNative.Impact.IncidentSource.Jira,
///             },
///             ImpactCategory = "Availability",
///             ImpactDescription = "read calls failed",
///             ImpactedResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///             StartDateTime = "2022-06-15T05:59:46.6517821Z",
///             Workload = new AzureNative.Impact.Inputs.WorkloadArgs
///             {
///                 Context = "webapp/scenario1",
///                 Toolset = AzureNative.Impact.Toolset.Other,
///             },
///         },
///         WorkloadImpactName = "impact-002",
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
/// 	impact "github.com/pulumi/pulumi-azure-native-sdk/impact/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := impact.NewWorkloadImpact(ctx, "workloadImpact", &impact.WorkloadImpactArgs{
/// 			Properties: &impact.WorkloadImpactPropertiesArgs{
/// 				ClientIncidentDetails: &impact.ClientIncidentDetailsArgs{
/// 					ClientIncidentId:     pulumi.String("AA123"),
/// 					ClientIncidentSource: pulumi.String(impact.IncidentSourceJira),
/// 				},
/// 				ImpactCategory:     pulumi.String("Availability"),
/// 				ImpactDescription:  pulumi.String("read calls failed"),
/// 				ImpactedResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext"),
/// 				StartDateTime:      pulumi.String("2022-06-15T05:59:46.6517821Z"),
/// 				Workload: &impact.WorkloadArgs{
/// 					Context: pulumi.String("webapp/scenario1"),
/// 					Toolset: pulumi.String(impact.ToolsetOther),
/// 				},
/// 			},
/// 			WorkloadImpactName: pulumi.String("impact-002"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_impact_workloadimpact" "workloadImpact" {
///   properties = {
///     client_incident_details = {
///       client_incident_id     = "AA123"
///       client_incident_source = "Jira"
///     }
///     impact_category      = "Availability"
///     impact_description   = "read calls failed"
///     impacted_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext"
///     start_date_time      = "2022-06-15T05:59:46.6517821Z"
///     workload = {
///       context = "webapp/scenario1"
///       toolset = "Other"
///     }
///   }
///   workload_impact_name = "impact-002"
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
/// import com.pulumi.azurenative.impact.WorkloadImpact;
/// import com.pulumi.azurenative.impact.WorkloadImpactArgs;
/// import com.pulumi.azurenative.impact.inputs.WorkloadImpactPropertiesArgs;
/// import com.pulumi.azurenative.impact.inputs.ClientIncidentDetailsArgs;
/// import com.pulumi.azurenative.impact.inputs.WorkloadArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workloadImpact = new WorkloadImpact("workloadImpact", WorkloadImpactArgs.builder()
///             .properties(WorkloadImpactPropertiesArgs.builder()
///                 .clientIncidentDetails(ClientIncidentDetailsArgs.builder()
///                     .clientIncidentId("AA123")
///                     .clientIncidentSource("Jira")
///                     .build())
///                 .impactCategory("Availability")
///                 .impactDescription("read calls failed")
///                 .impactedResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext")
///                 .startDateTime("2022-06-15T05:59:46.6517821Z")
///                 .workload(WorkloadArgs.builder()
///                     .context("webapp/scenario1")
///                     .toolset("Other")
///                     .build())
///                 .build())
///             .workloadImpactName("impact-002")
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
/// const workloadImpact = new azure_native.impact.WorkloadImpact("workloadImpact", {
///     properties: {
///         clientIncidentDetails: {
///             clientIncidentId: "AA123",
///             clientIncidentSource: azure_native.impact.IncidentSource.Jira,
///         },
///         impactCategory: "Availability",
///         impactDescription: "read calls failed",
///         impactedResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///         startDateTime: "2022-06-15T05:59:46.6517821Z",
///         workload: {
///             context: "webapp/scenario1",
///             toolset: azure_native.impact.Toolset.Other,
///         },
///     },
///     workloadImpactName: "impact-002",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_impact = azure_native.impact.WorkloadImpact("workloadImpact",
///     properties={
///         "client_incident_details": {
///             "client_incident_id": "AA123",
///             "client_incident_source": azure_native.impact.IncidentSource.JIRA,
///         },
///         "impact_category": "Availability",
///         "impact_description": "read calls failed",
///         "impacted_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///         "start_date_time": "2022-06-15T05:59:46.6517821Z",
///         "workload": {
///             "context": "webapp/scenario1",
///             "toolset": azure_native.impact.Toolset.OTHER,
///         },
///     },
///     workload_impact_name="impact-002")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadImpact:
///     type: azure-native:impact:WorkloadImpact
///     properties:
///       properties:
///         clientIncidentDetails:
///           clientIncidentId: AA123
///           clientIncidentSource: Jira
///         impactCategory: Availability
///         impactDescription: read calls failed
///         impactedResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext
///         startDateTime: 2022-06-15T05:59:46.6517821Z
///         workload:
///           context: webapp/scenario1
///           toolset: Other
///       workloadImpactName: impact-002
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Reporting performance related impact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadImpact = new AzureNative.Impact.WorkloadImpact("workloadImpact", new()
///     {
///         Properties = new AzureNative.Impact.Inputs.WorkloadImpactPropertiesArgs
///         {
///             ClientIncidentDetails = new AzureNative.Impact.Inputs.ClientIncidentDetailsArgs
///             {
///                 ClientIncidentId = "AA123",
///                 ClientIncidentSource = AzureNative.Impact.IncidentSource.Jira,
///             },
///             ImpactCategory = "Resource.Performance",
///             ImpactDescription = "high cpu utilization",
///             ImpactedResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///             Performance = new[]
///             {
///                 new AzureNative.Impact.Inputs.PerformanceArgs
///                 {
///                     Actual = 90,
///                     Expected = 60,
///                     MetricName = "CPU",
///                     Unit = "garbage",
///                 },
///             },
///             StartDateTime = "2022-06-15T05:59:46.6517821Z",
///             Workload = new AzureNative.Impact.Inputs.WorkloadArgs
///             {
///                 Context = "webapp/scenario1",
///                 Toolset = AzureNative.Impact.Toolset.Other,
///             },
///         },
///         WorkloadImpactName = "impact-002",
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
/// 	impact "github.com/pulumi/pulumi-azure-native-sdk/impact/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := impact.NewWorkloadImpact(ctx, "workloadImpact", &impact.WorkloadImpactArgs{
/// 			Properties: &impact.WorkloadImpactPropertiesArgs{
/// 				ClientIncidentDetails: &impact.ClientIncidentDetailsArgs{
/// 					ClientIncidentId:     pulumi.String("AA123"),
/// 					ClientIncidentSource: pulumi.String(impact.IncidentSourceJira),
/// 				},
/// 				ImpactCategory:     pulumi.String("Resource.Performance"),
/// 				ImpactDescription:  pulumi.String("high cpu utilization"),
/// 				ImpactedResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext"),
/// 				Performance: impact.PerformanceArray{
/// 					&impact.PerformanceArgs{
/// 						Actual:     pulumi.Float64(90),
/// 						Expected:   pulumi.Float64(60),
/// 						MetricName: pulumi.String("CPU"),
/// 						Unit:       pulumi.String("garbage"),
/// 					},
/// 				},
/// 				StartDateTime: pulumi.String("2022-06-15T05:59:46.6517821Z"),
/// 				Workload: &impact.WorkloadArgs{
/// 					Context: pulumi.String("webapp/scenario1"),
/// 					Toolset: pulumi.String(impact.ToolsetOther),
/// 				},
/// 			},
/// 			WorkloadImpactName: pulumi.String("impact-002"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_impact_workloadimpact" "workloadImpact" {
///   properties = {
///     client_incident_details = {
///       client_incident_id     = "AA123"
///       client_incident_source = "Jira"
///     }
///     impact_category      = "Resource.Performance"
///     impact_description   = "high cpu utilization"
///     impacted_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext"
///     performance = [{
///       "actual"     = 90
///       "expected"   = 60
///       "metricName" = "CPU"
///       "unit"       = "garbage"
///     }]
///     start_date_time = "2022-06-15T05:59:46.6517821Z"
///     workload = {
///       context = "webapp/scenario1"
///       toolset = "Other"
///     }
///   }
///   workload_impact_name = "impact-002"
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
/// import com.pulumi.azurenative.impact.WorkloadImpact;
/// import com.pulumi.azurenative.impact.WorkloadImpactArgs;
/// import com.pulumi.azurenative.impact.inputs.WorkloadImpactPropertiesArgs;
/// import com.pulumi.azurenative.impact.inputs.ClientIncidentDetailsArgs;
/// import com.pulumi.azurenative.impact.inputs.WorkloadArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workloadImpact = new WorkloadImpact("workloadImpact", WorkloadImpactArgs.builder()
///             .properties(WorkloadImpactPropertiesArgs.builder()
///                 .clientIncidentDetails(ClientIncidentDetailsArgs.builder()
///                     .clientIncidentId("AA123")
///                     .clientIncidentSource("Jira")
///                     .build())
///                 .impactCategory("Resource.Performance")
///                 .impactDescription("high cpu utilization")
///                 .impactedResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext")
///                 .performance(PerformanceArgs.builder()
///                     .actual(90.0)
///                     .expected(60.0)
///                     .metricName("CPU")
///                     .unit("garbage")
///                     .build())
///                 .startDateTime("2022-06-15T05:59:46.6517821Z")
///                 .workload(WorkloadArgs.builder()
///                     .context("webapp/scenario1")
///                     .toolset("Other")
///                     .build())
///                 .build())
///             .workloadImpactName("impact-002")
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
/// const workloadImpact = new azure_native.impact.WorkloadImpact("workloadImpact", {
///     properties: {
///         clientIncidentDetails: {
///             clientIncidentId: "AA123",
///             clientIncidentSource: azure_native.impact.IncidentSource.Jira,
///         },
///         impactCategory: "Resource.Performance",
///         impactDescription: "high cpu utilization",
///         impactedResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///         performance: [{
///             actual: 90,
///             expected: 60,
///             metricName: "CPU",
///             unit: "garbage",
///         }],
///         startDateTime: "2022-06-15T05:59:46.6517821Z",
///         workload: {
///             context: "webapp/scenario1",
///             toolset: azure_native.impact.Toolset.Other,
///         },
///     },
///     workloadImpactName: "impact-002",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_impact = azure_native.impact.WorkloadImpact("workloadImpact",
///     properties={
///         "client_incident_details": {
///             "client_incident_id": "AA123",
///             "client_incident_source": azure_native.impact.IncidentSource.JIRA,
///         },
///         "impact_category": "Resource.Performance",
///         "impact_description": "high cpu utilization",
///         "impacted_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext",
///         "performance": [{
///             "actual": float(90),
///             "expected": float(60),
///             "metric_name": "CPU",
///             "unit": "garbage",
///         }],
///         "start_date_time": "2022-06-15T05:59:46.6517821Z",
///         "workload": {
///             "context": "webapp/scenario1",
///             "toolset": azure_native.impact.Toolset.OTHER,
///         },
///     },
///     workload_impact_name="impact-002")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadImpact:
///     type: azure-native:impact:WorkloadImpact
///     properties:
///       properties:
///         clientIncidentDetails:
///           clientIncidentId: AA123
///           clientIncidentSource: Jira
///         impactCategory: Resource.Performance
///         impactDescription: high cpu utilization
///         impactedResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservercontext
///         performance:
///           - actual: 90
///             expected: 60
///             metricName: CPU
///             unit: garbage
///         startDateTime: 2022-06-15T05:59:46.6517821Z
///         workload:
///           context: webapp/scenario1
///           toolset: Other
///       workloadImpactName: impact-002
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
/// $ pulumi import azure-native:impact:WorkloadImpact impact-001 /subscriptions/{subscriptionId}/providers/Microsoft.Impact/workloadImpacts/{workloadImpactName}
/// ```
class WorkloadImpact extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<WorkloadImpactPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadImpact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadImpact]. {@macro pulumi_impact_workload_impact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadImpact(
    String name, {
    WorkloadImpactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:impact:WorkloadImpact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkloadImpactPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadImpactPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WorkloadImpact] resource.
  WorkloadImpact.reference(String urn)
    : super(
        'azure-native:impact:WorkloadImpact',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkloadImpactPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadImpactPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
