// ignore_for_file: unused_element, unnecessary_cast


class GetFunctionBuildConfigOnDeployUpdatePolicy {
  /// The runtime version which was used during latest function deployment.
  final String runtimeVersion;

  /// Creates a new [GetFunctionBuildConfigOnDeployUpdatePolicy].
  /// [runtimeVersion] The runtime version which was used during latest function deployment.
  GetFunctionBuildConfigOnDeployUpdatePolicy({
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeVersion': runtimeVersion,
    };
  }

  factory GetFunctionBuildConfigOnDeployUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return GetFunctionBuildConfigOnDeployUpdatePolicy(
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}

