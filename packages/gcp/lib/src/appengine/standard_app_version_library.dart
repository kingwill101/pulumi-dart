// ignore_for_file: unused_element, unnecessary_cast

class StandardAppVersionLibrary {
  /// Name of the library. Example "django".
  final String? name;

  /// Version of the library to select, or "latest".
  final String? version;

  /// Creates a new [StandardAppVersionLibrary].
  /// [name] Name of the library. Example "django".
  /// [version] Version of the library to select, or "latest".
  StandardAppVersionLibrary({this.name, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'version': ?version};
  }

  factory StandardAppVersionLibrary.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionLibrary(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
