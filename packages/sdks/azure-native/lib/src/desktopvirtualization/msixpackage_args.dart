// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'msix_package_applications.dart';
import 'msix_package_dependencies.dart';

/// {@template pulumi_desktopvirtualization_msixpackage_args_doc}
/// The set of arguments for MSIXPackage.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_msixpackage_args_doc}
class MSIXPackageArgs {
  /// User friendly Name to be displayed in the portal.
  final pulumi.Input<String>? displayName;
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// VHD/CIM image path on Network Share.
  final pulumi.Input<String>? imagePath;
  /// Make this version of the package the active one across the hostpool.
  final pulumi.Input<bool>? isActive;
  /// Specifies how to register Package in feed.
  final pulumi.Input<bool>? isRegularRegistration;
  /// Date Package was last updated, found in the appxmanifest.xml.
  final pulumi.Input<String>? lastUpdated;
  /// The version specific package full name of the MSIX package within specified hostpool
  final pulumi.Input<String>? msixPackageFullName;
  /// List of package applications.
  final pulumi.Input<List<MsixPackageApplications>>? packageApplications;
  /// List of package dependencies.
  final pulumi.Input<List<MsixPackageDependencies>>? packageDependencies;
  /// Package Family Name from appxmanifest.xml. Contains Package Name and Publisher name.
  final pulumi.Input<String>? packageFamilyName;
  /// Package Name from appxmanifest.xml.
  final pulumi.Input<String>? packageName;
  /// Relative Path to the package inside the image.
  final pulumi.Input<String>? packageRelativePath;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Package version found in the appxmanifest.xml.
  final pulumi.Input<String>? version;

  /// Creates a new [MSIXPackageArgs].
  /// [displayName] User friendly Name to be displayed in the portal.
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [imagePath] VHD/CIM image path on Network Share.
  /// [isActive] Make this version of the package the active one across the hostpool.
  /// [isRegularRegistration] Specifies how to register Package in feed.
  /// [lastUpdated] Date Package was last updated, found in the appxmanifest.xml.
  /// [msixPackageFullName] The version specific package full name of the MSIX package within specified hostpool
  /// [packageApplications] List of package applications.
  /// [packageDependencies] List of package dependencies.
  /// [packageFamilyName] Package Family Name from appxmanifest.xml. Contains Package Name and Publisher name.
  /// [packageName] Package Name from appxmanifest.xml.
  /// [packageRelativePath] Relative Path to the package inside the image.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Package version found in the appxmanifest.xml.
  MSIXPackageArgs({
    this.displayName,
    required this.hostPoolName,
    this.imagePath,
    this.isActive,
    this.isRegularRegistration,
    this.lastUpdated,
    this.msixPackageFullName,
    this.packageApplications,
    this.packageDependencies,
    this.packageFamilyName,
    this.packageName,
    this.packageRelativePath,
    required this.resourceGroupName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'hostPoolName': hostPoolName,
      'imagePath': ?imagePath,
      'isActive': ?isActive,
      'isRegularRegistration': ?isRegularRegistration,
      'lastUpdated': ?lastUpdated,
      'msixPackageFullName': ?msixPackageFullName,
      'packageApplications': ?pulumi.Input.mapOptionalInputValue<List<MsixPackageApplications>, List<Map<String, dynamic>>>(packageApplications, (value) => pulumi.Input.encodeList<MsixPackageApplications, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packageDependencies': ?pulumi.Input.mapOptionalInputValue<List<MsixPackageDependencies>, List<Map<String, dynamic>>>(packageDependencies, (value) => pulumi.Input.encodeList<MsixPackageDependencies, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packageFamilyName': ?packageFamilyName,
      'packageName': ?packageName,
      'packageRelativePath': ?packageRelativePath,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
    };
  }

  factory MSIXPackageArgs.fromMap(Map<String, dynamic> map) {
    return MSIXPackageArgs(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      hostPoolName: (map['hostPoolName'] as String).input(),
      imagePath: map['imagePath'] == null ? null : (map['imagePath']! as String).input(),
      isActive: map['isActive'] == null ? null : (map['isActive']! as bool).input(),
      isRegularRegistration: map['isRegularRegistration'] == null ? null : (map['isRegularRegistration']! as bool).input(),
      lastUpdated: map['lastUpdated'] == null ? null : (map['lastUpdated']! as String).input(),
      msixPackageFullName: map['msixPackageFullName'] == null ? null : (map['msixPackageFullName']! as String).input(),
      packageApplications: map['packageApplications'] == null ? null : (pulumi.Input.decodeList<MsixPackageApplications>(map['packageApplications']!, (value) => MsixPackageApplications.fromMap((value as Map).cast<String, dynamic>()))).input(),
      packageDependencies: map['packageDependencies'] == null ? null : (pulumi.Input.decodeList<MsixPackageDependencies>(map['packageDependencies']!, (value) => MsixPackageDependencies.fromMap((value as Map).cast<String, dynamic>()))).input(),
      packageFamilyName: map['packageFamilyName'] == null ? null : (map['packageFamilyName']! as String).input(),
      packageName: map['packageName'] == null ? null : (map['packageName']! as String).input(),
      packageRelativePath: map['packageRelativePath'] == null ? null : (map['packageRelativePath']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

