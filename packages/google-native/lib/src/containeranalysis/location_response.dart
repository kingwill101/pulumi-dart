// ignore_for_file: unused_element, unnecessary_cast

import 'version_response.dart';

/// An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class LocationResponse {
  /// Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  final String cpeUri;

  /// The path from which we gathered that this package/version is installed.
  final String path;

  /// Deprecated. The version installed at this location.
  final VersionResponse version;

  /// Creates a new [LocationResponse].
  /// [cpeUri] Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  /// [path] The path from which we gathered that this package/version is installed.
  /// [version] Deprecated. The version installed at this location.
  LocationResponse({
    required this.cpeUri,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'path': path,
      'version': version.toMap(),
    };
  }

  factory LocationResponse.fromMap(Map<String, dynamic> map) {
    return LocationResponse(
      cpeUri: map['cpeUri'] as String,
      path: map['path'] as String,
      version: VersionResponse.fromMap(
        (map['version'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
