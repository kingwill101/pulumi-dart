// ignore_for_file: unused_element, unnecessary_cast

/// Third-party Python runtime library that is required by the application.
class LibraryResponseAppengineV1beta {
  /// Name of the library. Example: "django".
  final String name;

  /// Version of the library to select, or "latest".
  final String version;

  LibraryResponseAppengineV1beta({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['version'] = version;
    return map;
  }

  factory LibraryResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return LibraryResponseAppengineV1beta(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
