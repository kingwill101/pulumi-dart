// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSuppression.
class GetSuppressionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the expiration time stamp.
  final String? expirationTimeStamp;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The GUID of the suppression.
  final String? suppressionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The duration for which the suppression is valid.
  final String? ttl;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.expirationTimeStamp,
    this.id,
    this.name,
    this.suppressionId,
    this.systemData,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'expirationTimeStamp': ?expirationTimeStamp,
      'id': ?id,
      'name': ?name,
      'suppressionId': ?suppressionId,
      'systemData': ?systemData?.toMap(),
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory GetSuppressionResult.fromMap(Map<String, dynamic> map) {
    return GetSuppressionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTimeStamp: (() { final guardedValue = map['expirationTimeStamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suppressionId: (() { final guardedValue = map['suppressionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
