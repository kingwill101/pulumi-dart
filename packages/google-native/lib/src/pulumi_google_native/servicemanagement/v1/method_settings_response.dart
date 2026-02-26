// ignore_for_file: unused_element, unnecessary_cast

import 'long_running_response.dart';

/// Describes the generator configuration for a method.
class MethodSettingsResponse {
  /// Describes settings to use for long-running operations when generating API methods for RPCs. Complements RPCs that use the annotations in google/longrunning/operations.proto. Example of a YAML configuration:: publishing: method_settings: - selector: google.cloud.speech.v2.Speech.BatchRecognize long_running: initial_poll_delay: seconds: 60 # 1 minute poll_delay_multiplier: 1.5 max_poll_delay: seconds: 360 # 6 minutes total_poll_timeout: seconds: 54000 # 90 minutes
  final LongRunningResponse longRunning;

  /// The fully qualified name of the method, for which the options below apply. This is used to find the method to apply the options.
  final String selector;

  MethodSettingsResponse({
    required this.longRunning,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['longRunning'] = longRunning.toMap();
    map['selector'] = selector;
    return map;
  }

  factory MethodSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MethodSettingsResponse(
      longRunning: LongRunningResponse.fromMap(
          (map['longRunning'] as Map).cast<String, dynamic>()),
      selector: map['selector'] as String,
    );
  }
}
