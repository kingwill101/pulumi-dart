// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccount.
class GetAccountArgs {
  /// Account ID number of a delegated administrator account in the organization.
  final pulumi.Input<String> accountId;

  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  GetAccountArgs({
    required this.accountId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
