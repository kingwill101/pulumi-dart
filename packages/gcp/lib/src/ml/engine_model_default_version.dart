// ignore_for_file: unused_element, unnecessary_cast

class EngineModelDefaultVersion {
  /// The name specified for the version when it was created.
  final String name;

  /// Creates a new [EngineModelDefaultVersion].
  /// [name] The name specified for the version when it was created.
  EngineModelDefaultVersion({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory EngineModelDefaultVersion.fromMap(Map<String, dynamic> map) {
    return EngineModelDefaultVersion(
      name: map['name'] as String,
    );
  }
}
