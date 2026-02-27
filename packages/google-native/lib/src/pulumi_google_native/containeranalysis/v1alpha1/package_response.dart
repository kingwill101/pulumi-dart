// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'digest_response2.dart';
import 'distribution_response2.dart';
import 'license_response2.dart';
import 'version_response2.dart';

/// This represents a particular package that is distributed over various channels. e.g. glibc (aka libc6) is distributed by many, at various versions.
class PackageResponse {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String cpeUri;

  /// The description of this package.
  final String description;

  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final List<DigestResponse2> digest;

  /// The various channels by which a package is distributed.
  final List<DistributionResponse2> distribution;

  /// Licenses that have been declared by the authors of the package.
  final LicenseResponse2 license;

  /// A freeform text denoting the maintainer of this package.
  final String maintainer;

  /// The name of the package.
  final String name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String packageType;

  /// The homepage for this package.
  final String url;

  /// The version of the package.
  final VersionResponse2 version;

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
    map['digest'] = Input.encodeList<DigestResponse2, Map<String, dynamic>>(
        digest, (value) => value.toMap());
    map['distribution'] =
        Input.encodeList<DistributionResponse2, Map<String, dynamic>>(
            distribution, (value) => value.toMap());
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
      digest: Input.decodeList<DigestResponse2>(
          map['digest'],
          (value) =>
              DigestResponse2.fromMap((value as Map).cast<String, dynamic>())),
      distribution: Input.decodeList<DistributionResponse2>(
          map['distribution'],
          (value) => DistributionResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      license: LicenseResponse2.fromMap(
          (map['license'] as Map).cast<String, dynamic>()),
      maintainer: map['maintainer'] as String,
      name: map['name'] as String,
      packageType: map['packageType'] as String,
      url: map['url'] as String,
      version: VersionResponse2.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
