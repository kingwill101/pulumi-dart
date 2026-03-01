// ignore_for_file: unused_element, unnecessary_cast

/// Zypper patching is performed by running `zypper patch`. See also https://en.opensuse.org/SDB:Zypper_manual.
class ZypperSettingsResponse {
  /// Install only patches with these categories. Common categories include security, recommended, and feature.
  final List<String> categories;

  /// List of patches to exclude from update.
  final List<String> excludes;

  /// An exclusive list of patches to be updated. These are the only patches that will be installed using 'zypper patch patch:' command. This field must not be used with any other patch configuration fields.
  final List<String> exclusivePatches;

  /// Install only patches with these severities. Common severities include critical, important, moderate, and low.
  final List<String> severities;

  /// Adds the `--with-optional` flag to `zypper patch`.
  final bool withOptional;

  /// Adds the `--with-update` flag, to `zypper patch`.
  final bool withUpdate;

  /// Creates a new [ZypperSettingsResponse].
  /// [categories] Install only patches with these categories. Common categories include security, recommended, and feature.
  /// [excludes] List of patches to exclude from update.
  /// [exclusivePatches] An exclusive list of patches to be updated. These are the only patches that will be installed using 'zypper patch patch:' command. This field must not be used with any other patch configuration fields.
  /// [severities] Install only patches with these severities. Common severities include critical, important, moderate, and low.
  /// [withOptional] Adds the `--with-optional` flag to `zypper patch`.
  /// [withUpdate] Adds the `--with-update` flag, to `zypper patch`.
  ZypperSettingsResponse({
    required this.categories,
    required this.excludes,
    required this.exclusivePatches,
    required this.severities,
    required this.withOptional,
    required this.withUpdate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': categories,
      'excludes': excludes,
      'exclusivePatches': exclusivePatches,
      'severities': severities,
      'withOptional': withOptional,
      'withUpdate': withUpdate,
    };
  }

  factory ZypperSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ZypperSettingsResponse(
      categories: (map['categories'] as List).cast<String>(),
      excludes: (map['excludes'] as List).cast<String>(),
      exclusivePatches: (map['exclusivePatches'] as List).cast<String>(),
      severities: (map['severities'] as List).cast<String>(),
      withOptional: map['withOptional'] as bool,
      withUpdate: map['withUpdate'] as bool,
    );
  }
}
