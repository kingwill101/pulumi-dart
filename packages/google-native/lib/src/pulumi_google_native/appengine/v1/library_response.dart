// ignore_for_file: unused_element, unnecessary_cast

/// Third-party Python runtime library that is required by the application.
class LibraryResponse {
  /// Name of the library. Example: "django".
  final String name;

  /// Version of the library to select, or "latest".
  final String version;

  LibraryResponse({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['version'] = version;
    return map;
  }

  factory LibraryResponse.fromMap(Map<String, dynamic> map) {
    return LibraryResponse(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
