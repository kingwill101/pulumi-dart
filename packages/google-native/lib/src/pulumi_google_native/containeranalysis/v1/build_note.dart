// ignore_for_file: unused_element, unnecessary_cast

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class BuildNote {
  /// Immutable. Version of the builder which produced this build.
  final String builderVersion;

  BuildNote({
    required this.builderVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderVersion'] = builderVersion;
    return map;
  }

  factory BuildNote.fromMap(Map<String, dynamic> map) {
    return BuildNote(
      builderVersion: map['builderVersion'] as String,
    );
  }
}
