// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getKnowledgeSource.
class GetKnowledgeSourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the knowledge source.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The last time the knowledge source was updated.
  final String lastRefreshedTime;
  /// The name of the resource
  final String name;
  /// Provisioning status of the knowledge source.
  final String provisioningState;
  /// Format or origin of the knowledge source.
  final String sourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Specifies the units of time for scheduling update intervals for the knowledge source.
  final String? updateFrequency;
  /// Endpoint or location of the knowledge source.
  final String url;

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
  GetKnowledgeSourceResult({
    required this.azureApiVersion,
    this.description,
    required this.id,
    required this.lastRefreshedTime,
    required this.name,
    required this.provisioningState,
    required this.sourceType,
    required this.systemData,
    required this.type,
    this.updateFrequency,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'id': id,
      'lastRefreshedTime': lastRefreshedTime,
      'name': name,
      'provisioningState': provisioningState,
      'sourceType': sourceType,
      'systemData': systemData.toMap(),
      'type': type,
      'updateFrequency': ?updateFrequency,
      'url': url,
    };
  }

  factory GetKnowledgeSourceResult.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeSourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      id: map['id'] as String,
      lastRefreshedTime: map['lastRefreshedTime'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceType: map['sourceType'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updateFrequency: map['updateFrequency'] == null ? null : map['updateFrequency']! as String,
      url: map['url'] as String,
    );
  }
}

