// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest_response_containeranalysis_v1alpha1.dart';
import 'distribution_response_containeranalysis_v1alpha1.dart';
import 'license_response_containeranalysis_v1alpha1.dart';
import 'version_response_containeranalysis_v1alpha1.dart';

/// This represents a particular package that is distributed over various channels. e.g. glibc (aka libc6) is distributed by many, at various versions.
class PackageResponse {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String cpeUri;

  /// The description of this package.
  final String description;

  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final List<DigestResponseContaineranalysisV1alpha1> digest;

  /// The various channels by which a package is distributed.
  final List<DistributionResponseContaineranalysisV1alpha1> distribution;

  /// Licenses that have been declared by the authors of the package.
  final LicenseResponseContaineranalysisV1alpha1 license;

  /// A freeform text denoting the maintainer of this package.
  final String maintainer;

  /// The name of the package.
  final String name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String packageType;

  /// The homepage for this package.
  final String url;

  /// The version of the package.
  final VersionResponseContaineranalysisV1alpha1 version;

  PackageResponse({
    required this.architecture,
    required this.cpeUri,
    required this.description,
    required this.digest,
    required this.distribution,
    required this.license,
    required this.maintainer,
    required this.name,
    required this.packageType,
    required this.url,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['cpeUri'] = cpeUri;
    map['description'] = description;
    map['digest'] = pulumi.Input.encodeList<
        DigestResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(digest, (value) => value.toMap());
    map['distribution'] = pulumi.Input.encodeList<
        DistributionResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(distribution, (value) => value.toMap());
    map['license'] = license.toMap();
    map['maintainer'] = maintainer;
    map['name'] = name;
    map['packageType'] = packageType;
    map['url'] = url;
    map['version'] = version.toMap();
    return map;
  }

  factory PackageResponse.fromMap(Map<String, dynamic> map) {
    return PackageResponse(
      architecture: map['architecture'] as String,
      cpeUri: map['cpeUri'] as String,
      description: map['description'] as String,
      digest: pulumi.Input.decodeList<DigestResponseContaineranalysisV1alpha1>(
          map['digest'],
          (value) => DigestResponseContaineranalysisV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>())),
      distribution: pulumi.Input.decodeList<
              DistributionResponseContaineranalysisV1alpha1>(
          map['distribution'],
          (value) => DistributionResponseContaineranalysisV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>())),
      license: LicenseResponseContaineranalysisV1alpha1.fromMap(
          (map['license'] as Map).cast<String, dynamic>()),
      maintainer: map['maintainer'] as String,
      name: map['name'] as String,
      packageType: map['packageType'] as String,
      url: map['url'] as String,
      version: VersionResponseContaineranalysisV1alpha1.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
