// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'msix_package_applications_response.dart';
import 'msix_package_dependencies_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMSIXPackage.
class GetMSIXPackageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// User friendly Name to be displayed in the portal.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// VHD/CIM image path on Network Share.
  final String? imagePath;
  /// Make this version of the package the active one across the hostpool.
  final bool? isActive;
  /// Specifies how to register Package in feed.
  final bool? isRegularRegistration;
  /// Date Package was last updated, found in the appxmanifest.xml.
  final String? lastUpdated;
  /// The name of the resource
  final String name;
  /// List of package applications.
  final List<MsixPackageApplicationsResponse>? packageApplications;
  /// List of package dependencies.
  final List<MsixPackageDependenciesResponse>? packageDependencies;
  /// Package Family Name from appxmanifest.xml. Contains Package Name and Publisher name.
  final String? packageFamilyName;
  /// Package Name from appxmanifest.xml.
  final String? packageName;
  /// Relative Path to the package inside the image.
  final String? packageRelativePath;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Package version found in the appxmanifest.xml.
  final String? version;

  /// Creates a new [GetMSIXPackageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] User friendly Name to be displayed in the portal.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [imagePath] VHD/CIM image path on Network Share.
  /// [isActive] Make this version of the package the active one across the hostpool.
  /// [isRegularRegistration] Specifies how to register Package in feed.
  /// [lastUpdated] Date Package was last updated, found in the appxmanifest.xml.
  /// [name] The name of the resource
  /// [packageApplications] List of package applications.
  /// [packageDependencies] List of package dependencies.
  /// [packageFamilyName] Package Family Name from appxmanifest.xml. Contains Package Name and Publisher name.
  /// [packageName] Package Name from appxmanifest.xml.
  /// [packageRelativePath] Relative Path to the package inside the image.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Package version found in the appxmanifest.xml.
  GetMSIXPackageResult({
    required this.azureApiVersion,
    this.displayName,
    required this.id,
    this.imagePath,
    this.isActive,
    this.isRegularRegistration,
    this.lastUpdated,
    required this.name,
    this.packageApplications,
    this.packageDependencies,
    this.packageFamilyName,
    this.packageName,
    this.packageRelativePath,
    required this.systemData,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'displayName': ?displayName,
      'id': id,
      'imagePath': ?imagePath,
      'isActive': ?isActive,
      'isRegularRegistration': ?isRegularRegistration,
      'lastUpdated': ?lastUpdated,
      'name': name,
      'packageApplications': ?packageApplications == null ? null : pulumi.Input.encodeList<MsixPackageApplicationsResponse, Map<String, dynamic>>(packageApplications!, (value) => value.toMap()),
      'packageDependencies': ?packageDependencies == null ? null : pulumi.Input.encodeList<MsixPackageDependenciesResponse, Map<String, dynamic>>(packageDependencies!, (value) => value.toMap()),
      'packageFamilyName': ?packageFamilyName,
      'packageName': ?packageName,
      'packageRelativePath': ?packageRelativePath,
      'systemData': systemData.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetMSIXPackageResult.fromMap(Map<String, dynamic> map) {
    return GetMSIXPackageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      imagePath: map['imagePath'] == null ? null : map['imagePath']! as String,
      isActive: map['isActive'] == null ? null : map['isActive']! as bool,
      isRegularRegistration: map['isRegularRegistration'] == null ? null : map['isRegularRegistration']! as bool,
      lastUpdated: map['lastUpdated'] == null ? null : map['lastUpdated']! as String,
      name: map['name'] as String,
      packageApplications: map['packageApplications'] == null ? null : pulumi.Input.decodeList<MsixPackageApplicationsResponse>(map['packageApplications']!, (value) => MsixPackageApplicationsResponse.fromMap((value as Map).cast<String, dynamic>())),
      packageDependencies: map['packageDependencies'] == null ? null : pulumi.Input.decodeList<MsixPackageDependenciesResponse>(map['packageDependencies']!, (value) => MsixPackageDependenciesResponse.fromMap((value as Map).cast<String, dynamic>())),
      packageFamilyName: map['packageFamilyName'] == null ? null : map['packageFamilyName']! as String,
      packageName: map['packageName'] == null ? null : map['packageName']! as String,
      packageRelativePath: map['packageRelativePath'] == null ? null : map['packageRelativePath']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version']! as String,
    );
  }
}

