// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metrics_profile_response.dart';

/// AppLinkMember observability profile
class ObservabilityProfileResponse {
  /// Metrics configuration
  final pulumi.Input<MetricsProfileResponse?>? metrics;

  /// Creates a new [ObservabilityProfileResponse].
  /// [metrics] Metrics configuration
  const ObservabilityProfileResponse({
    this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?pulumi.Input.mapOptionalInputValue<MetricsProfileResponse, Map<String, dynamic>>(metrics, (value) => value.toMap()),
    };
  }

  factory ObservabilityProfileResponse.fromMap(Map<String, dynamic> map) {
    return ObservabilityProfileResponse(
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
