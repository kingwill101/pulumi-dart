// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_resource_response.dart';

/// Result data returned by listMonitorLinkedResources.
class ListMonitorLinkedResourcesResult {
  /// Link to the next set of results, if any.
  final String? nextLink;
  /// Results of a list operation.
  final List<LinkedResourceResponse>? value;

  /// Creates a new [ListMonitorLinkedResourcesResult].
  /// [nextLink] Link to the next set of results, if any.
  /// [value] Results of a list operation.
  ListMonitorLinkedResourcesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<LinkedResourceResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListMonitorLinkedResourcesResult.fromMap(Map<String, dynamic> map) {
    return ListMonitorLinkedResourcesResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<LinkedResourceResponse>(map['value'], (value) => LinkedResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

