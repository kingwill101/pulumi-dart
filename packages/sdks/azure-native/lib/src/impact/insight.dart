import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_args.dart';
import 'insight_properties_response.dart';
import 'system_data_response.dart';

/// Insight resource
///
/// Uses Azure REST API version 2024-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2025-01-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native impact [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creating an insight
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var insight = new AzureNative.Impact.Insight("insight", new()
///     {
///         InsightName = "insightId12",
///         Properties = new AzureNative.Impact.Inputs.InsightPropertiesArgs
///         {
///             Category = "repair",
///             Content = new AzureNative.Impact.Inputs.ContentArgs
///             {
///                 Description = "At 2018-11-08T00:00:00Z UTC, your services dependent on these resources <link href=”…”>VM1</link> may have experienced an issue. <br/><div>We have identified an outage that affected these resources(s). You can look at outage information on <link href=\"https:// portal.azure.com/#view/Microsoft_Azure_Health/AzureHealthBrowseBlade/~/serviceIssues/trackingId/NL2W-VCZ\">NL2W-VCZ</link> link.<div>",
///                 Title = "Impact Has been correlated to an outage",
///             },
///             EventTime = "2023-06-15T04:00:00.009223Z",
///             Impact = new AzureNative.Impact.Inputs.ImpactDetailsArgs
///             {
///                 ImpactId = "/subscriptions/00000000-0000-0000-0000-000000000000/providers/microsoft.Impact/workloadImpacts/impactid22",
///                 ImpactedResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservername",
///                 StartTime = "2023-06-15T01:00:00.009223Z",
///             },
///             InsightUniqueId = "00000000-0000-0000-0000-000000000000",
///             Status = "resolved",
///         },
///         WorkloadImpactName = "impactid22",
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
/// 		_, err := impact.NewInsight(ctx, "insight", &impact.InsightArgs{
/// 			InsightName: pulumi.String("insightId12"),
/// 			Properties: &impact.InsightPropertiesArgs{
/// 				Category: pulumi.String("repair"),
/// 				Content: &impact.ContentArgs{
/// 					Description: pulumi.String("At 2018-11-08T00:00:00Z UTC, your services dependent on these resources <link href=”…”>VM1</link> may have experienced an issue. <br/><div>We have identified an outage that affected these resources(s). You can look at outage information on <link href=\"https:// portal.azure.com/#view/Microsoft_Azure_Health/AzureHealthBrowseBlade/~/serviceIssues/trackingId/NL2W-VCZ\">NL2W-VCZ</link> link.<div>"),
/// 					Title:       pulumi.String("Impact Has been correlated to an outage"),
/// 				},
/// 				EventTime: pulumi.String("2023-06-15T04:00:00.009223Z"),
/// 				Impact: &impact.ImpactDetailsArgs{
/// 					ImpactId:           pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/providers/microsoft.Impact/workloadImpacts/impactid22"),
/// 					ImpactedResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservername"),
/// 					StartTime:          pulumi.String("2023-06-15T01:00:00.009223Z"),
/// 				},
/// 				InsightUniqueId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				Status:          pulumi.String("resolved"),
/// 			},
/// 			WorkloadImpactName: pulumi.String("impactid22"),
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
/// resource "azure-native_impact_insight" "insight" {
///   insight_name = "insightId12"
///   properties = {
///     category = "repair"
///     content = {
///       description = "At 2018-11-08T00:00:00Z UTC, your services dependent on these resources <link href=”…”>VM1</link> may have experienced an issue. <br/><div>We have identified an outage that affected these resources(s). You can look at outage information on <link href=\"https:// portal.azure.com/#view/Microsoft_Azure_Health/AzureHealthBrowseBlade/~/serviceIssues/trackingId/NL2W-VCZ\">NL2W-VCZ</link> link.<div>"
///       title       = "Impact Has been correlated to an outage"
///     }
///     event_time = "2023-06-15T04:00:00.009223Z"
///     impact = {
///       impact_id            = "/subscriptions/00000000-0000-0000-0000-000000000000/providers/microsoft.Impact/workloadImpacts/impactid22"
///       impacted_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservername"
///       start_time           = "2023-06-15T01:00:00.009223Z"
///     }
///     insight_unique_id = "00000000-0000-0000-0000-000000000000"
///     status            = "resolved"
///   }
///   workload_impact_name = "impactid22"
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
/// import com.pulumi.azurenative.impact.Insight;
/// import com.pulumi.azurenative.impact.InsightArgs;
/// import com.pulumi.azurenative.impact.inputs.InsightPropertiesArgs;
/// import com.pulumi.azurenative.impact.inputs.ContentArgs;
/// import com.pulumi.azurenative.impact.inputs.ImpactDetailsArgs;
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
///         var insight = new Insight("insight", InsightArgs.builder()
///             .insightName("insightId12")
///             .properties(InsightPropertiesArgs.builder()
///                 .category("repair")
///                 .content(ContentArgs.builder()
///                     .description("At 2018-11-08T00:00:00Z UTC, your services dependent on these resources <link href=”…”>VM1</link> may have experienced an issue. <br/><div>We have identified an outage that affected these resources(s). You can look at outage information on <link href=\"https:// portal.azure.com/#view/Microsoft_Azure_Health/AzureHealthBrowseBlade/~/serviceIssues/trackingId/NL2W-VCZ\">NL2W-VCZ</link> link.<div>")
///                     .title("Impact Has been correlated to an outage")
///                     .build())
///                 .eventTime("2023-06-15T04:00:00.009223Z")
///                 .impact(ImpactDetailsArgs.builder()
///                     .impactId("/subscriptions/00000000-0000-0000-0000-000000000000/providers/microsoft.Impact/workloadImpacts/impactid22")
///                     .impactedResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservername")
///                     .startTime("2023-06-15T01:00:00.009223Z")
///                     .build())
///                 .insightUniqueId("00000000-0000-0000-0000-000000000000")
///                 .status("resolved")
///                 .build())
///             .workloadImpactName("impactid22")
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
/// const insight = new azure_native.impact.Insight("insight", {
///     insightName: "insightId12",
///     properties: {
///         category: "repair",
///         content: {
///             description: "At 2018-11-08T00:00:00Z UTC, your services dependent on these resources <link href=”…”>VM1</link> may have experienced an issue. <br/><div>We have identified an outage that affected these resources(s). You can look at outage information on <link href=\"https:// portal.azure.com/#view/Microsoft_Azure_Health/AzureHealthBrowseBlade/~/serviceIssues/trackingId/NL2W-VCZ\">NL2W-VCZ</link> link.<div>",
///             title: "Impact Has been correlated to an outage",
///         },
///         eventTime: "2023-06-15T04:00:00.009223Z",
///         impact: {
///             impactId: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/microsoft.Impact/workloadImpacts/impactid22",
///             impactedResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservername",
///             startTime: "2023-06-15T01:00:00.009223Z",
///         },
///         insightUniqueId: "00000000-0000-0000-0000-000000000000",
///         status: "resolved",
///     },
///     workloadImpactName: "impactid22",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// insight = azure_native.impact.Insight("insight",
///     insight_name="insightId12",
///     properties={
///         "category": "repair",
///         "content": {
///             "description": "At 2018-11-08T00:00:00Z UTC, your services dependent on these resources <link href=”…”>VM1</link> may have experienced an issue. <br/><div>We have identified an outage that affected these resources(s). You can look at outage information on <link href=\"https:// portal.azure.com/#view/Microsoft_Azure_Health/AzureHealthBrowseBlade/~/serviceIssues/trackingId/NL2W-VCZ\">NL2W-VCZ</link> link.<div>",
///             "title": "Impact Has been correlated to an outage",
///         },
///         "event_time": "2023-06-15T04:00:00.009223Z",
///         "impact": {
///             "impact_id": "/subscriptions/00000000-0000-0000-0000-000000000000/providers/microsoft.Impact/workloadImpacts/impactid22",
///             "impacted_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservername",
///             "start_time": "2023-06-15T01:00:00.009223Z",
///         },
///         "insight_unique_id": "00000000-0000-0000-0000-000000000000",
///         "status": "resolved",
///     },
///     workload_impact_name="impactid22")
///
/// ```
///
/// ```yaml
/// resources:
///   insight:
///     type: azure-native:impact:Insight
///     properties:
///       insightName: insightId12
///       properties:
///         category: repair
///         content:
///           description: At 2018-11-08T00:00:00Z UTC, your services dependent on these resources <link href=”…”>VM1</link> may have experienced an issue. <br/><div>We have identified an outage that affected these resources(s). You can look at outage information on <link href="https:// portal.azure.com/#view/Microsoft_Azure_Health/AzureHealthBrowseBlade/~/serviceIssues/trackingId/NL2W-VCZ">NL2W-VCZ</link> link.<div>
///           title: Impact Has been correlated to an outage
///         eventTime: 2023-06-15T04:00:00.009223Z
///         impact:
///           impactId: /subscriptions/00000000-0000-0000-0000-000000000000/providers/microsoft.Impact/workloadImpacts/impactid22
///           impactedResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-rg/providers/Microsoft.Sql/sqlserver/dbservername
///           startTime: 2023-06-15T01:00:00.009223Z
///         insightUniqueId: 00000000-0000-0000-0000-000000000000
///         status: resolved
///       workloadImpactName: impactid22
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
/// $ pulumi import azure-native:impact:Insight insightId12 /subscriptions/{subscriptionId}/providers/Microsoft.Impact/workloadImpacts/{workloadImpactName}/insights/{insightName}
/// ```
class Insight extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<InsightPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Insight].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Insight]. {@macro pulumi_impact_insight_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Insight(
    String name, {
    InsightArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:impact:Insight',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<InsightPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InsightPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
