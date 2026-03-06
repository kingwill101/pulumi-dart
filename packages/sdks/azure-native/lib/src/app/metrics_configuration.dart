// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Open Telemetry metrics
class MetricsConfiguration {
  /// Open telemetry metrics destinations
  final pulumi.Input<List<String>>? destinations;
  /// Boolean indicating if including keda metrics
  final pulumi.Input<bool>? includeKeda;

  /// Creates a new [MetricsConfiguration].
  /// [destinations] Open telemetry metrics destinations
  /// [includeKeda] Boolean indicating if including keda metrics
  const MetricsConfiguration({
    this.destinations,
    this.includeKeda,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
      'includeKeda': ?includeKeda,
    };
  }

  factory MetricsConfiguration.fromMap(Map<String, dynamic> map) {
    return MetricsConfiguration(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeKeda: (() { final guardedValue = map['includeKeda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

