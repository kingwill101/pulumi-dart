// ignore_for_file: unused_element, unnecessary_cast

class FunctionRuntime {
  /// The name of the runtime to use. Currently, the only allowed value is `APPSYNC_JS`.
  final String name;

  /// The version of the runtime to use. Currently, the only allowed version is `1.0.0`.
  final String runtimeVersion;

  FunctionRuntime({
    required this.name,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['runtimeVersion'] = runtimeVersion;
    return map;
  }

  factory FunctionRuntime.fromMap(Map<String, dynamic> map) {
    return FunctionRuntime(
      name: map['name'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}
