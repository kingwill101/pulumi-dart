// ignore_for_file: unused_element, unnecessary_cast

import '../budget_budget_filter_custom_period/budget_budget_filter_custom_period.dart';

class BudgetBudgetFilter {
  /// A CalendarPeriod represents the abstract concept of a recurring time period that has a
  /// canonical start. Grammatically, "the start of the current CalendarPeriod".
  /// All calendar times begin at 12 AM US and Canadian Pacific Time (UTC-8).
  /// Exactly one of `calendar_period`, `custom_period` must be provided.
  /// Possible values are: `MONTH`, `QUARTER`, `YEAR`, `CALENDAR_PERIOD_UNSPECIFIED`.
  final String? calendarPeriod;

  /// Optional. If creditTypesTreatment is INCLUDE_SPECIFIED_CREDITS,
  /// this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See a list of acceptable credit type values.
  /// If creditTypesTreatment is not INCLUDE_SPECIFIED_CREDITS, this field must be empty.
  final List<String>? creditTypes;

  /// Specifies how credits should be treated when determining spend
  /// for threshold calculations.
  /// Default value is `INCLUDE_ALL_CREDITS`.
  /// Possible values are: `INCLUDE_ALL_CREDITS`, `EXCLUDE_ALL_CREDITS`, `INCLUDE_SPECIFIED_CREDITS`.
  final String? creditTypesTreatment;

  /// Specifies to track usage from any start date (required) to any end date (optional).
  /// This time period is static, it does not recur.
  /// Exactly one of `calendar_period`, `custom_period` must be provided.
  /// Structure is documented below.
  final BudgetBudgetFilterCustomPeriod? customPeriod;

  /// A single label and value pair specifying that usage from only
  /// this set of labeled resources should be included in the budget.
  final Map<String, String>? labels;

  /// A set of projects of the form projects/{project_number},
  /// specifying that usage from only this set of projects should be
  /// included in the budget. If omitted, the report will include
  /// all usage for the billing account, regardless of which project
  /// the usage occurred on.
  final List<String>? projects;

  /// A set of folder and organization names of the form folders/{folderId} or organizations/{organizationId},
  /// specifying that usage from only this set of folders and organizations should be included in the budget.
  /// If omitted, the budget includes all usage that the billing account pays for. If the folder or organization
  /// contains projects that are paid for by a different Cloud Billing account, the budget doesn't apply to those projects.
  final List<String>? resourceAncestors;

  /// A set of services of the form services/{service_id},
  /// specifying that usage from only this set of services should be
  /// included in the budget. If omitted, the report will include
  /// usage for all the services. The service names are available
  /// through the Catalog API:
  /// https://cloud.google.com/billing/v1/how-tos/catalog-api.
  final List<String>? services;

  /// A set of subaccounts of the form billingAccounts/{account_id},
  /// specifying that usage from only this set of subaccounts should
  /// be included in the budget. If a subaccount is set to the name of
  /// the parent account, usage from the parent account will be included.
  /// If the field is omitted, the report will include usage from the parent
  /// account and all subaccounts, if they exist.
  final List<String>? subaccounts;

  BudgetBudgetFilter({
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
      map['calendarPeriod'] = calendarPeriodValue;
    }
    final creditTypesValue = creditTypes;
    if (creditTypesValue != null) {
      map['creditTypes'] = creditTypesValue;
    }
    final creditTypesTreatmentValue = creditTypesTreatment;
    if (creditTypesTreatmentValue != null) {
      map['creditTypesTreatment'] = creditTypesTreatmentValue;
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

  factory BudgetBudgetFilter.fromMap(Map<String, dynamic> map) {
    return BudgetBudgetFilter(
      calendarPeriod: map['calendarPeriod'] == null
          ? null
          : map['calendarPeriod'] as String,
      creditTypes: map['creditTypes'] == null
          ? null
          : (map['creditTypes'] as List).cast<String>(),
      creditTypesTreatment: map['creditTypesTreatment'] == null
          ? null
          : map['creditTypesTreatment'] as String,
      customPeriod: map['customPeriod'] == null
          ? null
          : BudgetBudgetFilterCustomPeriod.fromMap(
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
