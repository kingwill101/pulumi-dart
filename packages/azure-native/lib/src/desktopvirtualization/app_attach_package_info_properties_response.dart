// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'msix_package_applications_response.dart';
import 'msix_package_dependencies_response.dart';

/// Schema for Import Package Information properties.
class AppAttachPackageInfoPropertiesResponse {
  /// Date certificate expires, found in the appxmanifest.xml.
  final String? certificateExpiry;
  /// Certificate name found in the appxmanifest.xml.
  final String? certificateName;
  /// User friendly Name to be displayed in the portal.
  final String? displayName;
  /// VHD/CIM image path on Network Share.
  final String? imagePath;
  /// Make this version of the package the active one across the hostpool.
  final bool? isActive;
  /// Is package timestamped so it can ignore the certificate expiry date
  final String? isPackageTimestamped;
  /// Specifies how to register Package in feed.
  final bool? isRegularRegistration;
  /// Date Package was last updated, found in the appxmanifest.xml.
  final String? lastUpdated;
  /// Alias of App Attach Package. Assigned at import time
  final String? packageAlias;
  /// List of package applications.
  final List<MsixPackageApplicationsResponse>? packageApplications;
  /// List of package dependencies.
  final List<MsixPackageDependenciesResponse>? packageDependencies;
  /// Package Family Name from appxmanifest.xml. Contains Package Name and Publisher name.
  final String? packageFamilyName;
  /// Package Full Name from appxmanifest.xml.
  final String? packageFullName;
  /// Package Name from appxmanifest.xml.
  final String? packageName;
  /// Relative Path to the package inside the image.
  final String? packageRelativePath;
  /// Package version found in the appxmanifest.xml.
  final String? version;

  /// Creates a new [AppAttachPackageInfoPropertiesResponse].
  /// [certificateExpiry] Date certificate expires, found in the appxmanifest.xml.
  /// [certificateName] Certificate name found in the appxmanifest.xml.
  /// [displayName] User friendly Name to be displayed in the portal.
  /// [imagePath] VHD/CIM image path on Network Share.
  /// [isActive] Make this version of the package the active one across the hostpool.
  /// [isPackageTimestamped] Is package timestamped so it can ignore the certificate expiry date
  /// [isRegularRegistration] Specifies how to register Package in feed.
  /// [lastUpdated] Date Package was last updated, found in the appxmanifest.xml.
  /// [packageAlias] Alias of App Attach Package. Assigned at import time
  /// [packageApplications] List of package applications.
  /// [packageDependencies] List of package dependencies.
  /// [packageFamilyName] Package Family Name from appxmanifest.xml. Contains Package Name and Publisher name.
  /// [packageFullName] Package Full Name from appxmanifest.xml.
  /// [packageName] Package Name from appxmanifest.xml.
  /// [packageRelativePath] Relative Path to the package inside the image.
  /// [version] Package version found in the appxmanifest.xml.
  AppAttachPackageInfoPropertiesResponse({
    this.certificateExpiry,
    this.certificateName,
    this.displayName,
    this.imagePath,
    this.isActive,
    this.isPackageTimestamped,
    this.isRegularRegistration,
    this.lastUpdated,
    this.packageAlias,
    this.packageApplications,
    this.packageDependencies,
    this.packageFamilyName,
    this.packageFullName,
    this.packageName,
    this.packageRelativePath,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateExpiry': ?certificateExpiry,
      'certificateName': ?certificateName,
      'displayName': ?displayName,
      'imagePath': ?imagePath,
      'isActive': ?isActive,
      'isPackageTimestamped': ?isPackageTimestamped,
      'isRegularRegistration': ?isRegularRegistration,
      'lastUpdated': ?lastUpdated,
      'packageAlias': ?packageAlias,
      'packageApplications': ?packageApplications == null ? null : pulumi.Input.encodeList<MsixPackageApplicationsResponse, Map<String, dynamic>>(packageApplications!, (value) => value.toMap()),
      'packageDependencies': ?packageDependencies == null ? null : pulumi.Input.encodeList<MsixPackageDependenciesResponse, Map<String, dynamic>>(packageDependencies!, (value) => value.toMap()),
      'packageFamilyName': ?packageFamilyName,
      'packageFullName': ?packageFullName,
      'packageName': ?packageName,
      'packageRelativePath': ?packageRelativePath,
      'version': ?version,
    };
  }

  factory AppAttachPackageInfoPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AppAttachPackageInfoPropertiesResponse(
      certificateExpiry: map['certificateExpiry'] == null ? null : map['certificateExpiry'] as String,
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      imagePath: map['imagePath'] == null ? null : map['imagePath'] as String,
      isActive: map['isActive'] == null ? null : map['isActive'] as bool,
      isPackageTimestamped: map['isPackageTimestamped'] == null ? null : map['isPackageTimestamped'] as String,
      isRegularRegistration: map['isRegularRegistration'] == null ? null : map['isRegularRegistration'] as bool,
      lastUpdated: map['lastUpdated'] == null ? null : map['lastUpdated'] as String,
      packageAlias: map['packageAlias'] == null ? null : map['packageAlias'] as String,
      packageApplications: map['packageApplications'] == null ? null : pulumi.Input.decodeList<MsixPackageApplicationsResponse>(map['packageApplications'], (value) => MsixPackageApplicationsResponse.fromMap((value as Map).cast<String, dynamic>())),
      packageDependencies: map['packageDependencies'] == null ? null : pulumi.Input.decodeList<MsixPackageDependenciesResponse>(map['packageDependencies'], (value) => MsixPackageDependenciesResponse.fromMap((value as Map).cast<String, dynamic>())),
      packageFamilyName: map['packageFamilyName'] == null ? null : map['packageFamilyName'] as String,
      packageFullName: map['packageFullName'] == null ? null : map['packageFullName'] as String,
      packageName: map['packageName'] == null ? null : map['packageName'] as String,
      packageRelativePath: map['packageRelativePath'] == null ? null : map['packageRelativePath'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

