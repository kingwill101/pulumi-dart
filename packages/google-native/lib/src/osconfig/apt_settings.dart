// ignore_for_file: unused_element, unnecessary_cast

import 'apt_settings_type.dart';

/// Apt patching is completed by executing `apt-get update && apt-get upgrade`. Additional options can be set to control how this is executed.
class AptSettings {
  /// List of packages to exclude from update. These packages will be excluded
  final List<String>? excludes;
  /// An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.
  final List<String>? exclusivePackages;
  /// By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
  final AptSettingsType? type;

  /// Creates a new [AptSettings].
  /// [excludes] List of packages to exclude from update. These packages will be excluded
  /// [exclusivePackages] An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.
  /// [type] By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
  AptSettings({
    this.excludes,
    this.exclusivePackages,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'exclusivePackages': ?exclusivePackages,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory AptSettings.fromMap(Map<String, dynamic> map) {
    return AptSettings(
      excludes: map['excludes'] == null ? null : (map['excludes'] as List).cast<String>(),
      exclusivePackages: map['exclusivePackages'] == null ? null : (map['exclusivePackages'] as List).cast<String>(),
      type: map['type'] == null ? null : AptSettingsType.fromValue(map['type'] as String),
    );
  }
}

