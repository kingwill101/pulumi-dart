// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_resource_response.dart';

/// Result data returned by listMonitorMonitoredResources.
class ListMonitorMonitoredResourcesResult {
  /// Link to the next set of results, if any.
  final String? nextLink;
  /// Results of a list operation.
  final List<MonitoredResourceResponse>? value;

  /// Creates a new [ListMonitorMonitoredResourcesResult].
  /// [nextLink] Link to the next set of results, if any.
  /// [value] Results of a list operation.
  const ListMonitorMonitoredResourcesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<MonitoredResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListMonitorMonitoredResourcesResult.fromMap(Map<String, dynamic> map) {
    return ListMonitorMonitoredResourcesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonitoredResourceResponse>(guardedValue, (value) => MonitoredResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

