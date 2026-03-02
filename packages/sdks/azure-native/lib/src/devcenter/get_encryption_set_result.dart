// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEncryptionSet.
class GetEncryptionSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Devbox disk encryption enable or disable status. Indicates if Devbox disks encryption using DevCenter CMK is enabled or not.
  final String? devboxDisksEncryptionEnableStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed identity properties
  final ManagedServiceIdentityResponse? identity;
  /// Key encryption key Url, versioned or non-versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  final String? keyEncryptionKeyUrl;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEncryptionSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [devboxDisksEncryptionEnableStatus] Devbox disk encryption enable or disable status. Indicates if Devbox disks encryption using DevCenter CMK is enabled or not.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed identity properties
  /// [keyEncryptionKeyUrl] Key encryption key Url, versioned or non-versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEncryptionSetResult({
    required this.azureApiVersion,
    this.devboxDisksEncryptionEnableStatus,
    required this.id,
    this.identity,
    this.keyEncryptionKeyUrl,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'devboxDisksEncryptionEnableStatus': ?devboxDisksEncryptionEnableStatus,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetEncryptionSetResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptionSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      devboxDisksEncryptionEnableStatus: map['devboxDisksEncryptionEnableStatus'] == null ? null : map['devboxDisksEncryptionEnableStatus']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      keyEncryptionKeyUrl: map['keyEncryptionKeyUrl'] == null ? null : map['keyEncryptionKeyUrl']! as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

