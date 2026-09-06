// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_insight_response.dart';

/// Result data returned by listCatalogDeviceInsights.
class ListCatalogDeviceInsightsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The DeviceInsight items on this page
  final List<DeviceInsightResponse>? value;

  /// Creates a new [ListCatalogDeviceInsightsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The DeviceInsight items on this page
  const ListCatalogDeviceInsightsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeviceInsightResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListCatalogDeviceInsightsResult.fromMap(Map<String, dynamic> map) {
    return ListCatalogDeviceInsightsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeviceInsightResponse>(guardedValue, (value) => DeviceInsightResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
