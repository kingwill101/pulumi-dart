// ignore_for_file: unused_element, unnecessary_cast

import 'version_response3.dart';

/// An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class LocationResponse3 {
  /// Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final String cpeUri;

  /// The path from which we gathered that this package/version is installed.
  final String path;

  /// Deprecated. The version installed at this location.
  final VersionResponse3 version;

  LocationResponse3({
    required this.cpeUri,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpeUri'] = cpeUri;
    map['path'] = path;
    map['version'] = version.toMap();
    return map;
  }

  factory LocationResponse3.fromMap(Map<String, dynamic> map) {
    return LocationResponse3(
      cpeUri: map['cpeUri'] as String,
      path: map['path'] as String,
      version: VersionResponse3.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
