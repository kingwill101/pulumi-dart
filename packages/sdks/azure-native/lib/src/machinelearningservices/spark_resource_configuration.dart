// ignore_for_file: unused_element, unnecessary_cast


class SparkResourceConfiguration {
  /// Optional type of VM used as supported by the compute target.
  final String? instanceType;
  /// Version of spark runtime used for the job.
  final String? runtimeVersion;

  /// Creates a new [SparkResourceConfiguration].
  /// [instanceType] Optional type of VM used as supported by the compute target.
  /// [runtimeVersion] Version of spark runtime used for the job.
  SparkResourceConfiguration({
    this.instanceType,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory SparkResourceConfiguration.fromMap(Map<String, dynamic> map) {
    return SparkResourceConfiguration(
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
    );
  }
}

