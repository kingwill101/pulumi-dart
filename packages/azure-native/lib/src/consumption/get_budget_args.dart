// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_consumption_get_budget_args_doc}
/// Arguments for getBudget.
/// {@endtemplate}
/// {@macro pulumi_consumption_get_budget_args_doc}
class GetBudgetArgs {
  /// Budget Name.
  final pulumi.Input<String> budgetName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetBudgetArgs].
  /// [budgetName] Budget Name.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  GetBudgetArgs({
    required String budgetName,
    required String scope,
  }) :
      budgetName = pulumi.Input.asInput<String>(budgetName),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'budgetName': budgetName,
      'scope': scope,
    };
  }

  factory GetBudgetArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetArgs(
      budgetName: map['budgetName'] as String,
      scope: map['scope'] as String,
    );
  }
}

