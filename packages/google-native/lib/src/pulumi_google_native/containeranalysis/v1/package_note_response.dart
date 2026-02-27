// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'digest_response.dart';
import 'distribution_response.dart';
import 'license_response.dart';
import 'version_response.dart';

/// PackageNote represents a particular package version.
class PackageNoteResponse {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String cpeUri;

  /// The description of this package.
  final String description;

  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final List<DigestResponse> digest;

  /// Deprecated. The various channels by which a package is distributed.
  final List<DistributionResponse> distribution;

  /// Licenses that have been declared by the authors of the package.
  final LicenseResponse license;

  /// A freeform text denoting the maintainer of this package.
  final String maintainer;

  /// Immutable. The name of the package.
  final String name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String packageType;

  /// The homepage for this package.
  final String url;

  /// The version of the package.
  final VersionResponse version;

  PackageNoteResponse({
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
    map['digest'] = Input.encodeList<DigestResponse, Map<String, dynamic>>(
        digest, (value) => value.toMap());
    map['distribution'] =
        Input.encodeList<DistributionResponse, Map<String, dynamic>>(
            distribution, (value) => value.toMap());
    map['license'] = license.toMap();
    map['maintainer'] = maintainer;
    map['name'] = name;
    map['packageType'] = packageType;
    map['url'] = url;
    map['version'] = version.toMap();
    return map;
  }

  factory PackageNoteResponse.fromMap(Map<String, dynamic> map) {
    return PackageNoteResponse(
      architecture: map['architecture'] as String,
      cpeUri: map['cpeUri'] as String,
      description: map['description'] as String,
      digest: Input.decodeList<DigestResponse>(
          map['digest'],
          (value) =>
              DigestResponse.fromMap((value as Map).cast<String, dynamic>())),
      distribution: Input.decodeList<DistributionResponse>(
          map['distribution'],
          (value) => DistributionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      license: LicenseResponse.fromMap(
          (map['license'] as Map).cast<String, dynamic>()),
      maintainer: map['maintainer'] as String,
      name: map['name'] as String,
      packageType: map['packageType'] as String,
      url: map['url'] as String,
      version: VersionResponse.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
