// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBudget.
class GetBudgetArgs {
  /// The ID of the target account for budget. Will use current user's<span pulumi-lang-nodejs=" accountId " pulumi-lang-dotnet=" AccountId " pulumi-lang-go=" accountId " pulumi-lang-python=" account_id " pulumi-lang-yaml=" accountId " pulumi-lang-java=" accountId "> account_id </span>by default if omitted.
  final Input<String>? accountId;

  /// The name of a budget. Unique within accounts.
  ///
  /// The following arguments are optional:
  final Input<String> name;

  /// The prefix of the name of a budget. Unique within accounts.
  final Input<String>? namePrefix;

  /// Map of tags assigned to the resource.
  final Input<Map<String, String>>? tags;

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
      accountId: Input.asOptionalInput<String>(map['accountId']),
      name: Input.asInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
