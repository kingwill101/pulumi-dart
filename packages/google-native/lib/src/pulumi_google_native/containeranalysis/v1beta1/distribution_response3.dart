// ignore_for_file: unused_element, unnecessary_cast

import 'version_response3.dart';

/// This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.
class DistributionResponse3 {
  /// The CPU architecture for which packages in this distribution channel were built.
  final String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final String cpeUri;

  /// The distribution channel-specific description of this package.
  final String description;

  /// The latest available version of this package in this distribution channel.
  final VersionResponse3 latestVersion;

  /// A freeform string denoting the maintainer of this package.
  final String maintainer;

  /// The distribution channel-specific homepage for this package.
  final String url;

  DistributionResponse3({
    required this.architecture,
    required this.cpeUri,
    required this.description,
    required this.latestVersion,
    required this.maintainer,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['cpeUri'] = cpeUri;
    map['description'] = description;
    map['latestVersion'] = latestVersion.toMap();
    map['maintainer'] = maintainer;
    map['url'] = url;
    return map;
  }

  factory DistributionResponse3.fromMap(Map<String, dynamic> map) {
    return DistributionResponse3(
      architecture: map['architecture'] as String,
      cpeUri: map['cpeUri'] as String,
      description: map['description'] as String,
      latestVersion: VersionResponse3.fromMap(
          (map['latestVersion'] as Map).cast<String, dynamic>()),
      maintainer: map['maintainer'] as String,
      url: map['url'] as String,
    );
  }
}
