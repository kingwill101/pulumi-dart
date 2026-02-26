// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_billing_budgets_v1beta1_custom_period.dart';
import 'google_cloud_billing_budgets_v1beta1_filter_calendar_period.dart';
import 'google_cloud_billing_budgets_v1beta1_filter_credit_types_treatment.dart';

/// A filter for a budget, limiting the scope of the cost to calculate.
class GoogleCloudBillingBudgetsV1beta1Filter {
  /// Optional. Specifies to track usage for recurring calendar period. For example, assume that CalendarPeriod.QUARTER is set. The budget will track usage from April 1 to June 30, when the current calendar month is April, May, June. After that, it will track usage from July 1 to September 30 when the current calendar month is July, August, September, so on.
  final GoogleCloudBillingBudgetsV1beta1FilterCalendarPeriod? calendarPeriod;

  /// Optional. If Filter.credit_types_treatment is INCLUDE_SPECIFIED_CREDITS, this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See [a list of acceptable credit type values](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type). If Filter.credit_types_treatment is **not** INCLUDE_SPECIFIED_CREDITS, this field must be empty.
  final List<String>? creditTypes;

  /// Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
  final GoogleCloudBillingBudgetsV1beta1FilterCreditTypesTreatment?
      creditTypesTreatment;

  /// Optional. Specifies to track usage from any start date (required) to any end date (optional). This time period is static, it does not recur.
  final GoogleCloudBillingBudgetsV1beta1CustomPeriod? customPeriod;

  /// Optional. A single label and value pair specifying that usage from only this set of labeled resources should be included in the budget. If omitted, the report will include all labeled and unlabeled usage. An object containing a single `"key": value` pair. Example: `{ "name": "wrench" }`. _Currently, multiple entries or multiple values per entry are not allowed._
  final Map<String, String>? labels;

  /// Optional. A set of projects of the form `projects/{project}`, specifying that usage from only this set of projects should be included in the budget. If omitted, the report will include all usage for the billing account, regardless of which project the usage occurred on.
  final List<String>? projects;

  /// Optional. A set of folder and organization names of the form `folders/{folderId}` or `organizations/{organizationId}`, specifying that usage from only this set of folders and organizations should be included in the budget. If omitted, the budget includes all usage that the billing account pays for. If the folder or organization contains projects that are paid for by a different Cloud Billing account, the budget *doesn't* apply to those projects.
  final List<String>? resourceAncestors;

  /// Optional. A set of services of the form `services/{service_id}`, specifying that usage from only this set of services should be included in the budget. If omitted, the report will include usage for all the services. The service names are available through the Catalog API: https://cloud.google.com/billing/v1/how-tos/catalog-api.
  final List<String>? services;

  /// Optional. A set of subaccounts of the form `billingAccounts/{account_id}`, specifying that usage from only this set of subaccounts should be included in the budget. If a subaccount is set to the name of the parent account, usage from the parent account will be included. If omitted, the report will include usage from the parent account and all subaccounts, if they exist.
  final List<String>? subaccounts;

  GoogleCloudBillingBudgetsV1beta1Filter({
    this.calendarPeriod,
    this.creditTypes,
    this.creditTypesTreatment,
    this.customPeriod,
    this.labels,
    this.projects,
    this.resourceAncestors,
    this.services,
    this.subaccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final calendarPeriodValue = calendarPeriod;
    if (calendarPeriodValue != null) {
      map['calendarPeriod'] = calendarPeriodValue.value;
    }
    final creditTypesValue = creditTypes;
    if (creditTypesValue != null) {
      map['creditTypes'] = creditTypesValue;
    }
    final creditTypesTreatmentValue = creditTypesTreatment;
    if (creditTypesTreatmentValue != null) {
      map['creditTypesTreatment'] = creditTypesTreatmentValue.value;
    }
    final customPeriodValue = customPeriod;
    if (customPeriodValue != null) {
      map['customPeriod'] = customPeriodValue.toMap();
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectsValue = projects;
    if (projectsValue != null) {
      map['projects'] = projectsValue;
    }
    final resourceAncestorsValue = resourceAncestors;
    if (resourceAncestorsValue != null) {
      map['resourceAncestors'] = resourceAncestorsValue;
    }
    final servicesValue = services;
    if (servicesValue != null) {
      map['services'] = servicesValue;
    }
    final subaccountsValue = subaccounts;
    if (subaccountsValue != null) {
      map['subaccounts'] = subaccountsValue;
    }
    return map;
  }

  factory GoogleCloudBillingBudgetsV1beta1Filter.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1beta1Filter(
      calendarPeriod: map['calendarPeriod'] == null
          ? null
          : GoogleCloudBillingBudgetsV1beta1FilterCalendarPeriod.fromValue(
              map['calendarPeriod'] as String),
      creditTypes: map['creditTypes'] == null
          ? null
          : (map['creditTypes'] as List).cast<String>(),
      creditTypesTreatment: map['creditTypesTreatment'] == null
          ? null
          : GoogleCloudBillingBudgetsV1beta1FilterCreditTypesTreatment
              .fromValue(map['creditTypesTreatment'] as String),
      customPeriod: map['customPeriod'] == null
          ? null
          : GoogleCloudBillingBudgetsV1beta1CustomPeriod.fromMap(
              (map['customPeriod'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      projects: map['projects'] == null
          ? null
          : (map['projects'] as List).cast<String>(),
      resourceAncestors: map['resourceAncestors'] == null
          ? null
          : (map['resourceAncestors'] as List).cast<String>(),
      services: map['services'] == null
          ? null
          : (map['services'] as List).cast<String>(),
      subaccounts: map['subaccounts'] == null
          ? null
          : (map['subaccounts'] as List).cast<String>(),
    );
  }
}
