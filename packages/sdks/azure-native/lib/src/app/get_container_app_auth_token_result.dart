// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getContainerAppAuthToken.
class GetContainerAppAuthTokenResult {
  /// Token expiration date.
  final String expires;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Auth token value.
  final String token;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetContainerAppAuthTokenResult].
  /// [expires] Token expiration date.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [token] Auth token value.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetContainerAppAuthTokenResult({
    required this.expires,
    required this.id,
    required this.location,
    required this.name,
    required this.systemData,
    this.tags,
    required this.token,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expires': expires,
      'id': id,
      'location': location,
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'token': token,
      'type': type,
    };
  }

  factory GetContainerAppAuthTokenResult.fromMap(Map<String, dynamic> map) {
    return GetContainerAppAuthTokenResult(
      expires: map['expires'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      token: map['token'] as String,
      type: map['type'] as String,
    );
  }
}

