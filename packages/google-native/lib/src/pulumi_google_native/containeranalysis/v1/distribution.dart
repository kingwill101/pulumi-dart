// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_architecture.dart';
import 'version.dart';

/// This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.
class Distribution {
  /// The CPU architecture for which packages in this distribution channel were built.
  final DistributionArchitecture? architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final String cpeUri;

  /// The distribution channel-specific description of this package.
  final String? description;

  /// The latest available version of this package in this distribution channel.
  final Version? latestVersion;

  /// A freeform string denoting the maintainer of this package.
  final String? maintainer;

  /// The distribution channel-specific homepage for this package.
  final String? url;

  Distribution({
    this.architecture,
    required this.cpeUri,
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
    map['cpeUri'] = cpeUri;
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

  factory Distribution.fromMap(Map<String, dynamic> map) {
    return Distribution(
      architecture: map['architecture'] == null
          ? null
          : DistributionArchitecture.fromValue(map['architecture'] as String),
      cpeUri: map['cpeUri'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      latestVersion: map['latestVersion'] == null
          ? null
          : Version.fromMap(
              (map['latestVersion'] as Map).cast<String, dynamic>()),
      maintainer:
          map['maintainer'] == null ? null : map['maintainer'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
