// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_error_response.dart';
import 'encryption_set_identity_response.dart';
import 'key_for_disk_encryption_set_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDiskEncryptionSet.
class GetDiskEncryptionSetResult {
  /// The key vault key which is currently used by this disk encryption set.
  final KeyForDiskEncryptionSetResponse? activeKey;
  /// The error that was encountered during auto-key rotation. If an error is present, then auto-key rotation will not be attempted until the error on this disk encryption set is fixed.
  final ApiErrorResponse autoKeyRotationError;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The type of key used to encrypt the data of the disk.
  final String? encryptionType;
  /// Multi-tenant application client id to access key vault in a different tenant. Setting the value to 'None' will clear the property.
  final String? federatedClientId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The managed identity for the disk encryption set. It should be given permission on the key vault before it can be used to encrypt disks.
  final EncryptionSetIdentityResponse? identity;
  /// The time when the active key of this disk encryption set was updated.
  final String lastKeyRotationTimestamp;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// A readonly collection of key vault keys previously used by this disk encryption set while a key rotation is in progress. It will be empty if there is no ongoing key rotation.
  final List<KeyForDiskEncryptionSetResponse> previousKeys;
  /// The disk encryption set provisioning state.
  final String provisioningState;
  /// Set this flag to true to enable auto-updating of this disk encryption set to the latest key version.
  final bool? rotationToLatestKeyVersionEnabled;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDiskEncryptionSetResult].
  /// [activeKey] The key vault key which is currently used by this disk encryption set.
  /// [autoKeyRotationError] The error that was encountered during auto-key rotation. If an error is present, then auto-key rotation will not be attempted until the error on this disk encryption set is fixed.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryptionType] The type of key used to encrypt the data of the disk.
  /// [federatedClientId] Multi-tenant application client id to access key vault in a different tenant. Setting the value to 'None' will clear the property.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The managed identity for the disk encryption set. It should be given permission on the key vault before it can be used to encrypt disks.
  /// [lastKeyRotationTimestamp] The time when the active key of this disk encryption set was updated.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [previousKeys] A readonly collection of key vault keys previously used by this disk encryption set while a key rotation is in progress. It will be empty if there is no ongoing key rotation.
  /// [provisioningState] The disk encryption set provisioning state.
  /// [rotationToLatestKeyVersionEnabled] Set this flag to true to enable auto-updating of this disk encryption set to the latest key version.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDiskEncryptionSetResult({
    this.activeKey,
    required this.autoKeyRotationError,
    required this.azureApiVersion,
    this.encryptionType,
    this.federatedClientId,
    required this.id,
    this.identity,
    required this.lastKeyRotationTimestamp,
    required this.location,
    required this.name,
    required this.previousKeys,
    required this.provisioningState,
    this.rotationToLatestKeyVersionEnabled,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeKey': ?activeKey?.toMap(),
      'autoKeyRotationError': autoKeyRotationError.toMap(),
      'azureApiVersion': azureApiVersion,
      'encryptionType': ?encryptionType,
      'federatedClientId': ?federatedClientId,
      'id': id,
      'identity': ?identity?.toMap(),
      'lastKeyRotationTimestamp': lastKeyRotationTimestamp,
      'location': location,
      'name': name,
      'previousKeys': pulumi.Input.encodeList<KeyForDiskEncryptionSetResponse, Map<String, dynamic>>(previousKeys, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'rotationToLatestKeyVersionEnabled': ?rotationToLatestKeyVersionEnabled,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDiskEncryptionSetResult.fromMap(Map<String, dynamic> map) {
    return GetDiskEncryptionSetResult(
      activeKey: (() { final guardedValue = map['activeKey']; if (guardedValue == null) return null; return KeyForDiskEncryptionSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      autoKeyRotationError: ApiErrorResponse.fromMap((map['autoKeyRotationError']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      federatedClientId: (() { final guardedValue = map['federatedClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return EncryptionSetIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastKeyRotationTimestamp: map['lastKeyRotationTimestamp'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      previousKeys: pulumi.Input.decodeList<KeyForDiskEncryptionSetResponse>(map['previousKeys']!, (value) => KeyForDiskEncryptionSetResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      rotationToLatestKeyVersionEnabled: (() { final guardedValue = map['rotationToLatestKeyVersionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
