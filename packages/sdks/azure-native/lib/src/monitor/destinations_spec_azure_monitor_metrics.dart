// ignore_for_file: unused_element, unnecessary_cast


/// Azure Monitor Metrics destination.
class DestinationsSpecAzureMonitorMetrics {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;

  /// Creates a new [DestinationsSpecAzureMonitorMetrics].
  /// [name] A friendly name for the destination.
  DestinationsSpecAzureMonitorMetrics({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DestinationsSpecAzureMonitorMetrics.fromMap(Map<String, dynamic> map) {
    return DestinationsSpecAzureMonitorMetrics(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

