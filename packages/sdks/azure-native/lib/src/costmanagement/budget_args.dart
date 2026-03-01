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
  BudgetArgs({
    pulumi.Output<double>? amount,
    pulumi.Output<String>? budgetName,
    required pulumi.Output<String> category,
    pulumi.Output<String>? eTag,
    pulumi.Output<BudgetFilter>? filter,
    pulumi.Output<Map<String, Notification>>? notifications,
    required pulumi.Output<String> scope,
    required pulumi.Output<String> timeGrain,
    required pulumi.Output<BudgetTimePeriod> timePeriod,
  }) :
      amount = pulumi.Input.asOptionalInput<double>(amount),
      budgetName = pulumi.Input.asOptionalInput<String>(budgetName),
      category = pulumi.Input.asInput<String>(category),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      filter = pulumi.Input.asOptionalInput<BudgetFilter>(filter),
      notifications = pulumi.Input.asOptionalInput<Map<String, Notification>>(notifications),
      scope = pulumi.Input.asInput<String>(scope),
      timeGrain = pulumi.Input.asInput<String>(timeGrain),
      timePeriod = pulumi.Input.asInput<BudgetTimePeriod>(timePeriod);

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
      amount: map['amount'] == null ? null : pulumi.Output.create<double>(map['amount'] as double),
      budgetName: map['budgetName'] == null ? null : pulumi.Output.create<String>(map['budgetName'] as String),
      category: pulumi.Output.create<String>(map['category'] as String),
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<BudgetFilter>(BudgetFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      notifications: map['notifications'] == null ? null : pulumi.Output.create<Map<String, Notification>>(pulumi.Input.decodeMapValues<Notification>(map['notifications'], (value) => Notification.fromMap((value as Map).cast<String, dynamic>()))),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      timeGrain: pulumi.Output.create<String>(map['timeGrain'] as String),
      timePeriod: pulumi.Output.create<BudgetTimePeriod>(BudgetTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>())),
    );
  }
}

