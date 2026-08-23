// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kpi_properties.dart';
import 'pivot_properties.dart';
import 'report_config_dataset.dart';
import 'report_config_time_period.dart';

/// {@template pulumi_costmanagement_view_by_scope_args_doc}
/// The set of arguments for ViewByScope.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_view_by_scope_args_doc}
class ViewByScopeArgs {
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
  final pulumi.Input<String> scope;
  /// Has time period for pulling data for the report.
  final pulumi.Input<ReportConfigTimePeriod>? timePeriod;
  /// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  final pulumi.Input<String> timeframe;
  /// The type of the report. Usage represents actual usage, forecast represents forecasted data and UsageAndForecast represents both usage and forecasted data. Actual usage and forecasted data can be differentiated based on dates.
  final pulumi.Input<String> type;
  /// View name
  final pulumi.Input<String>? viewName;

  /// Creates a new [ViewByScopeArgs].
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
  const ViewByScopeArgs({
    this.accumulated,
    this.chart,
    this.dataSet,
    this.dateRange,
    this.displayName,
    this.eTag,
    this.includeMonetaryCommitment,
    this.kpis,
    this.metric,
    this.modifiedOn,
    this.pivots,
    required this.scope,
    this.timePeriod,
    required this.timeframe,
    required this.type,
    this.viewName,
  });

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
      'scope': scope,
      'timePeriod': ?pulumi.Input.mapOptionalInputValue<ReportConfigTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
      'timeframe': timeframe,
      'type': type,
      'viewName': ?viewName,
    };
  }

  factory ViewByScopeArgs.fromMap(Map<String, dynamic> map) {
    return ViewByScopeArgs(
      accumulated: (() { final guardedValue = map['accumulated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chart: (() { final guardedValue = map['chart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSet: (() { final guardedValue = map['dataSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportConfigDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dateRange: (() { final guardedValue = map['dateRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeMonetaryCommitment: (() { final guardedValue = map['includeMonetaryCommitment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kpis: (() { final guardedValue = map['kpis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KpiProperties>(guardedValue, (value) => KpiProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pivots: (() { final guardedValue = map['pivots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PivotProperties>(guardedValue, (value) => PivotProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      timePeriod: (() { final guardedValue = map['timePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReportConfigTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeframe: pulumi.Input.fromValue(map['timeframe'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      viewName: (() { final guardedValue = map['viewName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
