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
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> hostPoolName,
    pulumi.Output<String>? imagePath,
    pulumi.Output<bool>? isActive,
    pulumi.Output<bool>? isRegularRegistration,
    pulumi.Output<String>? lastUpdated,
    pulumi.Output<String>? msixPackageFullName,
    pulumi.Output<List<MsixPackageApplications>>? packageApplications,
    pulumi.Output<List<MsixPackageDependencies>>? packageDependencies,
    pulumi.Output<String>? packageFamilyName,
    pulumi.Output<String>? packageName,
    pulumi.Output<String>? packageRelativePath,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? version,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      hostPoolName = pulumi.Input.asInput<String>(hostPoolName),
      imagePath = pulumi.Input.asOptionalInput<String>(imagePath),
      isActive = pulumi.Input.asOptionalInput<bool>(isActive),
      isRegularRegistration = pulumi.Input.asOptionalInput<bool>(isRegularRegistration),
      lastUpdated = pulumi.Input.asOptionalInput<String>(lastUpdated),
      msixPackageFullName = pulumi.Input.asOptionalInput<String>(msixPackageFullName),
      packageApplications = pulumi.Input.asOptionalInput<List<MsixPackageApplications>>(packageApplications),
      packageDependencies = pulumi.Input.asOptionalInput<List<MsixPackageDependencies>>(packageDependencies),
      packageFamilyName = pulumi.Input.asOptionalInput<String>(packageFamilyName),
      packageName = pulumi.Input.asOptionalInput<String>(packageName),
      packageRelativePath = pulumi.Input.asOptionalInput<String>(packageRelativePath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      hostPoolName: pulumi.Output.create<String>(map['hostPoolName'] as String),
      imagePath: map['imagePath'] == null ? null : pulumi.Output.create<String>(map['imagePath'] as String),
      isActive: map['isActive'] == null ? null : pulumi.Output.create<bool>(map['isActive'] as bool),
      isRegularRegistration: map['isRegularRegistration'] == null ? null : pulumi.Output.create<bool>(map['isRegularRegistration'] as bool),
      lastUpdated: map['lastUpdated'] == null ? null : pulumi.Output.create<String>(map['lastUpdated'] as String),
      msixPackageFullName: map['msixPackageFullName'] == null ? null : pulumi.Output.create<String>(map['msixPackageFullName'] as String),
      packageApplications: map['packageApplications'] == null ? null : pulumi.Output.create<List<MsixPackageApplications>>(pulumi.Input.decodeList<MsixPackageApplications>(map['packageApplications'], (value) => MsixPackageApplications.fromMap((value as Map).cast<String, dynamic>()))),
      packageDependencies: map['packageDependencies'] == null ? null : pulumi.Output.create<List<MsixPackageDependencies>>(pulumi.Input.decodeList<MsixPackageDependencies>(map['packageDependencies'], (value) => MsixPackageDependencies.fromMap((value as Map).cast<String, dynamic>()))),
      packageFamilyName: map['packageFamilyName'] == null ? null : pulumi.Output.create<String>(map['packageFamilyName'] as String),
      packageName: map['packageName'] == null ? null : pulumi.Output.create<String>(map['packageName'] as String),
      packageRelativePath: map['packageRelativePath'] == null ? null : pulumi.Output.create<String>(map['packageRelativePath'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

