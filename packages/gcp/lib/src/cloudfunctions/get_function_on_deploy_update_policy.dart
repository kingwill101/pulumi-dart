// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionOnDeployUpdatePolicy {
  /// The runtime version which was used during latest function deployment.
  final String runtimeVersion;

  /// Creates a new [GetFunctionOnDeployUpdatePolicy].
  /// [runtimeVersion] The runtime version which was used during latest function deployment.
  GetFunctionOnDeployUpdatePolicy({required this.runtimeVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'runtimeVersion': runtimeVersion};
  }

  factory GetFunctionOnDeployUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return GetFunctionOnDeployUpdatePolicy(
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}
