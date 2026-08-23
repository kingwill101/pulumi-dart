// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_budget_args_doc}
/// Arguments for getBudget.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_budget_args_doc}
class GetBudgetArgs {
  /// Budget Name.
  final pulumi.Input<String> budgetName;
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

  /// Creates a new [GetBudgetArgs].
  /// [budgetName] Budget Name.
  /// [scope] The scope associated with budget operations.
  const GetBudgetArgs({
    required this.budgetName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'budgetName': budgetName,
      'scope': scope,
    };
  }

  factory GetBudgetArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetArgs(
      budgetName: pulumi.Input.fromValue(map['budgetName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
