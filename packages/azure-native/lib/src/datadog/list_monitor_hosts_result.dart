// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datadog_host_response.dart';

/// Result data returned by listMonitorHosts.
class ListMonitorHostsResult {
  /// Link to the next set of results, if any.
  final String? nextLink;
  /// Results of a list operation.
  final List<DatadogHostResponse>? value;

  /// Creates a new [ListMonitorHostsResult].
  /// [nextLink] Link to the next set of results, if any.
  /// [value] Results of a list operation.
  ListMonitorHostsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<DatadogHostResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListMonitorHostsResult.fromMap(Map<String, dynamic> map) {
    return ListMonitorHostsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<DatadogHostResponse>(map['value'], (value) => DatadogHostResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

