// ignore_for_file: unused_element, unnecessary_cast


/// Connector mapping property availability.
class ConnectorMappingAvailabilityResponse {
  /// The frequency to update.
  final String? frequency;
  /// The interval of the given frequency to use.
  final int interval;

  /// Creates a new [ConnectorMappingAvailabilityResponse].
  /// [frequency] The frequency to update.
  /// [interval] The interval of the given frequency to use.
  ConnectorMappingAvailabilityResponse({
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
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      interval: map['interval'] as int,
    );
  }
}

