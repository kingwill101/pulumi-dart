// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [PackageNoteResponse].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  /// [description] The description of this package.
  /// [digest] Hash value, typically a file digest, that allows unique identification a specific package.
  /// [distribution] Deprecated. The various channels by which a package is distributed.
  /// [license] Licenses that have been declared by the authors of the package.
  /// [maintainer] A freeform text denoting the maintainer of this package.
  /// [name] Immutable. The name of the package.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [url] The homepage for this package.
  /// [version] The version of the package.
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
    return <String, dynamic>{
      'architecture': architecture,
      'cpeUri': cpeUri,
      'description': description,
      'digest': pulumi.Input.encodeList<DigestResponse, Map<String, dynamic>>(digest, (value) => value.toMap()),
      'distribution': pulumi.Input.encodeList<DistributionResponse, Map<String, dynamic>>(distribution, (value) => value.toMap()),
      'license': license.toMap(),
      'maintainer': maintainer,
      'name': name,
      'packageType': packageType,
      'url': url,
      'version': version.toMap(),
    };
  }

  factory PackageNoteResponse.fromMap(Map<String, dynamic> map) {
    return PackageNoteResponse(
      architecture: map['architecture'] as String,
      cpeUri: map['cpeUri'] as String,
      description: map['description'] as String,
      digest: pulumi.Input.decodeList<DigestResponse>(map['digest'], (value) => DigestResponse.fromMap((value as Map).cast<String, dynamic>())),
      distribution: pulumi.Input.decodeList<DistributionResponse>(map['distribution'], (value) => DistributionResponse.fromMap((value as Map).cast<String, dynamic>())),
      license: LicenseResponse.fromMap((map['license'] as Map).cast<String, dynamic>()),
      maintainer: map['maintainer'] as String,
      name: map['name'] as String,
      packageType: map['packageType'] as String,
      url: map['url'] as String,
      version: VersionResponse.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}

