// ignore_for_file: unused_element, unnecessary_cast


class PatchDeploymentPatchConfigApt {
  /// List of packages to exclude from update. These packages will be excluded.
  final List<String>? excludes;
  /// An exclusive list of packages to be updated. These are the only packages that will be updated.
  /// If these packages are not installed, they will be ignored. This field cannot be specified with
  /// any other patch configuration fields.
  final List<String>? exclusivePackages;
  /// By changing the type to DIST, the patching is performed using apt-get dist-upgrade instead.
  /// Possible values are: `DIST`, `UPGRADE`.
  final String? type;

  /// Creates a new [PatchDeploymentPatchConfigApt].
  /// [excludes] List of packages to exclude from update. These packages will be excluded.
  /// [exclusivePackages] An exclusive list of packages to be updated. These are the only packages that will be updated.
  /// [type] By changing the type to DIST, the patching is performed using apt-get dist-upgrade instead.
  PatchDeploymentPatchConfigApt({
    this.excludes,
    this.exclusivePackages,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'exclusivePackages': ?exclusivePackages,
      'type': ?type,
    };
  }

  factory PatchDeploymentPatchConfigApt.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigApt(
      excludes: map['excludes'] == null ? null : (map['excludes'] as List).cast<String>(),
      exclusivePackages: map['exclusivePackages'] == null ? null : (map['exclusivePackages'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

