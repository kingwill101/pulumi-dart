// ignore_for_file: unused_element, unnecessary_cast

import 'version_response_containeranalysis_v1beta1.dart';

/// This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.
class DistributionResponseContaineranalysisV1beta1 {
  /// The CPU architecture for which packages in this distribution channel were built.
  final String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final String cpeUri;

  /// The distribution channel-specific description of this package.
  final String description;

  /// The latest available version of this package in this distribution channel.
  final VersionResponseContaineranalysisV1beta1 latestVersion;

  /// A freeform string denoting the maintainer of this package.
  final String maintainer;

  /// The distribution channel-specific homepage for this package.
  final String url;

  /// Creates a new [DistributionResponseContaineranalysisV1beta1].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [description] The distribution channel-specific description of this package.
  /// [latestVersion] The latest available version of this package in this distribution channel.
  /// [maintainer] A freeform string denoting the maintainer of this package.
  /// [url] The distribution channel-specific homepage for this package.
  DistributionResponseContaineranalysisV1beta1({
    required this.architecture,
    required this.cpeUri,
    required this.description,
    required this.latestVersion,
    required this.maintainer,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'cpeUri': cpeUri,
      'description': description,
      'latestVersion': latestVersion.toMap(),
      'maintainer': maintainer,
      'url': url,
    };
  }

  factory DistributionResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionResponseContaineranalysisV1beta1(
      architecture: map['architecture'] as String,
      cpeUri: map['cpeUri'] as String,
      description: map['description'] as String,
      latestVersion: VersionResponseContaineranalysisV1beta1.fromMap(
        (map['latestVersion'] as Map).cast<String, dynamic>(),
      ),
      maintainer: map['maintainer'] as String,
      url: map['url'] as String,
    );
  }
}
