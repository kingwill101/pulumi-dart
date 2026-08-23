// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobProfilerConfig {
  /// Whether to disable the profiler.
  final pulumi.Input<bool>? disableProfiler;
  /// Time interval in milliseconds for capturing system metrics. Valid values: `100`, `200`, `500`, `1000`, `5000`, `60000`.
  final pulumi.Input<int>? profilingIntervalInMilliseconds;
  /// Map of profiling parameters. Maximum of 20 entries.
  final pulumi.Input<Map<String, String>>? profilingParameters;
  /// S3 URI where profiler output is stored.
  final pulumi.Input<String>? s3OutputPath;

  /// Creates a new [TrainingJobProfilerConfig].
  /// [disableProfiler] Whether to disable the profiler.
  /// [profilingIntervalInMilliseconds] Time interval in milliseconds for capturing system metrics. Valid values: `100`, `200`, `500`, `1000`, `5000`, `60000`.
  /// [profilingParameters] Map of profiling parameters. Maximum of 20 entries.
  /// [s3OutputPath] S3 URI where profiler output is stored.
  const TrainingJobProfilerConfig({
    this.disableProfiler,
    this.profilingIntervalInMilliseconds,
    this.profilingParameters,
    this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableProfiler': ?disableProfiler,
      'profilingIntervalInMilliseconds': ?profilingIntervalInMilliseconds,
      'profilingParameters': ?profilingParameters,
      's3OutputPath': ?s3OutputPath,
    };
  }

  factory TrainingJobProfilerConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobProfilerConfig(
      disableProfiler: (() { final guardedValue = map['disableProfiler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      profilingIntervalInMilliseconds: (() { final guardedValue = map['profilingIntervalInMilliseconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      profilingParameters: (() { final guardedValue = map['profilingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      s3OutputPath: (() { final guardedValue = map['s3OutputPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
