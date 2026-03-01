// ignore_for_file: unused_element, unnecessary_cast

import 'data_sampling_config.dart';

/// Describes any options that have an effect on the debugging of pipelines.
class DebugOptions {
  /// Configuration options for sampling elements from a running pipeline.
  final DataSamplingConfig? dataSampling;

  /// When true, enables the logging of the literal hot key to the user's Cloud Logging.
  final bool? enableHotKeyLogging;

  /// Creates a new [DebugOptions].
  /// [dataSampling] Configuration options for sampling elements from a running pipeline.
  /// [enableHotKeyLogging] When true, enables the logging of the literal hot key to the user's Cloud Logging.
  DebugOptions({this.dataSampling, this.enableHotKeyLogging});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSampling': ?dataSampling == null ? null : dataSampling!.toMap(),
      'enableHotKeyLogging': ?enableHotKeyLogging,
    };
  }

  factory DebugOptions.fromMap(Map<String, dynamic> map) {
    return DebugOptions(
      dataSampling: map['dataSampling'] == null
          ? null
          : DataSamplingConfig.fromMap(
              (map['dataSampling'] as Map).cast<String, dynamic>(),
            ),
      enableHotKeyLogging: map['enableHotKeyLogging'] == null
          ? null
          : map['enableHotKeyLogging'] as bool,
    );
  }
}
