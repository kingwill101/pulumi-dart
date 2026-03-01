// ignore_for_file: unused_element, unnecessary_cast

class GetDevEnvironmentIde {
  final String name;
  final String runtime;

  /// Creates a new [GetDevEnvironmentIde].
  /// [name] Required.
  /// [runtime] Required.
  GetDevEnvironmentIde({required this.name, required this.runtime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'runtime': runtime};
  }

  factory GetDevEnvironmentIde.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentIde(
      name: map['name'] as String,
      runtime: map['runtime'] as String,
    );
  }
}
