// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getKnowledgeSource.
class GetKnowledgeSourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Description of the knowledge source.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The last time the knowledge source was updated.
  final String? lastRefreshedTime;
  /// The name of the resource
  final String? name;
  /// Provisioning status of the knowledge source.
  final String? provisioningState;
  /// Format or origin of the knowledge source.
  final String? sourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Specifies the units of time for scheduling update intervals for the knowledge source.
  final String? updateFrequency;
  /// Endpoint or location of the knowledge source.
  final String? url;

  /// Creates a new [GetKnowledgeSourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the knowledge source.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastRefreshedTime] The last time the knowledge source was updated.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning status of the knowledge source.
  /// [sourceType] Format or origin of the knowledge source.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateFrequency] Specifies the units of time for scheduling update intervals for the knowledge source.
  /// [url] Endpoint or location of the knowledge source.
  const GetKnowledgeSourceResult({
    this.azureApiVersion,
    this.description,
    this.id,
    this.lastRefreshedTime,
    this.name,
    this.provisioningState,
    this.sourceType,
    this.systemData,
    this.type,
    this.updateFrequency,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'lastRefreshedTime': ?lastRefreshedTime,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sourceType': ?sourceType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updateFrequency': ?updateFrequency,
      'url': ?url,
    };
  }

  factory GetKnowledgeSourceResult.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeSourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastRefreshedTime: (() { final guardedValue = map['lastRefreshedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateFrequency: (() { final guardedValue = map['updateFrequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
