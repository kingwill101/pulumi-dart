// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccount.
class GetAccountArgs {
  /// Account ID number of a delegated administrator account in the organization.
  final Input<String> accountId;

  /// Map of tags for the resource.
  final Input<Map<String, String>>? tags;

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
      accountId: Input.asInput<String>(map['accountId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
