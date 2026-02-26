// ignore_for_file: unused_element, unnecessary_cast

import 'long_running.dart';

/// Describes the generator configuration for a method.
class MethodSettings {
  /// Describes settings to use for long-running operations when generating API methods for RPCs. Complements RPCs that use the annotations in google/longrunning/operations.proto. Example of a YAML configuration:: publishing: method_settings: - selector: google.cloud.speech.v2.Speech.BatchRecognize long_running: initial_poll_delay: seconds: 60 # 1 minute poll_delay_multiplier: 1.5 max_poll_delay: seconds: 360 # 6 minutes total_poll_timeout: seconds: 54000 # 90 minutes
  final LongRunning? longRunning;

  /// The fully qualified name of the method, for which the options below apply. This is used to find the method to apply the options.
  final String? selector;

  MethodSettings({
    this.longRunning,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final longRunningValue = longRunning;
    if (longRunningValue != null) {
      map['longRunning'] = longRunningValue.toMap();
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    return map;
  }

  factory MethodSettings.fromMap(Map<String, dynamic> map) {
    return MethodSettings(
      longRunning: map['longRunning'] == null
          ? null
          : LongRunning.fromMap(
              (map['longRunning'] as Map).cast<String, dynamic>()),
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
