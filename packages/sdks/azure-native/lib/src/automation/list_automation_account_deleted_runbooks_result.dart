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
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeletedRunbookResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListAutomationAccountDeletedRunbooksResult.fromMap(Map<String, dynamic> map) {
    return ListAutomationAccountDeletedRunbooksResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeletedRunbookResponse>(guardedValue, (value) => DeletedRunbookResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

