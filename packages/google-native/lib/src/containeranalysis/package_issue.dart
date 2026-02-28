// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_file_location.dart';
import 'version.dart';

/// A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).
class PackageIssue {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  final String affectedCpeUri;

  /// The package this vulnerability was found in.
  final String affectedPackage;

  /// The version of the package that is installed on the resource affected by this vulnerability.
  final Version affectedVersion;

  /// The location at which this package was found.
  final List<GrafeasV1FileLocation>? fileLocation;

  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  final String? fixedCpeUri;

  /// The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  final String? fixedPackage;

  /// The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  final Version fixedVersion;

  /// The type of package (e.g. OS, MAVEN, GO).
  final String? packageType;

  /// Creates a new [PackageIssue].
  /// [affectedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  /// [affectedPackage] The package this vulnerability was found in.
  /// [affectedVersion] The version of the package that is installed on the resource affected by this vulnerability.
  /// [fileLocation] The location at which this package was found.
  /// [fixedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  /// [fixedPackage] The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  /// [fixedVersion] The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  PackageIssue({
    required this.affectedCpeUri,
    required this.affectedPackage,
    required this.affectedVersion,
    this.fileLocation,
    this.fixedCpeUri,
    this.fixedPackage,
    required this.fixedVersion,
    this.packageType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['affectedCpeUri'] = affectedCpeUri;
    map['affectedPackage'] = affectedPackage;
    map['affectedVersion'] = affectedVersion.toMap();
    final fileLocationValue = fileLocation;
    if (fileLocationValue != null) {
      map['fileLocation'] =
          pulumi.Input.encodeList<GrafeasV1FileLocation, Map<String, dynamic>>(
              fileLocationValue, (value) => value.toMap());
    }
    final fixedCpeUriValue = fixedCpeUri;
    if (fixedCpeUriValue != null) {
      map['fixedCpeUri'] = fixedCpeUriValue;
    }
    final fixedPackageValue = fixedPackage;
    if (fixedPackageValue != null) {
      map['fixedPackage'] = fixedPackageValue;
    }
    map['fixedVersion'] = fixedVersion.toMap();
    final packageTypeValue = packageType;
    if (packageTypeValue != null) {
      map['packageType'] = packageTypeValue;
    }
    return map;
  }

  factory PackageIssue.fromMap(Map<String, dynamic> map) {
    return PackageIssue(
      affectedCpeUri: map['affectedCpeUri'] as String,
      affectedPackage: map['affectedPackage'] as String,
      affectedVersion: Version.fromMap(
          (map['affectedVersion'] as Map).cast<String, dynamic>()),
      fileLocation: map['fileLocation'] == null
          ? null
          : pulumi.Input.decodeList<GrafeasV1FileLocation>(
              map['fileLocation'],
              (value) => GrafeasV1FileLocation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fixedCpeUri:
          map['fixedCpeUri'] == null ? null : map['fixedCpeUri'] as String,
      fixedPackage:
          map['fixedPackage'] == null ? null : map['fixedPackage'] as String,
      fixedVersion:
          Version.fromMap((map['fixedVersion'] as Map).cast<String, dynamic>()),
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
    );
  }
}
