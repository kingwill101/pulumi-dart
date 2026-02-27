// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBudget.
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

  GetBudgetArgs({
    this.accountId,
    required this.name,
    this.namePrefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['name'] = name;
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetBudgetArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      name: pulumi.Input.asInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
