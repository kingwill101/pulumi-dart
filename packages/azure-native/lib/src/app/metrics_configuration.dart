// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of Open Telemetry metrics
class MetricsConfiguration {
  /// Open telemetry metrics destinations
  final List<String>? destinations;
  /// Boolean indicating if including keda metrics
  final bool? includeKeda;

  /// Creates a new [MetricsConfiguration].
  /// [destinations] Open telemetry metrics destinations
  /// [includeKeda] Boolean indicating if including keda metrics
  MetricsConfiguration({
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
      destinations: map['destinations'] == null ? null : (map['destinations'] as List).cast<String>(),
      includeKeda: map['includeKeda'] == null ? null : map['includeKeda'] as bool,
    );
  }
}

