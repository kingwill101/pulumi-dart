// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'license_response.dart';
import 'location_response.dart';
import 'version_response.dart';

/// Details on how a particular software package was installed on a system.
class PackageOccurrenceResponse {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String cpeUri;

  /// Licenses that have been declared by the authors of the package.
  final LicenseResponse license;

  /// All of the places within the filesystem versions of this package have been found.
  final List<LocationResponse> location;

  /// The name of the installed package.
  final String name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String packageType;

  /// The version of the package.
  final VersionResponse version;

  PackageOccurrenceResponse({
    required this.architecture,
    required this.cpeUri,
    required this.license,
    required this.location,
    required this.name,
    required this.packageType,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['cpeUri'] = cpeUri;
    map['license'] = license.toMap();
    map['location'] = Input.encodeList<LocationResponse, Map<String, dynamic>>(
        location, (value) => value.toMap());
    map['name'] = name;
    map['packageType'] = packageType;
    map['version'] = version.toMap();
    return map;
  }

  factory PackageOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return PackageOccurrenceResponse(
      architecture: map['architecture'] as String,
      cpeUri: map['cpeUri'] as String,
      license: LicenseResponse.fromMap(
          (map['license'] as Map).cast<String, dynamic>()),
      location: Input.decodeList<LocationResponse>(
          map['location'],
          (value) =>
              LocationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      packageType: map['packageType'] as String,
      version: VersionResponse.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
