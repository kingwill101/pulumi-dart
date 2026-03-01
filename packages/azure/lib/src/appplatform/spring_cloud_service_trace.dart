// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudServiceTrace {
  /// The connection string used for Application Insights.
  final String? connectionString;
  /// The sampling rate of Application Insights Agent. Must be between `0.0` and `100.0`. Defaults to `10.0`.
  final double? sampleRate;

  /// Creates a new [SpringCloudServiceTrace].
  /// [connectionString] The connection string used for Application Insights.
  /// [sampleRate] The sampling rate of Application Insights Agent. Must be between `0.0` and `100.0`. Defaults to `10.0`.
  SpringCloudServiceTrace({
    this.connectionString,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'sampleRate': ?sampleRate,
    };
  }

  factory SpringCloudServiceTrace.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceTrace(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      sampleRate: map['sampleRate'] == null ? null : map['sampleRate'] as double,
    );
  }
}

