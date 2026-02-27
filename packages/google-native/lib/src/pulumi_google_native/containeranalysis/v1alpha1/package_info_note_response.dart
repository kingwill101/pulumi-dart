// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_ref_response.dart';
import 'license_response_containeranalysis_v1alpha1.dart';

/// PackageInfoNote represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoNoteResponse {
  /// Indicates whether the file content of this package has been available for or subjected to analysis when creating the SPDX document
  final bool analyzed;

  /// A place for the SPDX data creator to record, at the package level, acknowledgements that may be needed to be communicated in some contexts
  final String attribution;

  /// Provide an independently reproducible mechanism that permits unique identification of a specific package that correlates to the data in this SPDX file
  final String checksum;

  /// Identify the copyright holders of the package, as well as any dates present
  final String copyright;

  /// A more detailed description of the package
  final String detailedDescription;

  /// This section identifies the download Universal Resource Locator (URL), or a specific location within a version control system (VCS) for the package at the time that the SPDX file was created
  final String downloadLocation;

  /// ExternalRef
  final List<ExternalRefResponse> externalRefs;

  /// Contain the license the SPDX file creator has concluded as governing the This field is to contain a list of all licenses found in the package. The relationship between licenses (i.e., conjunctive, disjunctive) is not specified in this field – it is simply a listing of all licenses found
  final List<String> filesLicenseInfo;

  /// Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  final String homePage;

  /// List the licenses that have been declared by the authors of the package
  final LicenseResponseContaineranalysisV1alpha1 licenseDeclared;

  /// If the package identified in the SPDX file originated from a different person or organization than identified as Package Supplier, this field identifies from where or whom the package originally came
  final String originator;

  /// The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  final String packageType;

  /// A short description of the package
  final String summaryDescription;

  /// Identify the actual distribution source for the package/directory identified in the SPDX file
  final String supplier;

  /// Identify the full name of the package as given by the Package Originator
  final String title;

  /// This field provides an independently reproducible mechanism identifying specific contents of a package based on the actual files (except the SPDX file itself, if it is included in the package) that make up each package and that correlates to the data in this SPDX file
  final String verificationCode;

  /// Identify the version of the package
  final String version;

  PackageInfoNoteResponse({
    required this.analyzed,
    required this.attribution,
    required this.checksum,
    required this.copyright,
    required this.detailedDescription,
    required this.downloadLocation,
    required this.externalRefs,
    required this.filesLicenseInfo,
    required this.homePage,
    required this.licenseDeclared,
    required this.originator,
    required this.packageType,
    required this.summaryDescription,
    required this.supplier,
    required this.title,
    required this.verificationCode,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analyzed'] = analyzed;
    map['attribution'] = attribution;
    map['checksum'] = checksum;
    map['copyright'] = copyright;
    map['detailedDescription'] = detailedDescription;
    map['downloadLocation'] = downloadLocation;
    map['externalRefs'] =
        pulumi.Input.encodeList<ExternalRefResponse, Map<String, dynamic>>(
            externalRefs, (value) => value.toMap());
    map['filesLicenseInfo'] = filesLicenseInfo;
    map['homePage'] = homePage;
    map['licenseDeclared'] = licenseDeclared.toMap();
    map['originator'] = originator;
    map['packageType'] = packageType;
    map['summaryDescription'] = summaryDescription;
    map['supplier'] = supplier;
    map['title'] = title;
    map['verificationCode'] = verificationCode;
    map['version'] = version;
    return map;
  }

  factory PackageInfoNoteResponse.fromMap(Map<String, dynamic> map) {
    return PackageInfoNoteResponse(
      analyzed: map['analyzed'] as bool,
      attribution: map['attribution'] as String,
      checksum: map['checksum'] as String,
      copyright: map['copyright'] as String,
      detailedDescription: map['detailedDescription'] as String,
      downloadLocation: map['downloadLocation'] as String,
      externalRefs: pulumi.Input.decodeList<ExternalRefResponse>(
          map['externalRefs'],
          (value) => ExternalRefResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      filesLicenseInfo: (map['filesLicenseInfo'] as List).cast<String>(),
      homePage: map['homePage'] as String,
      licenseDeclared: LicenseResponseContaineranalysisV1alpha1.fromMap(
          (map['licenseDeclared'] as Map).cast<String, dynamic>()),
      originator: map['originator'] as String,
      packageType: map['packageType'] as String,
      summaryDescription: map['summaryDescription'] as String,
      supplier: map['supplier'] as String,
      title: map['title'] as String,
      verificationCode: map['verificationCode'] as String,
      version: map['version'] as String,
    );
  }
}
