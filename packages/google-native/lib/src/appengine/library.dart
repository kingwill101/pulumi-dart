// ignore_for_file: unused_element, unnecessary_cast

/// Third-party Python runtime library that is required by the application.
class Library {
  /// Name of the library. Example: "django".
  final String? name;

  /// Version of the library to select, or "latest".
  final String? version;

  /// Creates a new [Library].
  /// [name] Name of the library. Example: "django".
  /// [version] Version of the library to select, or "latest".
  Library({this.name, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'version': ?version};
  }

  factory Library.fromMap(Map<String, dynamic> map) {
    return Library(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
