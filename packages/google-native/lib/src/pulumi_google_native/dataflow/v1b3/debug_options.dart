// ignore_for_file: unused_element, unnecessary_cast

import 'data_sampling_config.dart';

/// Describes any options that have an effect on the debugging of pipelines.
class DebugOptions {
  /// Configuration options for sampling elements from a running pipeline.
  final DataSamplingConfig? dataSampling;

  /// When true, enables the logging of the literal hot key to the user's Cloud Logging.
  final bool? enableHotKeyLogging;

  DebugOptions({
    this.dataSampling,
    this.enableHotKeyLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataSamplingValue = dataSampling;
    if (dataSamplingValue != null) {
      map['dataSampling'] = dataSamplingValue.toMap();
    }
    final enableHotKeyLoggingValue = enableHotKeyLogging;
    if (enableHotKeyLoggingValue != null) {
      map['enableHotKeyLogging'] = enableHotKeyLoggingValue;
    }
    return map;
  }

  factory DebugOptions.fromMap(Map<String, dynamic> map) {
    return DebugOptions(
      dataSampling: map['dataSampling'] == null
          ? null
          : DataSamplingConfig.fromMap(
              (map['dataSampling'] as Map).cast<String, dynamic>()),
      enableHotKeyLogging: map['enableHotKeyLogging'] == null
          ? null
          : map['enableHotKeyLogging'] as bool,
    );
  }
}
