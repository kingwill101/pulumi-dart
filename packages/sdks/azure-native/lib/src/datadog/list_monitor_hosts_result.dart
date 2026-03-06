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
  const ListMonitorHostsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DatadogHostResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListMonitorHostsResult.fromMap(Map<String, dynamic> map) {
    return ListMonitorHostsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatadogHostResponse>(guardedValue, (value) => DatadogHostResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

