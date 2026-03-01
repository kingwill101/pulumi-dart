// ignore_for_file: unused_element, unnecessary_cast


class SparkResourceConfigurationResponse {
  /// Optional type of VM used as supported by the compute target.
  final String? instanceType;
  /// Version of spark runtime used for the job.
  final String? runtimeVersion;

  /// Creates a new [SparkResourceConfigurationResponse].
  /// [instanceType] Optional type of VM used as supported by the compute target.
  /// [runtimeVersion] Version of spark runtime used for the job.
  SparkResourceConfigurationResponse({
    this.instanceType,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory SparkResourceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SparkResourceConfigurationResponse(
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
    );
  }
}

