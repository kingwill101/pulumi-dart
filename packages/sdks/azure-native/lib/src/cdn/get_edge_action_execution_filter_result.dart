// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEdgeActionExecutionFilter.
class GetEdgeActionExecutionFilterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Custom Header Key associated with the execution filter
  final String executionFilterIdentifierHeaderName;
  /// Custom Header Value associated with the execution filter
  final String executionFilterIdentifierHeaderValue;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The last update time in UTC for the execution filter
  final String lastUpdateTime;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The referenced versionId of the edgeaction version
  final String versionId;

  /// Creates a new [GetEdgeActionExecutionFilterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [executionFilterIdentifierHeaderName] Custom Header Key associated with the execution filter
  /// [executionFilterIdentifierHeaderValue] Custom Header Value associated with the execution filter
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastUpdateTime] The last update time in UTC for the execution filter
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [versionId] The referenced versionId of the edgeaction version
  GetEdgeActionExecutionFilterResult({
    required this.azureApiVersion,
    required this.executionFilterIdentifierHeaderName,
    required this.executionFilterIdentifierHeaderValue,
    required this.id,
    required this.lastUpdateTime,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'executionFilterIdentifierHeaderName': executionFilterIdentifierHeaderName,
      'executionFilterIdentifierHeaderValue': executionFilterIdentifierHeaderValue,
      'id': id,
      'lastUpdateTime': lastUpdateTime,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'versionId': versionId,
    };
  }

  factory GetEdgeActionExecutionFilterResult.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionExecutionFilterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      executionFilterIdentifierHeaderName: map['executionFilterIdentifierHeaderName'] as String,
      executionFilterIdentifierHeaderValue: map['executionFilterIdentifierHeaderValue'] as String,
      id: map['id'] as String,
      lastUpdateTime: map['lastUpdateTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      versionId: map['versionId'] as String,
    );
  }
}

