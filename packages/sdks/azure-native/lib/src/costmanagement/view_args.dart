// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kpi_properties.dart';
import 'pivot_properties.dart';
import 'report_config_dataset.dart';
import 'report_config_time_period.dart';

/// {@template pulumi_costmanagement_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_view_args_doc}
class ViewArgs {
  /// Show costs accumulated over time.
  final pulumi.Input<String>? accumulated;
  /// Chart type of the main view in Cost Analysis. Required.
  final pulumi.Input<String>? chart;
  /// Has definition for data in this report config.
  final pulumi.Input<ReportConfigDataset>? dataSet;
  /// Date range of the current view.
  final pulumi.Input<String>? dateRange;
  /// User input name of the view. Required.
  final pulumi.Input<String>? displayName;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final pulumi.Input<String>? eTag;
  /// If true, report includes monetary commitment.
  final pulumi.Input<bool>? includeMonetaryCommitment;
  /// List of KPIs to show in Cost Analysis UI.
  final pulumi.Input<List<KpiProperties>>? kpis;
  /// Metric to use when displaying costs.
  final pulumi.Input<String>? metric;
  /// Date when the user last modified this view.
  final pulumi.Input<String>? modifiedOn;
  /// Configuration of 3 sub-views in the Cost Analysis UI.
  final pulumi.Input<List<PivotProperties>>? pivots;
  /// Cost Management scope to save the view on. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, 'providers/Microsoft.Management/managementGroups/{managementGroupId}' for Management Group scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  final pulumi.Input<String>? scope;
  /// Has time period for pulling data for the report.
  final pulumi.Input<ReportConfigTimePeriod>? timePeriod;
  /// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  final pulumi.Input<String> timeframe;
  /// The type of the report. Usage represents actual usage, forecast represents forecasted data and UsageAndForecast represents both usage and forecasted data. Actual usage and forecasted data can be differentiated based on dates.
  final pulumi.Input<String> type;
  /// View name
  final pulumi.Input<String>? viewName;

