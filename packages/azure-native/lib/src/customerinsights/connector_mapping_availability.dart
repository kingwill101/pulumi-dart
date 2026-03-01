// ignore_for_file: unused_element, unnecessary_cast

import 'frequency_types.dart';

/// Connector mapping property availability.
class ConnectorMappingAvailability {
  /// The frequency to update.
  final FrequencyTypes? frequency;
  /// The interval of the given frequency to use.
  final int interval;

  /// Creates a new [ConnectorMappingAvailability].
  /// [frequency] The frequency to update.
  /// [interval] The interval of the given frequency to use.
  ConnectorMappingAvailability({
    this.frequency,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency == null ? null : frequency!.value,
      'interval': interval,
    };
  }

  factory ConnectorMappingAvailability.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingAvailability(
      frequency: map['frequency'] == null ? null : FrequencyTypes.fromValue(map['frequency'] as String),
      interval: map['interval'] as int,
    );
  }
}

