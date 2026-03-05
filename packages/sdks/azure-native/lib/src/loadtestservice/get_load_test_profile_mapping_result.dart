// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getLoadTestProfileMapping.
class GetLoadTestProfileMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Mapped Azure Load Test resource Id.
  final String? azureLoadTestingResourceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Mapped source resource Id.
  final String? sourceResourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Mapped Azure Load Test resource test-profile-id.
  final String? testProfileId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLoadTestProfileMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureLoadTestingResourceId] Mapped Azure Load Test resource Id.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [sourceResourceId] Mapped source resource Id.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [testProfileId] Mapped Azure Load Test resource test-profile-id.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetLoadTestProfileMappingResult({
    required this.azureApiVersion,
    this.azureLoadTestingResourceId,
    required this.id,
    required this.name,
    this.sourceResourceId,
    required this.systemData,
    this.testProfileId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureLoadTestingResourceId': ?azureLoadTestingResourceId,
      'id': id,
      'name': name,
      'sourceResourceId': ?sourceResourceId,
      'systemData': systemData.toMap(),
      'testProfileId': ?testProfileId,
      'type': type,
    };
  }

  factory GetLoadTestProfileMappingResult.fromMap(Map<String, dynamic> map) {
    return GetLoadTestProfileMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureLoadTestingResourceId: (() { final guardedValue = map['azureLoadTestingResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      testProfileId: (() { final guardedValue = map['testProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

