// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_budgets_get_budget_get_budget_args_doc}
/// Arguments for getBudget.
/// {@endtemplate}
/// {@macro pulumi_budgets_get_budget_get_budget_args_doc}
class GetBudgetArgs {
  /// ID of the target account for the budget. Defaults to the current account ID.
  final pulumi.Input<String?>? accountId;
  /// Name of the budget. Unique within an account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  /// Prefix of the budget name. Unique within an account.
  final pulumi.Input<String?>? namePrefix;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetBudgetArgs].
  /// [accountId] ID of the target account for the budget. Defaults to the current account ID.
  /// [name] Name of the budget. Unique within an account.
  /// [namePrefix] Prefix of the budget name. Unique within an account.
  /// [tags] Map of tags assigned to the resource.
  const GetBudgetArgs({
    this.accountId,
    required this.name,
    this.namePrefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': name,
      'namePrefix': ?namePrefix,
      'tags': ?tags,
    };
  }

  factory GetBudgetArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
