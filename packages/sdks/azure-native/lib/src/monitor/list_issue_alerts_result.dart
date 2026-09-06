// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'related_alert_response.dart';

/// Result data returned by listIssueAlerts.
class ListIssueAlertsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The RelatedAlert items on this page
  final List<RelatedAlertResponse>? value;

  /// Creates a new [ListIssueAlertsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The RelatedAlert items on this page
  const ListIssueAlertsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<RelatedAlertResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListIssueAlertsResult.fromMap(Map<String, dynamic> map) {
    return ListIssueAlertsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RelatedAlertResponse>(guardedValue, (value) => RelatedAlertResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