  /// Creates a new [ViewArgs].
  /// [accumulated] Show costs accumulated over time.
  /// [chart] Chart type of the main view in Cost Analysis. Required.
  /// [dataSet] Has definition for data in this report config.
  /// [dateRange] Date range of the current view.
  /// [displayName] User input name of the view. Required.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [includeMonetaryCommitment] If true, report includes monetary commitment.
  /// [kpis] List of KPIs to show in Cost Analysis UI.
  /// [metric] Metric to use when displaying costs.
  /// [modifiedOn] Date when the user last modified this view.
  /// [pivots] Configuration of 3 sub-views in the Cost Analysis UI.
  /// [scope] Cost Management scope to save the view on. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, 'providers/Microsoft.Management/managementGroups/{managementGroupId}' for Management Group scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  /// [timePeriod] Has time period for pulling data for the report.
  /// [timeframe] The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  /// [type] The type of the report. Usage represents actual usage, forecast represents forecasted data and UsageAndForecast represents both usage and forecasted data. Actual usage and forecasted data can be differentiated based on dates.
  /// [viewName] View name
  ViewArgs({
    pulumi.Output<String>? accumulated,
    pulumi.Output<String>? chart,
    pulumi.Output<ReportConfigDataset>? dataSet,
    pulumi.Output<String>? dateRange,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? eTag,
    pulumi.Output<bool>? includeMonetaryCommitment,
    pulumi.Output<List<KpiProperties>>? kpis,
    pulumi.Output<String>? metric,
    pulumi.Output<String>? modifiedOn,
    pulumi.Output<List<PivotProperties>>? pivots,
    pulumi.Output<String>? scope,
    pulumi.Output<ReportConfigTimePeriod>? timePeriod,
    required pulumi.Output<String> timeframe,
    required pulumi.Output<String> type,
    pulumi.Output<String>? viewName,
  }) :
      accumulated = pulumi.Input.asOptionalInput<String>(accumulated),
      chart = pulumi.Input.asOptionalInput<String>(chart),
      dataSet = pulumi.Input.asOptionalInput<ReportConfigDataset>(dataSet),
      dateRange = pulumi.Input.asOptionalInput<String>(dateRange),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      includeMonetaryCommitment = pulumi.Input.asOptionalInput<bool>(includeMonetaryCommitment),
      kpis = pulumi.Input.asOptionalInput<List<KpiProperties>>(kpis),
      metric = pulumi.Input.asOptionalInput<String>(metric),
      modifiedOn = pulumi.Input.asOptionalInput<String>(modifiedOn),
      pivots = pulumi.Input.asOptionalInput<List<PivotProperties>>(pivots),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      timePeriod = pulumi.Input.asOptionalInput<ReportConfigTimePeriod>(timePeriod),
      timeframe = pulumi.Input.asInput<String>(timeframe),
      type = pulumi.Input.asInput<String>(type),
      viewName = pulumi.Input.asOptionalInput<String>(viewName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accumulated': ?accumulated,
      'chart': ?chart,
      'dataSet': ?pulumi.Input.mapOptionalInputValue<ReportConfigDataset, Map<String, dynamic>>(dataSet, (value) => value.toMap()),
      'dateRange': ?dateRange,
      'displayName': ?displayName,
      'eTag': ?eTag,
      'includeMonetaryCommitment': ?includeMonetaryCommitment,
      'kpis': ?pulumi.Input.mapOptionalInputValue<List<KpiProperties>, List<Map<String, dynamic>>>(kpis, (value) => pulumi.Input.encodeList<KpiProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metric': ?metric,
      'modifiedOn': ?modifiedOn,
      'pivots': ?pulumi.Input.mapOptionalInputValue<List<PivotProperties>, List<Map<String, dynamic>>>(pivots, (value) => pulumi.Input.encodeList<PivotProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': ?scope,
      'timePeriod': ?pulumi.Input.mapOptionalInputValue<ReportConfigTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
      'timeframe': timeframe,
      'type': type,
      'viewName': ?viewName,
    };
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      accumulated: map['accumulated'] == null ? null : pulumi.Output.create<String>(map['accumulated'] as String),
      chart: map['chart'] == null ? null : pulumi.Output.create<String>(map['chart'] as String),
      dataSet: map['dataSet'] == null ? null : pulumi.Output.create<ReportConfigDataset>(ReportConfigDataset.fromMap((map['dataSet'] as Map).cast<String, dynamic>())),
      dateRange: map['dateRange'] == null ? null : pulumi.Output.create<String>(map['dateRange'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      includeMonetaryCommitment: map['includeMonetaryCommitment'] == null ? null : pulumi.Output.create<bool>(map['includeMonetaryCommitment'] as bool),
      kpis: map['kpis'] == null ? null : pulumi.Output.create<List<KpiProperties>>(pulumi.Input.decodeList<KpiProperties>(map['kpis'], (value) => KpiProperties.fromMap((value as Map).cast<String, dynamic>()))),
      metric: map['metric'] == null ? null : pulumi.Output.create<String>(map['metric'] as String),
      modifiedOn: map['modifiedOn'] == null ? null : pulumi.Output.create<String>(map['modifiedOn'] as String),
      pivots: map['pivots'] == null ? null : pulumi.Output.create<List<PivotProperties>>(pulumi.Input.decodeList<PivotProperties>(map['pivots'], (value) => PivotProperties.fromMap((value as Map).cast<String, dynamic>()))),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      timePeriod: map['timePeriod'] == null ? null : pulumi.Output.create<ReportConfigTimePeriod>(ReportConfigTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>())),
      timeframe: pulumi.Output.create<String>(map['timeframe'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
      viewName: map['viewName'] == null ? null : pulumi.Output.create<String>(map['viewName'] as String),
    );
  }
}

