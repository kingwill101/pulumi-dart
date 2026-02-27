// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_architecture_containeranalysis_v1alpha1.dart';
import 'version_containeranalysis_v1alpha1.dart';

/// This represents a particular channel of distribution for a given package. e.g. Debian's jessie-backports dpkg mirror
class DistributionContaineranalysisV1alpha1 {
  /// The CPU architecture for which packages in this distribution channel were built
  final DistributionArchitectureContaineranalysisV1alpha1? architecture;

  /// The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final String? cpeUri;

  /// The distribution channel-specific description of this package.
  final String? description;

  /// The latest available version of this package in this distribution channel.
  final VersionContaineranalysisV1alpha1? latestVersion;

  /// A freeform string denoting the maintainer of this package.
  final String? maintainer;

  /// The distribution channel-specific homepage for this package.
  final String? url;

  DistributionContaineranalysisV1alpha1({
    this.architecture,
    this.cpeUri,
    this.description,
    this.latestVersion,
    this.maintainer,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = architectureValue.value;
    }
    final cpeUriValue = cpeUri;
    if (cpeUriValue != null) {
      map['cpeUri'] = cpeUriValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final latestVersionValue = latestVersion;
    if (latestVersionValue != null) {
      map['latestVersion'] = latestVersionValue.toMap();
    }
    final maintainerValue = maintainer;
    if (maintainerValue != null) {
      map['maintainer'] = maintainerValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory DistributionContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DistributionContaineranalysisV1alpha1(
      architecture: map['architecture'] == null
          ? null
          : DistributionArchitectureContaineranalysisV1alpha1.fromValue(
              map['architecture'] as String),
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      latestVersion: map['latestVersion'] == null
          ? null
          : VersionContaineranalysisV1alpha1.fromMap(
              (map['latestVersion'] as Map).cast<String, dynamic>()),
      maintainer:
          map['maintainer'] == null ? null : map['maintainer'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
