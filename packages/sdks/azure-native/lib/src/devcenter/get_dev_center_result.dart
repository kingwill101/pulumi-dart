// ignore_for_file: unused_element, unnecessary_cast

import 'dev_center_project_catalog_settings_response.dart';
import 'encryption_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDevCenter.
class GetDevCenterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The URI of the Dev Center.
  final String devCenterUri;
  /// The display name of the devcenter.
  final String? displayName;
  /// Encryption settings to be used for server-side encryption for proprietary content (such as catalogs, logs, customizations).
  final EncryptionResponse? encryption;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed identity properties
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Dev Center settings to be used when associating a project with a catalog.
  final DevCenterProjectCatalogSettingsResponse? projectCatalogSettings;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDevCenterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [devCenterUri] The URI of the Dev Center.
  /// [displayName] The display name of the devcenter.
  /// [encryption] Encryption settings to be used for server-side encryption for proprietary content (such as catalogs, logs, customizations).
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed identity properties
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [projectCatalogSettings] Dev Center settings to be used when associating a project with a catalog.
  /// [provisioningState] The provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDevCenterResult({
    required this.azureApiVersion,
    required this.devCenterUri,
    this.displayName,
    this.encryption,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.projectCatalogSettings,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'devCenterUri': devCenterUri,
      'displayName': ?displayName,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'projectCatalogSettings': ?projectCatalogSettings == null ? null : projectCatalogSettings!.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDevCenterResult.fromMap(Map<String, dynamic> map) {
    return GetDevCenterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      devCenterUri: map['devCenterUri'] as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      encryption: map['encryption'] == null ? null : EncryptionResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      projectCatalogSettings: map['projectCatalogSettings'] == null ? null : DevCenterProjectCatalogSettingsResponse.fromMap((map['projectCatalogSettings']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

