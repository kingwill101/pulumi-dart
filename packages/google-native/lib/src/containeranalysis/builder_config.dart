// ignore_for_file: unused_element, unnecessary_cast

class BuilderConfig {
  final String? id;

  /// Creates a new [BuilderConfig].
  /// [id] Optional.
  BuilderConfig({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory BuilderConfig.fromMap(Map<String, dynamic> map) {
    return BuilderConfig(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
