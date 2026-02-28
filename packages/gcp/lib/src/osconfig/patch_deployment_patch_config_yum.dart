// ignore_for_file: unused_element, unnecessary_cast


class PatchDeploymentPatchConfigYum {
  /// List of packages to exclude from update. These packages will be excluded.
  final List<String>? excludes;
  /// An exclusive list of packages to be updated. These are the only packages that will be updated.
  /// If these packages are not installed, they will be ignored. This field cannot be specified with
  /// any other patch configuration fields.
  final List<String>? exclusivePackages;
  /// Will cause patch to run yum update-minimal instead.
  final bool? minimal;
  /// Adds the --security flag to yum update. Not supported on all platforms.
  final bool? security;

  /// Creates a new [PatchDeploymentPatchConfigYum].
  /// [excludes] List of packages to exclude from update. These packages will be excluded.
  /// [exclusivePackages] An exclusive list of packages to be updated. These are the only packages that will be updated.
  /// [minimal] Will cause patch to run yum update-minimal instead.
  /// [security] Adds the --security flag to yum update. Not supported on all platforms.
  PatchDeploymentPatchConfigYum({
    this.excludes,
    this.exclusivePackages,
    this.minimal,
    this.security,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'exclusivePackages': ?exclusivePackages,
      'minimal': ?minimal,
      'security': ?security,
    };
  }

  factory PatchDeploymentPatchConfigYum.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigYum(
      excludes: map['excludes'] == null ? null : (map['excludes'] as List).cast<String>(),
      exclusivePackages: map['exclusivePackages'] == null ? null : (map['exclusivePackages'] as List).cast<String>(),
      minimal: map['minimal'] == null ? null : map['minimal'] as bool,
      security: map['security'] == null ? null : map['security'] as bool,
    );
  }
}

