// ignore_for_file: unused_element, unnecessary_cast

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class BuildNoteResponse {
  /// Immutable. Version of the builder which produced this build.
  final String builderVersion;

  /// Creates a new [BuildNoteResponse].
  /// [builderVersion] Immutable. Version of the builder which produced this build.
  BuildNoteResponse({
    required this.builderVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderVersion'] = builderVersion;
    return map;
  }

  factory BuildNoteResponse.fromMap(Map<String, dynamic> map) {
    return BuildNoteResponse(
      builderVersion: map['builderVersion'] as String,
    );
  }
}
