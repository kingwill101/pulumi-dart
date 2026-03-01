// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_counter_set_response.dart';

/// Metric configuration.
class MetricConfigurationResponse {
  /// Host name for the IoT hub associated to the device.
  final List<MetricCounterSetResponse> counterSets;
  /// The MDM account to which the counters should be pushed.
  final String? mdmAccount;
  /// The MDM namespace to which the counters should be pushed. This is required if MDMAccount is specified
  final String? metricNameSpace;
  /// The Resource ID on which the metrics should be pushed.
  final String resourceId;

  /// Creates a new [MetricConfigurationResponse].
  /// [counterSets] Host name for the IoT hub associated to the device.
  /// [mdmAccount] The MDM account to which the counters should be pushed.
  /// [metricNameSpace] The MDM namespace to which the counters should be pushed. This is required if MDMAccount is specified
  /// [resourceId] The Resource ID on which the metrics should be pushed.
  MetricConfigurationResponse({
    required this.counterSets,
    this.mdmAccount,
    this.metricNameSpace,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterSets': pulumi.Input.encodeList<MetricCounterSetResponse, Map<String, dynamic>>(counterSets, (value) => value.toMap()),
      'mdmAccount': ?mdmAccount,
      'metricNameSpace': ?metricNameSpace,
      'resourceId': resourceId,
    };
  }

  factory MetricConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MetricConfigurationResponse(
      counterSets: pulumi.Input.decodeList<MetricCounterSetResponse>(map['counterSets'], (value) => MetricCounterSetResponse.fromMap((value as Map).cast<String, dynamic>())),
      mdmAccount: map['mdmAccount'] == null ? null : map['mdmAccount'] as String,
      metricNameSpace: map['metricNameSpace'] == null ? null : map['metricNameSpace'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

