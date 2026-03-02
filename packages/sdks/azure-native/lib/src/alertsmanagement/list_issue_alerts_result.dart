// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'related_alert_response.dart';

/// Result data returned by listIssueAlerts.
class ListIssueAlertsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The RelatedAlert items on this page
  final List<RelatedAlertResponse> value;

  /// Creates a new [ListIssueAlertsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The RelatedAlert items on this page
  ListIssueAlertsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<RelatedAlertResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListIssueAlertsResult.fromMap(Map<String, dynamic> map) {
    return ListIssueAlertsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: pulumi.Input.decodeList<RelatedAlertResponse>(map['value'], (value) => RelatedAlertResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

