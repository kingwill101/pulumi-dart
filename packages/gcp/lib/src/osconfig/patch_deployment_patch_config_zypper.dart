// ignore_for_file: unused_element, unnecessary_cast

class PatchDeploymentPatchConfigZypper {
  /// Install only patches with these categories. Common categories include security, recommended, and feature.
  final List<String>? categories;

  /// List of packages to exclude from update.
  final List<String>? excludes;

  /// An exclusive list of patches to be updated. These are the only patches that will be installed using 'zypper patch patch:' command.
  /// This field must not be used with any other patch configuration fields.
  final List<String>? exclusivePatches;

  /// Install only patches with these severities. Common severities include critical, important, moderate, and low.
  final List<String>? severities;

  /// Adds the --with-optional flag to zypper patch.
  final bool? withOptional;

  /// Adds the --with-update flag, to zypper patch.
  final bool? withUpdate;

  /// Creates a new [PatchDeploymentPatchConfigZypper].
  /// [categories] Install only patches with these categories. Common categories include security, recommended, and feature.
  /// [excludes] List of packages to exclude from update.
  /// [exclusivePatches] An exclusive list of patches to be updated. These are the only patches that will be installed using 'zypper patch patch:' command.
  /// [severities] Install only patches with these severities. Common severities include critical, important, moderate, and low.
  /// [withOptional] Adds the --with-optional flag to zypper patch.
  /// [withUpdate] Adds the --with-update flag, to zypper patch.
  PatchDeploymentPatchConfigZypper({
    this.categories,
    this.excludes,
    this.exclusivePatches,
    this.severities,
    this.withOptional,
    this.withUpdate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] = categoriesValue;
    }
    final excludesValue = excludes;
    if (excludesValue != null) {
      map['excludes'] = excludesValue;
    }
    final exclusivePatchesValue = exclusivePatches;
    if (exclusivePatchesValue != null) {
      map['exclusivePatches'] = exclusivePatchesValue;
    }
    final severitiesValue = severities;
    if (severitiesValue != null) {
      map['severities'] = severitiesValue;
    }
    final withOptionalValue = withOptional;
    if (withOptionalValue != null) {
      map['withOptional'] = withOptionalValue;
    }
    final withUpdateValue = withUpdate;
    if (withUpdateValue != null) {
      map['withUpdate'] = withUpdateValue;
    }
    return map;
  }

  factory PatchDeploymentPatchConfigZypper.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigZypper(
      categories: map['categories'] == null
          ? null
          : (map['categories'] as List).cast<String>(),
      excludes: map['excludes'] == null
          ? null
          : (map['excludes'] as List).cast<String>(),
      exclusivePatches: map['exclusivePatches'] == null
          ? null
          : (map['exclusivePatches'] as List).cast<String>(),
      severities: map['severities'] == null
          ? null
          : (map['severities'] as List).cast<String>(),
      withOptional:
          map['withOptional'] == null ? null : map['withOptional'] as bool,
      withUpdate: map['withUpdate'] == null ? null : map['withUpdate'] as bool,
    );
  }
}
