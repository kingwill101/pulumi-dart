// ignore_for_file: unused_element, unnecessary_cast

class FunctionOnDeployUpdatePolicy {
  /// The runtime version which was used during latest function deployment.
  final String? runtimeVersion;

  /// Creates a new [FunctionOnDeployUpdatePolicy].
  /// [runtimeVersion] The runtime version which was used during latest function deployment.
  FunctionOnDeployUpdatePolicy({
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

  factory FunctionOnDeployUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return FunctionOnDeployUpdatePolicy(
      runtimeVersion: map['runtimeVersion'] == null
          ? null
          : map['runtimeVersion'] as String,
    );
  }
}
