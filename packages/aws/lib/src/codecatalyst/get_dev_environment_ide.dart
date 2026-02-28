// ignore_for_file: unused_element, unnecessary_cast

class GetDevEnvironmentIde {
  final String name;
  final String runtime;

  /// Creates a new [GetDevEnvironmentIde].
  /// [name] Required.
  /// [runtime] Required.
  GetDevEnvironmentIde({
    required this.name,
    required this.runtime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['runtime'] = runtime;
    return map;
  }

  factory GetDevEnvironmentIde.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentIde(
      name: map['name'] as String,
      runtime: map['runtime'] as String,
    );
  }
}
