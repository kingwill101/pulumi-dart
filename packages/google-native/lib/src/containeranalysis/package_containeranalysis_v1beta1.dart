// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest_containeranalysis_v1beta1.dart';
import 'distribution_containeranalysis_v1beta1.dart';
import 'license_containeranalysis_v1beta1.dart';
import 'package_architecture_containeranalysis_v1beta1.dart';
import 'version_containeranalysis_v1beta1.dart';

/// Package represents a particular package version.
class PackageContaineranalysisV1beta1 {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final PackageArchitectureContaineranalysisV1beta1? architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String? cpeUri;

  /// The description of this package.
  final String? description;

  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final List<DigestContaineranalysisV1beta1>? digest;

  /// The various channels by which a package is distributed.
  final List<DistributionContaineranalysisV1beta1>? distribution;

  /// Licenses that have been declared by the authors of the package.
  final LicenseContaineranalysisV1beta1? license;

  /// A freeform text denoting the maintainer of this package.
  final String? maintainer;

  /// Immutable. The name of the package.
  final String name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String? packageType;

  /// The homepage for this package.
  final String? url;

  /// The version of the package.
  final VersionContaineranalysisV1beta1? version;

  /// Creates a new [PackageContaineranalysisV1beta1].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  /// [description] The description of this package.
  /// [digest] Hash value, typically a file digest, that allows unique identification a specific package.
  /// [distribution] The various channels by which a package is distributed.
  /// [license] Licenses that have been declared by the authors of the package.
  /// [maintainer] A freeform text denoting the maintainer of this package.
  /// [name] Immutable. The name of the package.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [url] The homepage for this package.
  /// [version] The version of the package.
  PackageContaineranalysisV1beta1({
    this.architecture,
    this.cpeUri,
    this.description,
    this.digest,
    this.distribution,
    this.license,
    this.maintainer,
    required this.name,
    this.packageType,
    this.url,
    this.version,
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
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = pulumi.Input.encodeList<DigestContaineranalysisV1beta1,
          Map<String, dynamic>>(digestValue, (value) => value.toMap());
    }
    final distributionValue = distribution;
    if (distributionValue != null) {
      map['distribution'] = pulumi.Input.encodeList<
          DistributionContaineranalysisV1beta1,
          Map<String, dynamic>>(distributionValue, (value) => value.toMap());
    }
    final licenseValue = license;
    if (licenseValue != null) {
      map['license'] = licenseValue.toMap();
    }
    final maintainerValue = maintainer;
    if (maintainerValue != null) {
      map['maintainer'] = maintainerValue;
    }
    map['name'] = name;
    final packageTypeValue = packageType;
    if (packageTypeValue != null) {
      map['packageType'] = packageTypeValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue.toMap();
    }
    return map;
  }

  factory PackageContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return PackageContaineranalysisV1beta1(
      architecture: map['architecture'] == null
          ? null
          : PackageArchitectureContaineranalysisV1beta1.fromValue(
              map['architecture'] as String),
      cpeUri: map['cpeUri'] == null ? null : map['cpeUri'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      digest: map['digest'] == null
          ? null
          : pulumi.Input.decodeList<DigestContaineranalysisV1beta1>(
              map['digest'],
              (value) => DigestContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      distribution: map['distribution'] == null
          ? null
          : pulumi.Input.decodeList<DistributionContaineranalysisV1beta1>(
              map['distribution'],
              (value) => DistributionContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      license: map['license'] == null
          ? null
          : LicenseContaineranalysisV1beta1.fromMap(
              (map['license'] as Map).cast<String, dynamic>()),
      maintainer:
          map['maintainer'] == null ? null : map['maintainer'] as String,
      name: map['name'] as String,
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      version: map['version'] == null
          ? null
          : VersionContaineranalysisV1beta1.fromMap(
              (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
