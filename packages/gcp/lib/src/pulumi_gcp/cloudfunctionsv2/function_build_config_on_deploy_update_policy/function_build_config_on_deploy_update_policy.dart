// ignore_for_file: unused_element, unnecessary_cast

class FunctionBuildConfigOnDeployUpdatePolicy {
  /// (Output)
  /// The runtime version which was used during latest function deployment.
  final String? runtimeVersion;

  FunctionBuildConfigOnDeployUpdatePolicy({
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final runtimeVersionValue = runtimeVersion;
    if (runtimeVersionValue != null) {
      map['runtimeVersion'] = runtimeVersionValue;
    }
    return map;
  }

  factory FunctionBuildConfigOnDeployUpdatePolicy.fromMap(
      Map<String, dynamic> map) {
    return FunctionBuildConfigOnDeployUpdatePolicy(
      runtimeVersion: map['runtimeVersion'] == null
          ? null
          : map['runtimeVersion'] as String,
    );
  }
}
