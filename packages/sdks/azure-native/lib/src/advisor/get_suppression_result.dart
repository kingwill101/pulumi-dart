// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSuppression.
class GetSuppressionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the expiration time stamp.
  final String expirationTimeStamp;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The GUID of the suppression.
  final String? suppressionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The duration for which the suppression is valid.
  final String? ttl;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSuppressionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [expirationTimeStamp] Gets or sets the expiration time stamp.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [suppressionId] The GUID of the suppression.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [ttl] The duration for which the suppression is valid.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSuppressionResult({
    required this.azureApiVersion,
    required this.expirationTimeStamp,
    required this.id,
    required this.name,
    this.suppressionId,
    required this.systemData,
    this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'expirationTimeStamp': expirationTimeStamp,
      'id': id,
      'name': name,
      'suppressionId': ?suppressionId,
      'systemData': systemData.toMap(),
      'ttl': ?ttl,
      'type': type,
    };
  }

  factory GetSuppressionResult.fromMap(Map<String, dynamic> map) {
    return GetSuppressionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      expirationTimeStamp: map['expirationTimeStamp'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      suppressionId: (() { final guardedValue = map['suppressionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

