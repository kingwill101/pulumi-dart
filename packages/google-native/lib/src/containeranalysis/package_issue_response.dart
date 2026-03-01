// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_file_location_response.dart';
import 'version_response.dart';

/// A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).
class PackageIssueResponse {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  final String affectedCpeUri;

  /// The package this vulnerability was found in.
  final String affectedPackage;

  /// The version of the package that is installed on the resource affected by this vulnerability.
  final VersionResponse affectedVersion;

  /// The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
  final String effectiveSeverity;

  /// The location at which this package was found.
  final List<GrafeasV1FileLocationResponse> fileLocation;

  /// Whether a fix is available for this package.
  final bool fixAvailable;

  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  final String fixedCpeUri;

  /// The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  final String fixedPackage;

  /// The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  final VersionResponse fixedVersion;

  /// The type of package (e.g. OS, MAVEN, GO).
  final String packageType;

  /// Creates a new [PackageIssueResponse].
  /// [affectedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  /// [affectedPackage] The package this vulnerability was found in.
  /// [affectedVersion] The version of the package that is installed on the resource affected by this vulnerability.
  /// [effectiveSeverity] The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
  /// [fileLocation] The location at which this package was found.
  /// [fixAvailable] Whether a fix is available for this package.
  /// [fixedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  /// [fixedPackage] The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  /// [fixedVersion] The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  PackageIssueResponse({
    required this.affectedCpeUri,
    required this.affectedPackage,
    required this.affectedVersion,
    required this.effectiveSeverity,
    required this.fileLocation,
    required this.fixAvailable,
    required this.fixedCpeUri,
    required this.fixedPackage,
    required this.fixedVersion,
    required this.packageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedCpeUri': affectedCpeUri,
      'affectedPackage': affectedPackage,
      'affectedVersion': affectedVersion.toMap(),
      'effectiveSeverity': effectiveSeverity,
      'fileLocation':
          pulumi.Input.encodeList<
            GrafeasV1FileLocationResponse,
            Map<String, dynamic>
          >(fileLocation, (value) => value.toMap()),
      'fixAvailable': fixAvailable,
      'fixedCpeUri': fixedCpeUri,
      'fixedPackage': fixedPackage,
      'fixedVersion': fixedVersion.toMap(),
      'packageType': packageType,
    };
  }

  factory PackageIssueResponse.fromMap(Map<String, dynamic> map) {
    return PackageIssueResponse(
      affectedCpeUri: map['affectedCpeUri'] as String,
      affectedPackage: map['affectedPackage'] as String,
      affectedVersion: VersionResponse.fromMap(
        (map['affectedVersion'] as Map).cast<String, dynamic>(),
      ),
      effectiveSeverity: map['effectiveSeverity'] as String,
      fileLocation: pulumi.Input.decodeList<GrafeasV1FileLocationResponse>(
        map['fileLocation'],
        (value) => GrafeasV1FileLocationResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      fixAvailable: map['fixAvailable'] as bool,
      fixedCpeUri: map['fixedCpeUri'] as String,
      fixedPackage: map['fixedPackage'] as String,
      fixedVersion: VersionResponse.fromMap(
        (map['fixedVersion'] as Map).cast<String, dynamic>(),
      ),
      packageType: map['packageType'] as String,
    );
  }
}
