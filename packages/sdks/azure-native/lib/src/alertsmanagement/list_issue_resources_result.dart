// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'related_resource_response.dart';

/// Result data returned by listIssueResources.
class ListIssueResourcesResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The RelatedResource items on this page
  final List<RelatedResourceResponse>? value;

  /// Creates a new [ListIssueResourcesResult].
  /// [nextLink] The link to the next page of items
  /// [value] The RelatedResource items on this page
  const ListIssueResourcesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<RelatedResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListIssueResourcesResult.fromMap(Map<String, dynamic> map) {
    return ListIssueResourcesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RelatedResourceResponse>(guardedValue, (value) => RelatedResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
