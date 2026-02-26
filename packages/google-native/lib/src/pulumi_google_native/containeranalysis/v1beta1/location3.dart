// ignore_for_file: unused_element, unnecessary_cast

import 'version3.dart';

/// An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class Location3 {
  /// Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final String? cpeUri;

  /// The path from which we gathered that this package/version is installed.
  final String? path;

  /// Deprecated. The version installed at this location.
  final Version3? version;

  Location3({
    this.cpeUri,
    this.path,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpeUriValue = cpeUri;
    if (cpeUriValue != null) {
      map['cpeUri'] = cpeUriValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue.toMap();
    }
    return map;
  }

  factory Location3.fromMap(Map<String, dynamic> map) {
    return Location3(
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      version: map['version'] == null
          ? null
          : Version3.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
