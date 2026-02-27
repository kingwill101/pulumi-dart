// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'license_response3.dart';
import 'location_response3.dart';
import 'version_response3.dart';

/// This represents how a particular software package may be installed on a system.
class InstallationResponse2 {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String cpeUri;

  /// Licenses that have been declared by the authors of the package.
  final LicenseResponse3 license;

  /// All of the places within the filesystem versions of this package have been found.
  final List<LocationResponse3> location;

  /// The name of the installed package.
  final String name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String packageType;

  /// The version of the package.
  final VersionResponse3 version;

  InstallationResponse2({
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
    map['location'] = Input.encodeList<LocationResponse3, Map<String, dynamic>>(
        location, (value) => value.toMap());
    map['name'] = name;
    map['packageType'] = packageType;
    map['version'] = version.toMap();
    return map;
  }

  factory InstallationResponse2.fromMap(Map<String, dynamic> map) {
    return InstallationResponse2(
      architecture: map['architecture'] as String,
      cpeUri: map['cpeUri'] as String,
      license: LicenseResponse3.fromMap(
          (map['license'] as Map).cast<String, dynamic>()),
      location: Input.decodeList<LocationResponse3>(
          map['location'],
          (value) => LocationResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      packageType: map['packageType'] as String,
      version: VersionResponse3.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
