// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_cost_management_view_dataset.dart';
import 'resource_group_cost_management_view_kpi.dart';
import 'resource_group_cost_management_view_pivot.dart';

/// {@template pulumi_core_resource_group_cost_management_view_resource_group_cost_management_view_args_doc}
/// The set of arguments for ResourceGroupCostManagementView.
/// {@endtemplate}
/// {@macro pulumi_core_resource_group_cost_management_view_resource_group_cost_management_view_args_doc}
class ResourceGroupCostManagementViewArgs {
  /// Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Resource Group to be created.
  final pulumi.Input<bool> accumulated;
  /// Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`.
  final pulumi.Input<String> chartType;
  /// A `dataset` block as defined below.
  final pulumi.Input<ResourceGroupCostManagementViewDataset> dataset;
  /// User visible input name of the Cost Management View.
  final pulumi.Input<String> displayName;
  /// One or more `kpi` blocks as defined below, to show in Cost Analysis UI.
  final pulumi.Input<List<ResourceGroupCostManagementViewKpi>>? kpis;
  /// The name which should be used for this Cost Management View for a Resource Group. Changing this forces a new Cost Management View for a Resource Group to be created.
  final pulumi.Input<String>? name;
  /// One or more `pivot` blocks as defined below, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots.
  final pulumi.Input<List<ResourceGroupCostManagementViewPivot>>? pivots;
  /// The type of the report. The only possible value is `Usage`.
  final pulumi.Input<String> reportType;
  /// The ID of the Resource Group this View is scoped to. Changing this forces a new Cost Management View for a Resource Group to be created.
  final pulumi.Input<String> resourceGroupId;
  /// The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`.
  final pulumi.Input<String> timeframe;

  /// Creates a new [ResourceGroupCostManagementViewArgs].
  /// [accumulated] Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Resource Group to be created.
  /// [chartType] Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`.
  /// [dataset] A `dataset` block as defined below.
  /// [displayName] User visible input name of the Cost Management View.
  /// [kpis] One or more `kpi` blocks as defined below, to show in Cost Analysis UI.
  /// [name] The name which should be used for this Cost Management View for a Resource Group. Changing this forces a new Cost Management View for a Resource Group to be created.
  /// [pivots] One or more `pivot` blocks as defined below, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots.
  /// [reportType] The type of the report. The only possible value is `Usage`.
  /// [resourceGroupId] The ID of the Resource Group this View is scoped to. Changing this forces a new Cost Management View for a Resource Group to be created.
  /// [timeframe] The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`.
  ResourceGroupCostManagementViewArgs({
    required bool accumulated,
    required String chartType,
    required ResourceGroupCostManagementViewDataset dataset,
    required String displayName,
    List<ResourceGroupCostManagementViewKpi>? kpis,
    String? name,
    List<ResourceGroupCostManagementViewPivot>? pivots,
    required String reportType,
    required String resourceGroupId,
    required String timeframe,
  }) :
      accumulated = pulumi.Input.asInput<bool>(accumulated),
      chartType = pulumi.Input.asInput<String>(chartType),
      dataset = pulumi.Input.asInput<ResourceGroupCostManagementViewDataset>(dataset),
      displayName = pulumi.Input.asInput<String>(displayName),
      kpis = pulumi.Input.asOptionalInput<List<ResourceGroupCostManagementViewKpi>>(kpis),
      name = pulumi.Input.asOptionalInput<String>(name),
      pivots = pulumi.Input.asOptionalInput<List<ResourceGroupCostManagementViewPivot>>(pivots),
      reportType = pulumi.Input.asInput<String>(reportType),
      resourceGroupId = pulumi.Input.asInput<String>(resourceGroupId),
      timeframe = pulumi.Input.asInput<String>(timeframe);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accumulated': accumulated,
      'chartType': chartType,
      'dataset': pulumi.Input.mapInputValue<ResourceGroupCostManagementViewDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'displayName': displayName,
      'kpis': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupCostManagementViewKpi>, List<Map<String, dynamic>>>(kpis, (value) => pulumi.Input.encodeList<ResourceGroupCostManagementViewKpi, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pivots': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupCostManagementViewPivot>, List<Map<String, dynamic>>>(pivots, (value) => pulumi.Input.encodeList<ResourceGroupCostManagementViewPivot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reportType': reportType,
      'resourceGroupId': resourceGroupId,
      'timeframe': timeframe,
    };
  }

  factory ResourceGroupCostManagementViewArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewArgs(
      accumulated: map['accumulated'] as bool,
      chartType: map['chartType'] as String,
      dataset: ResourceGroupCostManagementViewDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      kpis: map['kpis'] == null ? null : pulumi.Input.decodeList<ResourceGroupCostManagementViewKpi>(map['kpis'], (value) => ResourceGroupCostManagementViewKpi.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      pivots: map['pivots'] == null ? null : pulumi.Input.decodeList<ResourceGroupCostManagementViewPivot>(map['pivots'], (value) => ResourceGroupCostManagementViewPivot.fromMap((value as Map).cast<String, dynamic>())),
      reportType: map['reportType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      timeframe: map['timeframe'] as String,
    );
  }
}

