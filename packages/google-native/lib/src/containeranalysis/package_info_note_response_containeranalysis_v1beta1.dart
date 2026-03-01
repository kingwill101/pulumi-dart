// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_ref_response_containeranalysis_v1beta1.dart';
import 'license_response_containeranalysis_v1beta1.dart';

/// PackageInfoNote represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoNoteResponseContaineranalysisV1beta1 {
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
  final List<ExternalRefResponseContaineranalysisV1beta1> externalRefs;

  /// Contain the license the SPDX file creator has concluded as governing the This field is to contain a list of all licenses found in the package. The relationship between licenses (i.e., conjunctive, disjunctive) is not specified in this field – it is simply a listing of all licenses found
  final List<String> filesLicenseInfo;

  /// Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  final String homePage;

  /// List the licenses that have been declared by the authors of the package
  final LicenseResponseContaineranalysisV1beta1 licenseDeclared;

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

  /// Creates a new [PackageInfoNoteResponseContaineranalysisV1beta1].
  /// [analyzed] Indicates whether the file content of this package has been available for or subjected to analysis when creating the SPDX document
  /// [attribution] A place for the SPDX data creator to record, at the package level, acknowledgements that may be needed to be communicated in some contexts
  /// [checksum] Provide an independently reproducible mechanism that permits unique identification of a specific package that correlates to the data in this SPDX file
  /// [copyright] Identify the copyright holders of the package, as well as any dates present
  /// [detailedDescription] A more detailed description of the package
  /// [downloadLocation] This section identifies the download Universal Resource Locator (URL), or a specific location within a version control system (VCS) for the package at the time that the SPDX file was created
  /// [externalRefs] ExternalRef
  /// [filesLicenseInfo] Contain the license the SPDX file creator has concluded as governing the This field is to contain a list of all licenses found in the package. The relationship between licenses (i.e., conjunctive, disjunctive) is not specified in this field – it is simply a listing of all licenses found
  /// [homePage] Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  /// [licenseDeclared] List the licenses that have been declared by the authors of the package
  /// [originator] If the package identified in the SPDX file originated from a different person or organization than identified as Package Supplier, this field identifies from where or whom the package originally came
  /// [packageType] The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  /// [summaryDescription] A short description of the package
  /// [supplier] Identify the actual distribution source for the package/directory identified in the SPDX file
  /// [title] Identify the full name of the package as given by the Package Originator
  /// [verificationCode] This field provides an independently reproducible mechanism identifying specific contents of a package based on the actual files (except the SPDX file itself, if it is included in the package) that make up each package and that correlates to the data in this SPDX file
  /// [version] Identify the version of the package
  PackageInfoNoteResponseContaineranalysisV1beta1({
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
    return <String, dynamic>{
      'analyzed': analyzed,
      'attribution': attribution,
      'checksum': checksum,
      'copyright': copyright,
      'detailedDescription': detailedDescription,
      'downloadLocation': downloadLocation,
      'externalRefs':
          pulumi.Input.encodeList<
            ExternalRefResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(externalRefs, (value) => value.toMap()),
      'filesLicenseInfo': filesLicenseInfo,
      'homePage': homePage,
      'licenseDeclared': licenseDeclared.toMap(),
      'originator': originator,
      'packageType': packageType,
      'summaryDescription': summaryDescription,
      'supplier': supplier,
      'title': title,
      'verificationCode': verificationCode,
      'version': version,
    };
  }

  factory PackageInfoNoteResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PackageInfoNoteResponseContaineranalysisV1beta1(
      analyzed: map['analyzed'] as bool,
      attribution: map['attribution'] as String,
      checksum: map['checksum'] as String,
      copyright: map['copyright'] as String,
      detailedDescription: map['detailedDescription'] as String,
      downloadLocation: map['downloadLocation'] as String,
      externalRefs:
          pulumi.Input.decodeList<ExternalRefResponseContaineranalysisV1beta1>(
            map['externalRefs'],
            (value) => ExternalRefResponseContaineranalysisV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      filesLicenseInfo: (map['filesLicenseInfo'] as List).cast<String>(),
      homePage: map['homePage'] as String,
      licenseDeclared: LicenseResponseContaineranalysisV1beta1.fromMap(
        (map['licenseDeclared'] as Map).cast<String, dynamic>(),
      ),
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
