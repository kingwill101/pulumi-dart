// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_error_details/prevention_discovery_config_error_details.dart';

class PreventionDiscoveryConfigError {
  /// A list of messages that carry the error details.
  final PreventionDiscoveryConfigErrorDetails? details;

  /// The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  final String? timestamp;

  PreventionDiscoveryConfigError({
    this.details,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue.toMap();
    }
    final timestampValue = timestamp;
    if (timestampValue != null) {
      map['timestamp'] = timestampValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigError.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigError(
      details: map['details'] == null
          ? null
          : PreventionDiscoveryConfigErrorDetails.fromMap(
              (map['details'] as Map).cast<String, dynamic>()),
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
    );
  }
}
