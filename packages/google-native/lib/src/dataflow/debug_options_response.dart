// ignore_for_file: unused_element, unnecessary_cast

import 'data_sampling_config_response.dart';

/// Describes any options that have an effect on the debugging of pipelines.
class DebugOptionsResponse {
  /// Configuration options for sampling elements from a running pipeline.
  final DataSamplingConfigResponse dataSampling;
  /// When true, enables the logging of the literal hot key to the user's Cloud Logging.
  final bool enableHotKeyLogging;

  /// Creates a new [DebugOptionsResponse].
  /// [dataSampling] Configuration options for sampling elements from a running pipeline.
  /// [enableHotKeyLogging] When true, enables the logging of the literal hot key to the user's Cloud Logging.
  DebugOptionsResponse({
    required this.dataSampling,
    required this.enableHotKeyLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSampling': dataSampling.toMap(),
      'enableHotKeyLogging': enableHotKeyLogging,
    };
  }

  factory DebugOptionsResponse.fromMap(Map<String, dynamic> map) {
    return DebugOptionsResponse(
      dataSampling: DataSamplingConfigResponse.fromMap((map['dataSampling'] as Map).cast<String, dynamic>()),
      enableHotKeyLogging: map['enableHotKeyLogging'] as bool,
    );
  }
}

