// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEvidence.
class GetEvidenceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Control id.
  final String? controlId;
  /// Evidence type.
  final String? evidenceType;
  /// Extra data considered as evidence.
  final String? extraData;
  /// The path of the file in storage.
  final String filePath;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Azure lifecycle management
  final String provisioningState;
  /// Responsibility id.
  final String? responsibilityId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEvidenceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [controlId] Control id.
  /// [evidenceType] Evidence type.
  /// [extraData] Extra data considered as evidence.
  /// [filePath] The path of the file in storage.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] Azure lifecycle management
  /// [responsibilityId] Responsibility id.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEvidenceResult({
    required this.azureApiVersion,
    this.controlId,
    this.evidenceType,
    this.extraData,
    required this.filePath,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.responsibilityId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'controlId': ?controlId,
      'evidenceType': ?evidenceType,
      'extraData': ?extraData,
      'filePath': filePath,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'responsibilityId': ?responsibilityId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetEvidenceResult.fromMap(Map<String, dynamic> map) {
    return GetEvidenceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      controlId: map['controlId'] == null ? null : map['controlId']! as String,
      evidenceType: map['evidenceType'] == null ? null : map['evidenceType']! as String,
      extraData: map['extraData'] == null ? null : map['extraData']! as String,
      filePath: map['filePath'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      responsibilityId: map['responsibilityId'] == null ? null : map['responsibilityId']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

