// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Monitor Metrics destination.
class DestinationsSpecResponseAzureMonitorMetrics {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;

  /// Creates a new [DestinationsSpecResponseAzureMonitorMetrics].
  /// [name] A friendly name for the destination.
  const DestinationsSpecResponseAzureMonitorMetrics({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DestinationsSpecResponseAzureMonitorMetrics.fromMap(Map<String, dynamic> map) {
    return DestinationsSpecResponseAzureMonitorMetrics(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

