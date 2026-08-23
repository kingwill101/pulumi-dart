// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter.dart';
import 'budget_time_period.dart';
import 'notification.dart';

/// {@template pulumi_costmanagement_budget_args_doc}
/// The set of arguments for Budget.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_budget_args_doc}
class BudgetArgs {
  /// The total amount of cost to track with the budget.
  ///
  /// Supported for CategoryType(s): Cost.
  ///
  /// Required for CategoryType(s): Cost.
  final pulumi.Input<double>? amount;
  /// Budget Name.
  final pulumi.Input<String>? budgetName;
  /// The category of the budget.
  /// - 'Cost' defines a Budget.
  /// - 'ReservationUtilization' defines a Reservation Utilization Alert Rule.
  final pulumi.Input<String> category;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final pulumi.Input<String>? eTag;
  /// May be used to filter budgets by user-specified dimensions and/or tags.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  final pulumi.Input<BudgetFilter>? filter;
  /// Dictionary of notifications associated with the budget.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// - Constraints for **CategoryType: Cost** - Budget can have up to 5 notifications with thresholdType: Actual and 5 notifications with thresholdType: Forecasted.
  /// - Constraints for **CategoryType: ReservationUtilization** - Only one notification allowed. thresholdType is not applicable.
  final pulumi.Input<Map<String, Notification>>? notifications;
  /// The scope associated with budget operations.
  ///
  /// Supported scopes for **CategoryType: Cost**
  ///
  /// Azure RBAC Scopes:
  /// - '/subscriptions/{subscriptionId}/' for subscription scope
  /// - '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope
  /// - '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for Management Group scope
  ///
  /// EA (Enterprise Agreement) Scopes:
  ///
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope
  ///
  /// MCA (Modern Customer Agreement) Scopes:
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billingProfile scope
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}' for invoiceSection scope
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}' for customer scope (CSP only)
  ///
  /// Supported scopes for **CategoryType: ReservationUtilization**
  ///
  /// EA (Enterprise Agreement) Scopes:
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account Scope
  ///
  /// MCA (Modern Customer Agreement) Scopes:
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billingProfile scope (non-CSP only)
  /// - '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}' for customer scope (CSP only)
  final pulumi.Input<String> scope;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Supported timeGrainTypes for **CategoryType: Cost**
  ///
  /// - Monthly
  /// - Quarterly
  /// - Annually
  /// - BillingMonth*
  /// - BillingQuarter*
  /// - BillingAnnual*
  ///
  /// *only supported for Web Direct customers.
  ///
  /// Supported timeGrainTypes for **CategoryType: ReservationUtilization**
  /// - Last7Days
  /// - Last30Days
  ///
  /// Required for CategoryType(s): Cost, ReservationUtilization.
  final pulumi.Input<String> timeGrain;
  /// The time period that defines the active period of the budget. The budget will evaluate data on or after the startDate and will expire on the endDate.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Required for CategoryType(s): Cost, ReservationUtilization.
  final pulumi.Input<BudgetTimePeriod> timePeriod;

  /// Creates a new [BudgetArgs].
  /// [amount] The total amount of cost to track with the budget.
  /// [budgetName] Budget Name.
  /// [category] The category of the budget.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [filter] May be used to filter budgets by user-specified dimensions and/or tags.
  /// [notifications] Dictionary of notifications associated with the budget.
  /// [scope] The scope associated with budget operations.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain.
  /// [timePeriod] The time period that defines the active period of the budget. The budget will evaluate data on or after the startDate and will expire on the endDate.
  const BudgetArgs({
    this.amount,
    this.budgetName,
    required this.category,
    this.eTag,
    this.filter,
    this.notifications,
    required this.scope,
    required this.timeGrain,
    required this.timePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'budgetName': ?budgetName,
      'category': category,
      'eTag': ?eTag,
      'filter': ?pulumi.Input.mapOptionalInputValue<BudgetFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'notifications': ?pulumi.Input.mapOptionalInputValue<Map<String, Notification>, Map<String, Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeMapValues<Notification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
      'timeGrain': timeGrain,
      'timePeriod': pulumi.Input.mapInputValue<BudgetTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
    };
  }

  factory BudgetArgs.fromMap(Map<String, dynamic> map) {
    return BudgetArgs(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      budgetName: (() { final guardedValue = map['budgetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<Notification>(guardedValue, (value) => Notification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      timeGrain: pulumi.Input.fromValue(map['timeGrain'] as String),
      timePeriod: pulumi.Input.fromValue(BudgetTimePeriod.fromMap((map['timePeriod']! as Map).cast<String, dynamic>())),
    );
  }
}
