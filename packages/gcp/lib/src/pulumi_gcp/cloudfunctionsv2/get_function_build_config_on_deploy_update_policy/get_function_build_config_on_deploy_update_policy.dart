// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionBuildConfigOnDeployUpdatePolicy {
  /// The runtime version which was used during latest function deployment.
  final String runtimeVersion;

  GetFunctionBuildConfigOnDeployUpdatePolicy({
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['runtimeVersion'] = runtimeVersion;
    return map;
  }

  factory GetFunctionBuildConfigOnDeployUpdatePolicy.fromMap(
      Map<String, dynamic> map) {
    return GetFunctionBuildConfigOnDeployUpdatePolicy(
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}
