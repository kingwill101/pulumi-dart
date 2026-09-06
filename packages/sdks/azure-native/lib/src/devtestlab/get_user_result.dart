// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'user_identity_response.dart';
import 'user_secret_store_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of the user profile.
  final String? createdDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The identity of the user.
  final UserIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning status of the resource.
  final String? provisioningState;
  /// The secret store of the user.
  final UserSecretStoreResponse? secretStore;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The unique immutable identifier of a resource (Guid).
  final String? uniqueIdentifier;

  /// Creates a new [GetUserResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the user profile.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the user.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning status of the resource.
  /// [secretStore] The secret store of the user.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  const GetUserResult({
    this.azureApiVersion,
    this.createdDate,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.secretStore,
    this.systemData,
    this.tags,
    this.type,
    this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdDate': ?createdDate,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'secretStore': ?secretStore?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uniqueIdentifier': ?uniqueIdentifier,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return UserIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return UserSecretStoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueIdentifier: (() { final guardedValue = map['uniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
