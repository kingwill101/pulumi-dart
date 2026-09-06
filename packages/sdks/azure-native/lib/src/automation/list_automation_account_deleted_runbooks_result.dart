// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deleted_runbook_response.dart';

/// Result data returned by listAutomationAccountDeletedRunbooks.
class ListAutomationAccountDeletedRunbooksResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The DeletedRunbook items on this page
  final List<DeletedRunbookResponse>? value;

  /// Creates a new [ListAutomationAccountDeletedRunbooksResult].
  /// [nextLink] The link to the next page of items
  /// [value] The DeletedRunbook items on this page
  const ListAutomationAccountDeletedRunbooksResult({
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
