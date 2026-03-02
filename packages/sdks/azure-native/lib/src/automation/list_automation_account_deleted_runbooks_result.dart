// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deleted_runbook_response.dart';

/// Result data returned by listAutomationAccountDeletedRunbooks.
class ListAutomationAccountDeletedRunbooksResult {
  /// Gets or sets the next link.
  final String? nextLink;
  /// List of deleted runbooks in automation account.
  final List<DeletedRunbookResponse>? value;

  /// Creates a new [ListAutomationAccountDeletedRunbooksResult].
  /// [nextLink] Gets or sets the next link.
  /// [value] List of deleted runbooks in automation account.
  ListAutomationAccountDeletedRunbooksResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<DeletedRunbookResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListAutomationAccountDeletedRunbooksResult.fromMap(Map<String, dynamic> map) {
    return ListAutomationAccountDeletedRunbooksResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<DeletedRunbookResponse>(map['value']!, (value) => DeletedRunbookResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

