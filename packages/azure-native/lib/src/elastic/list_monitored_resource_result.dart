// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_resource_response.dart';

/// Result data returned by listMonitoredResource.
class ListMonitoredResourceResult {
  /// Link to the next set of results, if any.
  final String? nextLink;
  /// Results of a list operation.
  final List<MonitoredResourceResponse>? value;

  /// Creates a new [ListMonitoredResourceResult].
  /// [nextLink] Link to the next set of results, if any.
  /// [value] Results of a list operation.
  ListMonitoredResourceResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<MonitoredResourceResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListMonitoredResourceResult.fromMap(Map<String, dynamic> map) {
    return ListMonitoredResourceResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<MonitoredResourceResponse>(map['value'], (value) => MonitoredResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

