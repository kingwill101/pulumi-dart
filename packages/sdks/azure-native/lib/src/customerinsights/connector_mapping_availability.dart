// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frequency_types.dart';

/// Connector mapping property availability.
class ConnectorMappingAvailability {
  /// The frequency to update.
  final pulumi.Input<FrequencyTypes>? frequency;
  /// The interval of the given frequency to use.
  final pulumi.Input<int> interval;

  /// Creates a new [ConnectorMappingAvailability].
  /// [frequency] The frequency to update.
  /// [interval] The interval of the given frequency to use.
  ConnectorMappingAvailability({
    this.frequency,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?pulumi.Input.mapOptionalInputValue<FrequencyTypes, String>(frequency, (value) => value.value),
      'interval': interval,
    };
  }

  factory ConnectorMappingAvailability.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingAvailability(
      frequency: map['frequency'] == null ? null : (FrequencyTypes.fromValue(map['frequency']! as String)).input(),
      interval: (map['interval'] as int).input(),
    );
  }
}

