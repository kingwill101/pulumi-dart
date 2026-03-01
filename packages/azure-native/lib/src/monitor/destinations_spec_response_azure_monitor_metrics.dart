// ignore_for_file: unused_element, unnecessary_cast


/// Azure Monitor Metrics destination.
class DestinationsSpecResponseAzureMonitorMetrics {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;

  /// Creates a new [DestinationsSpecResponseAzureMonitorMetrics].
  /// [name] A friendly name for the destination.
  DestinationsSpecResponseAzureMonitorMetrics({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DestinationsSpecResponseAzureMonitorMetrics.fromMap(Map<String, dynamic> map) {
    return DestinationsSpecResponseAzureMonitorMetrics(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

