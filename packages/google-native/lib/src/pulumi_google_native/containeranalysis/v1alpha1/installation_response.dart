// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_response_containeranalysis_v1alpha1.dart';
import 'location_response_containeranalysis_v1alpha1.dart';
import 'version_response_containeranalysis_v1alpha1.dart';

/// This represents how a particular software package may be installed on a system.
class InstallationResponse {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final String cpeUri;

  /// Licenses that have been declared by the authors of the package.
  final LicenseResponseContaineranalysisV1alpha1 license;

  /// All of the places within the filesystem versions of this package have been found.
  final List<LocationResponseContaineranalysisV1alpha1> location;

  /// The name of the installed package.
  final String name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final String packageType;

  /// The version of the package.
  final VersionResponseContaineranalysisV1alpha1 version;

  InstallationResponse({
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
    map['location'] = pulumi.Input.encodeList<
        LocationResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(location, (value) => value.toMap());
    map['name'] = name;
    map['packageType'] = packageType;
    map['version'] = version.toMap();
    return map;
  }

  factory InstallationResponse.fromMap(Map<String, dynamic> map) {
    return InstallationResponse(
      architecture: map['architecture'] as String,
      cpeUri: map['cpeUri'] as String,
      license: LicenseResponseContaineranalysisV1alpha1.fromMap(
          (map['license'] as Map).cast<String, dynamic>()),
      location:
          pulumi.Input.decodeList<LocationResponseContaineranalysisV1alpha1>(
              map['location'],
              (value) => LocationResponseContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      packageType: map['packageType'] as String,
      version: VersionResponseContaineranalysisV1alpha1.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
