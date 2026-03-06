// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kpi_properties_response.dart';
import 'pivot_properties_response.dart';
import 'report_config_dataset_response.dart';
import 'report_config_time_period_response.dart';

/// Result data returned by getView.
class GetViewResult {
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

  /// Creates a new [GetViewResult].
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
  const GetViewResult({
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
      'dataSet': ?dataSet?.toMap(),
      'dateRange': ?dateRange,
      'displayName': ?displayName,
      'eTag': ?eTag,
      'id': id,
      'includeMonetaryCommitment': ?includeMonetaryCommitment,
      'kpis': ?(() { final guardedValue = kpis; if (guardedValue == null) return null; return pulumi.Input.encodeList<KpiPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'metric': ?metric,
      'modifiedOn': ?modifiedOn,
      'name': name,
      'pivots': ?(() { final guardedValue = pivots; if (guardedValue == null) return null; return pulumi.Input.encodeList<PivotPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
      'timePeriod': ?timePeriod?.toMap(),
      'timeframe': timeframe,
      'type': type,
    };
  }

  factory GetViewResult.fromMap(Map<String, dynamic> map) {
    return GetViewResult(
      accumulated: (() { final guardedValue = map['accumulated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      chart: (() { final guardedValue = map['chart']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: map['createdOn'] as String,
      currency: map['currency'] as String,
      dataSet: (() { final guardedValue = map['dataSet']; if (guardedValue == null) return null; return ReportConfigDatasetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dateRange: (() { final guardedValue = map['dateRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      includeMonetaryCommitment: (() { final guardedValue = map['includeMonetaryCommitment']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kpis: (() { final guardedValue = map['kpis']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KpiPropertiesResponse>(guardedValue, (value) => KpiPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      pivots: (() { final guardedValue = map['pivots']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PivotPropertiesResponse>(guardedValue, (value) => PivotPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timePeriod: (() { final guardedValue = map['timePeriod']; if (guardedValue == null) return null; return ReportConfigTimePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeframe: map['timeframe'] as String,
      type: map['type'] as String,
    );
  }
}

