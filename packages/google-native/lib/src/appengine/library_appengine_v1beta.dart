// ignore_for_file: unused_element, unnecessary_cast

/// Third-party Python runtime library that is required by the application.
class LibraryAppengineV1beta {
  /// Name of the library. Example: "django".
  final String? name;

  /// Version of the library to select, or "latest".
  final String? version;

  /// Creates a new [LibraryAppengineV1beta].
  /// [name] Name of the library. Example: "django".
  /// [version] Version of the library to select, or "latest".
  LibraryAppengineV1beta({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory LibraryAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return LibraryAppengineV1beta(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
