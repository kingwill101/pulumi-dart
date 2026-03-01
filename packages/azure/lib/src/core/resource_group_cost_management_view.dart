import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_cost_management_view_args.dart';
import 'resource_group_cost_management_view_dataset.dart';
import 'resource_group_cost_management_view_kpi.dart';
import 'resource_group_cost_management_view_pivot.dart';

/// Manages an Azure Cost Management View for a Resource Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleResourceGroupCostManagementView = new azure.core.ResourceGroupCostManagementView("example", {
///     name: "example",
///     displayName: "Cost View per Month",
///     chartType: "StackedColumn",
///     accumulated: false,
///     resourceGroupId: example.id,
///     reportType: "Usage",
///     timeframe: "MonthToDate",
///     dataset: {
///         granularity: "Monthly",
///         aggregations: [{
///             name: "totalCost",
///             columnName: "Cost",
///         }],
///     },
///     pivots: [
///         {
///             type: "Dimension",
///             name: "ServiceName",
///         },
///         {
///             type: "Dimension",
///             name: "ResourceLocation",
///         },
///         {
///             type: "Dimension",
///             name: "ResourceGroupName",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_resource_group_cost_management_view = azure.core.ResourceGroupCostManagementView("example",
///     name="example",
///     display_name="Cost View per Month",
///     chart_type="StackedColumn",
///     accumulated=False,
///     resource_group_id=example.id,
///     report_type="Usage",
///     timeframe="MonthToDate",
///     dataset={
///         "granularity": "Monthly",
///         "aggregations": [{
///             "name": "totalCost",
///             "column_name": "Cost",
///         }],
///     },
///     pivots=[
///         {
///             "type": "Dimension",
///             "name": "ServiceName",
///         },
///         {
///             "type": "Dimension",
///             "name": "ResourceLocation",
///         },
///         {
///             "type": "Dimension",
///             "name": "ResourceGroupName",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleResourceGroupCostManagementView = new Azure.Core.ResourceGroupCostManagementView("example", new()
///     {
///         Name = "example",
///         DisplayName = "Cost View per Month",
///         ChartType = "StackedColumn",
///         Accumulated = false,
///         ResourceGroupId = example.Id,
///         ReportType = "Usage",
///         Timeframe = "MonthToDate",
///         Dataset = new Azure.Core.Inputs.ResourceGroupCostManagementViewDatasetArgs
///         {
///             Granularity = "Monthly",
///             Aggregations = new[]
///             {
///                 new Azure.Core.Inputs.ResourceGroupCostManagementViewDatasetAggregationArgs
///                 {
///                     Name = "totalCost",
///                     ColumnName = "Cost",
///                 },
///             },
///         },
///         Pivots = new[]
///         {
///             new Azure.Core.Inputs.ResourceGroupCostManagementViewPivotArgs
///             {
///                 Type = "Dimension",
///                 Name = "ServiceName",
///             },
///             new Azure.Core.Inputs.ResourceGroupCostManagementViewPivotArgs
///             {
///                 Type = "Dimension",
///                 Name = "ResourceLocation",
///             },
///             new Azure.Core.Inputs.ResourceGroupCostManagementViewPivotArgs
///             {
///                 Type = "Dimension",
///                 Name = "ResourceGroupName",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewResourceGroupCostManagementView(ctx, "example", &core.ResourceGroupCostManagementViewArgs{
/// 			Name:            pulumi.String("example"),
/// 			DisplayName:     pulumi.String("Cost View per Month"),
/// 			ChartType:       pulumi.String("StackedColumn"),
/// 			Accumulated:     pulumi.Bool(false),
/// 			ResourceGroupId: example.ID(),
/// 			ReportType:      pulumi.String("Usage"),
/// 			Timeframe:       pulumi.String("MonthToDate"),
/// 			Dataset: &core.ResourceGroupCostManagementViewDatasetArgs{
/// 				Granularity: pulumi.String("Monthly"),
/// 				Aggregations: core.ResourceGroupCostManagementViewDatasetAggregationArray{
/// 					&core.ResourceGroupCostManagementViewDatasetAggregationArgs{
/// 						Name:       pulumi.String("totalCost"),
/// 						ColumnName: pulumi.String("Cost"),
/// 					},
/// 				},
/// 			},
/// 			Pivots: core.ResourceGroupCostManagementViewPivotArray{
/// 				&core.ResourceGroupCostManagementViewPivotArgs{
/// 					Type: pulumi.String("Dimension"),
/// 					Name: pulumi.String("ServiceName"),
/// 				},
/// 				&core.ResourceGroupCostManagementViewPivotArgs{
/// 					Type: pulumi.String("Dimension"),
/// 					Name: pulumi.String("ResourceLocation"),
/// 				},
/// 				&core.ResourceGroupCostManagementViewPivotArgs{
/// 					Type: pulumi.String("Dimension"),
/// 					Name: pulumi.String("ResourceGroupName"),
/// 				},
/// 			},
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
/// import com.pulumi.azure.core.ResourceGroupCostManagementView;
/// import com.pulumi.azure.core.ResourceGroupCostManagementViewArgs;
/// import com.pulumi.azure.core.inputs.ResourceGroupCostManagementViewDatasetArgs;
/// import com.pulumi.azure.core.inputs.ResourceGroupCostManagementViewPivotArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleResourceGroupCostManagementView = new ResourceGroupCostManagementView("exampleResourceGroupCostManagementView", ResourceGroupCostManagementViewArgs.builder()
///             .name("example")
///             .displayName("Cost View per Month")
///             .chartType("StackedColumn")
///             .accumulated(false)
///             .resourceGroupId(example.id())
///             .reportType("Usage")
///             .timeframe("MonthToDate")
///             .dataset(ResourceGroupCostManagementViewDatasetArgs.builder()
///                 .granularity("Monthly")
///                 .aggregations(ResourceGroupCostManagementViewDatasetAggregationArgs.builder()
///                     .name("totalCost")
///                     .columnName("Cost")
///                     .build())
///                 .build())
///             .pivots(
///                 ResourceGroupCostManagementViewPivotArgs.builder()
///                     .type("Dimension")
///                     .name("ServiceName")
///                     .build(),
///                 ResourceGroupCostManagementViewPivotArgs.builder()
///                     .type("Dimension")
///                     .name("ResourceLocation")
///                     .build(),
///                 ResourceGroupCostManagementViewPivotArgs.builder()
///                     .type("Dimension")
///                     .name("ResourceGroupName")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleResourceGroupCostManagementView:
///     type: azure:core:ResourceGroupCostManagementView
///     name: example
///     properties:
///       name: example
///       displayName: Cost View per Month
///       chartType: StackedColumn
///       accumulated: false
///       resourceGroupId: ${example.id}
///       reportType: Usage
///       timeframe: MonthToDate
///       dataset:
///         granularity: Monthly
///         aggregations:
///           - name: totalCost
///             columnName: Cost
///       pivots:
///         - type: Dimension
///           name: ServiceName
///         - type: Dimension
///           name: ResourceLocation
///         - type: Dimension
///           name: ResourceGroupName
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CostManagement` - 2023-08-01
///
/// ## Import
///
/// Cost Management View for a Resource Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceGroupCostManagementView:ResourceGroupCostManagementView example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.CostManagement/views/costmanagementview
/// ```
class ResourceGroupCostManagementView extends pulumi.CustomResource {
  /// Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Resource Group to be created.
  late final pulumi.Output<bool> accumulated;
  /// Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`.
  late final pulumi.Output<String> chartType;
  /// A `dataset` block as defined below.
  late final pulumi.Output<ResourceGroupCostManagementViewDataset> dataset;
  /// User visible input name of the Cost Management View.
  late final pulumi.Output<String> displayName;
  /// One or more `kpi` blocks as defined below, to show in Cost Analysis UI.
  late final pulumi.Output<List<ResourceGroupCostManagementViewKpi>?> kpis;
  /// The name which should be used for this Cost Management View for a Resource Group. Changing this forces a new Cost Management View for a Resource Group to be created.
  late final pulumi.Output<String> name;
  /// One or more `pivot` blocks as defined below, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots.
  late final pulumi.Output<List<ResourceGroupCostManagementViewPivot>?> pivots;
  /// The type of the report. The only possible value is `Usage`.
  late final pulumi.Output<String> reportType;
  /// The ID of the Resource Group this View is scoped to. Changing this forces a new Cost Management View for a Resource Group to be created.
  late final pulumi.Output<String> resourceGroupId;
  /// The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`.
  late final pulumi.Output<String> timeframe;

  /// Creates a new [ResourceGroupCostManagementView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroupCostManagementView]. {@macro pulumi_core_resource_group_cost_management_view_resource_group_cost_management_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroupCostManagementView(
    String name, {
    ResourceGroupCostManagementViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:core/resourceGroupCostManagementView:ResourceGroupCostManagementView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accumulated = registerOutput<bool>('accumulated');
    this.chartType = registerOutput<String>('chartType');
    this.dataset = registerOutput<ResourceGroupCostManagementViewDataset>('dataset');
    this.displayName = registerOutput<String>('displayName');
    this.kpis = registerOutput<List<ResourceGroupCostManagementViewKpi>?>('kpis');
    this.name = registerOutput<String>('name');
    this.pivots = registerOutput<List<ResourceGroupCostManagementViewPivot>?>('pivots');
    this.reportType = registerOutput<String>('reportType');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.timeframe = registerOutput<String>('timeframe');
  }
}
