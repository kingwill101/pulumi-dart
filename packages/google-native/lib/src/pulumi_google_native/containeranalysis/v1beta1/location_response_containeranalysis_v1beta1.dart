// ignore_for_file: unused_element, unnecessary_cast

import 'version_response_containeranalysis_v1beta1.dart';

/// An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class LocationResponseContaineranalysisV1beta1 {
  /// Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final String cpeUri;

  /// The path from which we gathered that this package/version is installed.
  final String path;

  /// Deprecated. The version installed at this location.
  final VersionResponseContaineranalysisV1beta1 version;

  LocationResponseContaineranalysisV1beta1({
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

  factory LocationResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return LocationResponseContaineranalysisV1beta1(
      cpeUri: map['cpeUri'] as String,
      path: map['path'] as String,
      version: VersionResponseContaineranalysisV1beta1.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
