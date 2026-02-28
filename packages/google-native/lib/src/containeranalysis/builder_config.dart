// ignore_for_file: unused_element, unnecessary_cast


class BuilderConfig {
  final String? id;

  /// Creates a new [BuilderConfig].
  /// [id] Optional.
  BuilderConfig({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory BuilderConfig.fromMap(Map<String, dynamic> map) {
    return BuilderConfig(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

