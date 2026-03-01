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
    pulumi.Output<String>? accountId,
    required pulumi.Output<String> name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<Map<String, String>>? tags,
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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

