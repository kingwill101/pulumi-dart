// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kpi_properties_response.dart';
import 'pivot_properties_response.dart';
import 'report_config_dataset_response.dart';
import 'report_config_time_period_response.dart';

/// Result data returned by getViewByScope.
class GetViewByScopeResult {
  /// Show costs accumulated over time.
  final String? accumulated;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Chart type of the main view in Cost Analysis. Required.
  final String? chart;
  /// Date the user created this view.
  final String createdOn;
  /// Currency of the current view.
  final String currency;
  /// Has definition for data in this report config.
  final ReportConfigDatasetResponse? dataSet;
  /// Date range of the current view.
  final String? dateRange;
  /// User input name of the view. Required.
  final String? displayName;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final String? eTag;
  /// Resource Id.
  final String id;
  /// If true, report includes monetary commitment.
  final bool? includeMonetaryCommitment;
  /// List of KPIs to show in Cost Analysis UI.
  final List<KpiPropertiesResponse>? kpis;
  /// Metric to use when displaying costs.
  final String? metric;
  /// Date when the user last modified this view.
  final String? modifiedOn;
  /// Resource name.
  final String name;
  /// Configuration of 3 sub-views in the Cost Analysis UI.
  final List<PivotPropertiesResponse>? pivots;
  /// Cost Management scope to save the view on. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, 'providers/Microsoft.Management/managementGroups/{managementGroupId}' for Management Group scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  final String? scope;
  /// Has time period for pulling data for the report.
  final ReportConfigTimePeriodResponse? timePeriod;
  /// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  final String timeframe;
  /// Resource type.
  final String type;

  /// Creates a new [GetViewByScopeResult].
  /// [accumulated] Show costs accumulated over time.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [chart] Chart type of the main view in Cost Analysis. Required.
  /// [createdOn] Date the user created this view.
  /// [currency] Currency of the current view.
  /// [dataSet] Has definition for data in this report config.
  /// [dateRange] Date range of the current view.
  /// [displayName] User input name of the view. Required.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [id] Resource Id.
  /// [includeMonetaryCommitment] If true, report includes monetary commitment.
  /// [kpis] List of KPIs to show in Cost Analysis UI.
  /// [metric] Metric to use when displaying costs.
  /// [modifiedOn] Date when the user last modified this view.
  /// [name] Resource name.
  /// [pivots] Configuration of 3 sub-views in the Cost Analysis UI.
  /// [scope] Cost Management scope to save the view on. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, 'providers/Microsoft.Management/managementGroups/{managementGroupId}' for Management Group scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  /// [timePeriod] Has time period for pulling data for the report.
  /// [timeframe] The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  /// [type] Resource type.
  GetViewByScopeResult({
    this.accumulated,
    required this.azureApiVersion,
    this.chart,
    required this.createdOn,
    required this.currency,
    this.dataSet,
    this.dateRange,
    this.displayName,
    this.eTag,
    required this.id,
    this.includeMonetaryCommitment,
    this.kpis,
    this.metric,
    this.modifiedOn,
    required this.name,
    this.pivots,
    this.scope,
    this.timePeriod,
    required this.timeframe,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accumulated': ?accumulated,
      'azureApiVersion': azureApiVersion,
      'chart': ?chart,
      'createdOn': createdOn,
      'currency': currency,
      'dataSet': ?dataSet == null ? null : dataSet!.toMap(),
      'dateRange': ?dateRange,
      'displayName': ?displayName,
      'eTag': ?eTag,
      'id': id,
      'includeMonetaryCommitment': ?includeMonetaryCommitment,
      'kpis': ?kpis == null ? null : pulumi.Input.encodeList<KpiPropertiesResponse, Map<String, dynamic>>(kpis!, (value) => value.toMap()),
      'metric': ?metric,
      'modifiedOn': ?modifiedOn,
      'name': name,
      'pivots': ?pivots == null ? null : pulumi.Input.encodeList<PivotPropertiesResponse, Map<String, dynamic>>(pivots!, (value) => value.toMap()),
      'scope': ?scope,
      'timePeriod': ?timePeriod == null ? null : timePeriod!.toMap(),
      'timeframe': timeframe,
      'type': type,
    };
  }

  factory GetViewByScopeResult.fromMap(Map<String, dynamic> map) {
    return GetViewByScopeResult(
      accumulated: map['accumulated'] == null ? null : map['accumulated'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      chart: map['chart'] == null ? null : map['chart'] as String,
      createdOn: map['createdOn'] as String,
      currency: map['currency'] as String,
      dataSet: map['dataSet'] == null ? null : ReportConfigDatasetResponse.fromMap((map['dataSet'] as Map).cast<String, dynamic>()),
      dateRange: map['dateRange'] == null ? null : map['dateRange'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      id: map['id'] as String,
      includeMonetaryCommitment: map['includeMonetaryCommitment'] == null ? null : map['includeMonetaryCommitment'] as bool,
      kpis: map['kpis'] == null ? null : pulumi.Input.decodeList<KpiPropertiesResponse>(map['kpis'], (value) => KpiPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      metric: map['metric'] == null ? null : map['metric'] as String,
      modifiedOn: map['modifiedOn'] == null ? null : map['modifiedOn'] as String,
      name: map['name'] as String,
      pivots: map['pivots'] == null ? null : pulumi.Input.decodeList<PivotPropertiesResponse>(map['pivots'], (value) => PivotPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] == null ? null : map['scope'] as String,
      timePeriod: map['timePeriod'] == null ? null : ReportConfigTimePeriodResponse.fromMap((map['timePeriod'] as Map).cast<String, dynamic>()),
      timeframe: map['timeframe'] as String,
      type: map['type'] as String,
    );
  }
}

