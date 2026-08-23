// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metrics object
class MetricsToTrackResponse {
  /// Destination AMW account where the time-series data of the metric lives.
  final pulumi.Input<String> destinationAmwAccountUrl;
  /// Full url of the metric.
  final pulumi.Input<String> metricId;
  /// Name of the metric.
  final pulumi.Input<String> metricName;

  /// Creates a new [MetricsToTrackResponse].
  /// [destinationAmwAccountUrl] Destination AMW account where the time-series data of the metric lives.
  /// [metricId] Full url of the metric.
  /// [metricName] Name of the metric.
  const MetricsToTrackResponse({
    required this.destinationAmwAccountUrl,
    required this.metricId,
    required this.metricName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAmwAccountUrl': destinationAmwAccountUrl,
      'metricId': metricId,
      'metricName': metricName,
    };
  }

  factory MetricsToTrackResponse.fromMap(Map<String, dynamic> map) {
    return MetricsToTrackResponse(
      destinationAmwAccountUrl: pulumi.Input.fromValue(map['destinationAmwAccountUrl'] as String),
      metricId: pulumi.Input.fromValue(map['metricId'] as String),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
    );
  }
}
