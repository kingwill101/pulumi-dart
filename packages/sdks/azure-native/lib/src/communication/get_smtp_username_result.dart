// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSmtpUsername.
class GetSmtpUsernameResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The application Id for the linked Entra Application.
  final String? entraApplicationId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The tenant of the linked Entra Application.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The SMTP username. Could be free form or in the email address format.
  final String? username;

  /// Creates a new [GetSmtpUsernameResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [entraApplicationId] The application Id for the linked Entra Application.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenant of the linked Entra Application.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [username] The SMTP username. Could be free form or in the email address format.
  const GetSmtpUsernameResult({
    this.azureApiVersion,
    this.entraApplicationId,
    this.id,
    this.name,
    this.systemData,
    this.tenantId,
    this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'entraApplicationId': ?entraApplicationId,
      'id': ?id,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'tenantId': ?tenantId,
      'type': ?type,
      'username': ?username,
    };
  }

  factory GetSmtpUsernameResult.fromMap(Map<String, dynamic> map) {
    return GetSmtpUsernameResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entraApplicationId: (() { final guardedValue = map['entraApplicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
