// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_budgets_get_budget_get_budget_args_doc}
/// Arguments for getBudget.
/// {@endtemplate}
/// {@macro pulumi_budgets_get_budget_get_budget_args_doc}
class GetBudgetArgs {
  /// The ID of the target account for budget. Will use current user's account_id by default if omitted.
  final pulumi.Input<String>? accountId;
  /// The name of a budget. Unique within accounts.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  /// The prefix of the name of a budget. Unique within accounts.
  final pulumi.Input<String>? namePrefix;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetBudgetArgs].
  /// [accountId] The ID of the target account for budget. Will use current user's account_id by default if omitted.
  /// [name] The name of a budget. Unique within accounts.
  /// [namePrefix] The prefix of the name of a budget. Unique within accounts.
  /// [tags] Map of tags assigned to the resource.
  GetBudgetArgs({
    String? accountId,
    required String name,
    String? namePrefix,
    Map<String, String>? tags,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      name = pulumi.Input.asInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      name: map['name'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

