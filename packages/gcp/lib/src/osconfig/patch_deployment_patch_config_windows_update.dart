// ignore_for_file: unused_element, unnecessary_cast


class PatchDeploymentPatchConfigWindowsUpdate {
  /// Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// Each value may be one of: `CRITICAL`, `SECURITY`, `DEFINITION`, `DRIVER`, `FEATURE_PACK`, `SERVICE_PACK`, `TOOL`, `UPDATE_ROLLUP`, `UPDATE`.
  final List<String>? classifications;
  /// List of KBs to exclude from update.
  final List<String>? excludes;
  /// An exclusive list of kbs to be updated. These are the only patches that will be updated.
  /// This field must not be used with other patch configurations.
  final List<String>? exclusivePatches;

  /// Creates a new [PatchDeploymentPatchConfigWindowsUpdate].
  /// [classifications] Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// [excludes] List of KBs to exclude from update.
  /// [exclusivePatches] An exclusive list of kbs to be updated. These are the only patches that will be updated.
  PatchDeploymentPatchConfigWindowsUpdate({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classifications': ?classifications,
      'excludes': ?excludes,
      'exclusivePatches': ?exclusivePatches,
    };
  }

  factory PatchDeploymentPatchConfigWindowsUpdate.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigWindowsUpdate(
      classifications: map['classifications'] == null ? null : (map['classifications'] as List).cast<String>(),
      excludes: map['excludes'] == null ? null : (map['excludes'] as List).cast<String>(),
      exclusivePatches: map['exclusivePatches'] == null ? null : (map['exclusivePatches'] as List).cast<String>(),
    );
  }
}

