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
  const ListMonitorLinkedResourcesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<LinkedResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListMonitorLinkedResourcesResult.fromMap(Map<String, dynamic> map) {
    return ListMonitorLinkedResourcesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinkedResourceResponse>(guardedValue, (value) => LinkedResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
