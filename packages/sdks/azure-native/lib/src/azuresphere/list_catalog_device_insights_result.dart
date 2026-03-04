// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_insight_response.dart';

/// Result data returned by listCatalogDeviceInsights.
class ListCatalogDeviceInsightsResult {
  /// The link to the next page of items
  final String? nextLink;

  /// The DeviceInsight items on this page
  final List<DeviceInsightResponse> value;

  /// Creates a new [ListCatalogDeviceInsightsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The DeviceInsight items on this page
  ListCatalogDeviceInsightsResult({this.nextLink, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value':
          pulumi.Input.encodeList<DeviceInsightResponse, Map<String, dynamic>>(
            value,
            (value) => value.toMap(),
          ),
    };
  }

  factory ListCatalogDeviceInsightsResult.fromMap(Map<String, dynamic> map) {
    return ListCatalogDeviceInsightsResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: pulumi.Input.decodeList<DeviceInsightResponse>(
        map['value']!,
        (value) => DeviceInsightResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
