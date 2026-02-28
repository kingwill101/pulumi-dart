// ignore_for_file: unused_element, unnecessary_cast


class FunctionBuildConfigOnDeployUpdatePolicy {
  /// (Output)
  /// The runtime version which was used during latest function deployment.
  final String? runtimeVersion;

  /// Creates a new [FunctionBuildConfigOnDeployUpdatePolicy].
  /// [runtimeVersion] (Output)
  FunctionBuildConfigOnDeployUpdatePolicy({
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory FunctionBuildConfigOnDeployUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return FunctionBuildConfigOnDeployUpdatePolicy(
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
    );
  }
}

