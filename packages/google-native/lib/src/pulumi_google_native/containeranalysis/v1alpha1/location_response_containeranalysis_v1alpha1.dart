// ignore_for_file: unused_element, unnecessary_cast

import 'version_response_containeranalysis_v1alpha1.dart';

/// An occurrence of a particular package installation found within a system's filesystem. e.g. glibc was found in /var/lib/dpkg/status
class LocationResponseContaineranalysisV1alpha1 {
  /// Deprecated. The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final String cpeUri;

  /// The path from which we gathered that this package/version is installed.
  final String path;

  /// Deprecated. The version installed at this location.
  final VersionResponseContaineranalysisV1alpha1 version;

  LocationResponseContaineranalysisV1alpha1({
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

  factory LocationResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return LocationResponseContaineranalysisV1alpha1(
      cpeUri: map['cpeUri'] as String,
      path: map['path'] as String,
      version: VersionResponseContaineranalysisV1alpha1.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
