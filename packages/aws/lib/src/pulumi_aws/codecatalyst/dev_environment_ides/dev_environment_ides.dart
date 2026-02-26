// ignore_for_file: unused_element, unnecessary_cast

class DevEnvironmentIdes {
  /// The name of the IDE. Valid values include Cloud9, IntelliJ, PyCharm, GoLand, and VSCode.
  final String? name;

  /// A link to the IDE runtime image. This parameter is not required if the name is VSCode. Values of the runtime can be for example public.ecr.aws/jetbrains/py,public.ecr.aws/jetbrains/go
  final String? runtime;

  DevEnvironmentIdes({
    this.name,
    this.runtime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final runtimeValue = runtime;
    if (runtimeValue != null) {
      map['runtime'] = runtimeValue;
    }
    return map;
  }

  factory DevEnvironmentIdes.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentIdes(
      name: map['name'] == null ? null : map['name'] as String,
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
    );
  }
}
