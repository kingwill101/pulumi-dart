// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'msix_package_applications.dart';
import 'msix_package_dependencies.dart';

/// Schema for Import Package Information properties.
class AppAttachPackageInfoProperties {
  /// Date certificate expires, found in the appxmanifest.xml.
  final pulumi.Input<String>? certificateExpiry;
  /// Certificate name found in the appxmanifest.xml.
  final pulumi.Input<String>? certificateName;
  /// User friendly Name to be displayed in the portal.
  final pulumi.Input<String>? displayName;
  /// VHD/CIM image path on Network Share.
  final pulumi.Input<String>? imagePath;
  /// Make this version of the package the active one across the hostpool.
  final pulumi.Input<bool>? isActive;
  /// Is package timestamped so it can ignore the certificate expiry date
  final pulumi.Input<String>? isPackageTimestamped;
  /// Specifies how to register Package in feed.
  final pulumi.Input<bool>? isRegularRegistration;
  /// Date Package was last updated, found in the appxmanifest.xml.
  final pulumi.Input<String>? lastUpdated;
  /// Alias of App Attach Package. Assigned at import time
  final pulumi.Input<String>? packageAlias;
  /// List of package applications.
  final pulumi.Input<List<MsixPackageApplications>>? packageApplications;
  /// List of package dependencies.
  final pulumi.Input<List<MsixPackageDependencies>>? packageDependencies;
  /// Package Family Name from appxmanifest.xml. Contains Package Name and Publisher name.
  final pulumi.Input<String>? packageFamilyName;
  /// Package Full Name from appxmanifest.xml.
  final pulumi.Input<String>? packageFullName;
  /// Package Name from appxmanifest.xml.
  final pulumi.Input<String>? packageName;
  /// Relative Path to the package inside the image.
  final pulumi.Input<String>? packageRelativePath;
  /// Package version found in the appxmanifest.xml.
  final pulumi.Input<String>? version;

  /// Creates a new [AppAttachPackageInfoProperties].
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
  const AppAttachPackageInfoProperties({
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
      'packageApplications': ?pulumi.Input.mapOptionalInputValue<List<MsixPackageApplications>, List<Map<String, dynamic>>>(packageApplications, (value) => pulumi.Input.encodeList<MsixPackageApplications, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packageDependencies': ?pulumi.Input.mapOptionalInputValue<List<MsixPackageDependencies>, List<Map<String, dynamic>>>(packageDependencies, (value) => pulumi.Input.encodeList<MsixPackageDependencies, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packageFamilyName': ?packageFamilyName,
      'packageFullName': ?packageFullName,
      'packageName': ?packageName,
      'packageRelativePath': ?packageRelativePath,
      'version': ?version,
    };
  }

  factory AppAttachPackageInfoProperties.fromMap(Map<String, dynamic> map) {
    return AppAttachPackageInfoProperties(
      certificateExpiry: (() { final guardedValue = map['certificateExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imagePath: (() { final guardedValue = map['imagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isActive: (() { final guardedValue = map['isActive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isPackageTimestamped: (() { final guardedValue = map['isPackageTimestamped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRegularRegistration: (() { final guardedValue = map['isRegularRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageAlias: (() { final guardedValue = map['packageAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageApplications: (() { final guardedValue = map['packageApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MsixPackageApplications>(guardedValue, (value) => MsixPackageApplications.fromMap((value as Map).cast<String, dynamic>()))); })(),
      packageDependencies: (() { final guardedValue = map['packageDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MsixPackageDependencies>(guardedValue, (value) => MsixPackageDependencies.fromMap((value as Map).cast<String, dynamic>()))); })(),
      packageFamilyName: (() { final guardedValue = map['packageFamilyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageFullName: (() { final guardedValue = map['packageFullName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageRelativePath: (() { final guardedValue = map['packageRelativePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
