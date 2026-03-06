// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connector mapping property availability.
class ConnectorMappingAvailabilityResponse {
  /// The frequency to update.
  final pulumi.Input<String>? frequency;
  /// The interval of the given frequency to use.
  final pulumi.Input<int> interval;

  /// Creates a new [ConnectorMappingAvailabilityResponse].
  /// [frequency] The frequency to update.
  /// [interval] The interval of the given frequency to use.
  const ConnectorMappingAvailabilityResponse({
    this.frequency,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'interval': interval,
    };
  }

  factory ConnectorMappingAvailabilityResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingAvailabilityResponse(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: pulumi.Input.fromValue(map['interval'] as int),
    );
  }
}

