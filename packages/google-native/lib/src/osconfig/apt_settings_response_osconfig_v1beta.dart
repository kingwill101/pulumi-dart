// ignore_for_file: unused_element, unnecessary_cast


/// Apt patching is completed by executing `apt-get update && apt-get upgrade`. Additional options can be set to control how this is executed.
class AptSettingsResponseOsconfigV1beta {
  /// List of packages to exclude from update. These packages will be excluded
  final List<String> excludes;
  /// An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.
  final List<String> exclusivePackages;
  /// By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
  final String type;

  /// Creates a new [AptSettingsResponseOsconfigV1beta].
  /// [excludes] List of packages to exclude from update. These packages will be excluded
  /// [exclusivePackages] An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.
  /// [type] By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
  AptSettingsResponseOsconfigV1beta({
    required this.excludes,
    required this.exclusivePackages,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': excludes,
      'exclusivePackages': exclusivePackages,
      'type': type,
    };
  }

  factory AptSettingsResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return AptSettingsResponseOsconfigV1beta(
      excludes: (map['excludes'] as List).cast<String>(),
      exclusivePackages: (map['exclusivePackages'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

