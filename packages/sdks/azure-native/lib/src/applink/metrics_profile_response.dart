// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AppLinkMember metrics profile
class MetricsProfileResponse {
  /// Metrics endpoint URL
  final pulumi.Input<String> metricsEndpoint;

  /// Creates a new [MetricsProfileResponse].
  /// [metricsEndpoint] Metrics endpoint URL
  const MetricsProfileResponse({
    required this.metricsEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsEndpoint': metricsEndpoint,
    };
  }

  factory MetricsProfileResponse.fromMap(Map<String, dynamic> map) {
    return MetricsProfileResponse(
      metricsEndpoint: pulumi.Input.fromValue(map['metricsEndpoint'] as String),
    );
  }
}
