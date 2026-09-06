// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'msix_package_applications_response.dart';
import 'msix_package_dependencies_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMSIXPackage.
class GetMSIXPackageResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// User friendly Name to be displayed in the portal.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// VHD/CIM image path on Network Share.
  final String? imagePath;
  /// Make this version of the package the active one across the hostpool.
  final bool? isActive;
  /// Specifies how to register Package in feed.
  final bool? isRegularRegistration;
  /// Date Package was last updated, found in the appxmanifest.xml.
  final String? lastUpdated;
  /// The name of the resource
  final String? name;
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
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetMSIXPackageResult({
    this.azureApiVersion,
    this.displayName,
    this.id,
    this.imagePath,
    this.isActive,
    this.isRegularRegistration,
    this.lastUpdated,
    this.name,
    this.packageApplications,
    this.packageDependencies,
    this.packageFamilyName,
    this.packageName,
    this.packageRelativePath,
    this.systemData,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'id': ?id,
      'imagePath': ?imagePath,
      'isActive': ?isActive,
      'isRegularRegistration': ?isRegularRegistration,
      'lastUpdated': ?lastUpdated,
      'name': ?name,
      'packageApplications': ?(() { final guardedValue = packageApplications; if (guardedValue == null) return null; return pulumi.Input.encodeList<MsixPackageApplicationsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'packageDependencies': ?(() { final guardedValue = packageDependencies; if (guardedValue == null) return null; return pulumi.Input.encodeList<MsixPackageDependenciesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'packageFamilyName': ?packageFamilyName,
      'packageName': ?packageName,
      'packageRelativePath': ?packageRelativePath,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetMSIXPackageResult.fromMap(Map<String, dynamic> map) {
    return GetMSIXPackageResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imagePath: (() { final guardedValue = map['imagePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isActive: (() { final guardedValue = map['isActive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isRegularRegistration: (() { final guardedValue = map['isRegularRegistration']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageApplications: (() { final guardedValue = map['packageApplications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MsixPackageApplicationsResponse>(guardedValue, (value) => MsixPackageApplicationsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      packageDependencies: (() { final guardedValue = map['packageDependencies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MsixPackageDependenciesResponse>(guardedValue, (value) => MsixPackageDependenciesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      packageFamilyName: (() { final guardedValue = map['packageFamilyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageRelativePath: (() { final guardedValue = map['packageRelativePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
