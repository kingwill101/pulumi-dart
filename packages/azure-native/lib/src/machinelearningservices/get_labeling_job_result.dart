// ignore_for_file: unused_element, unnecessary_cast

import 'labeling_job_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLabelingJob.
class GetLabelingJobResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// [Required] Additional attributes of the entity.
  final LabelingJobResponse labelingJobProperties;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLabelingJobResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [labelingJobProperties] [Required] Additional attributes of the entity.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetLabelingJobResult({
    required this.azureApiVersion,
    required this.id,
    required this.labelingJobProperties,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'labelingJobProperties': labelingJobProperties.toMap(),
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetLabelingJobResult.fromMap(Map<String, dynamic> map) {
    return GetLabelingJobResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      labelingJobProperties: LabelingJobResponse.fromMap((map['labelingJobProperties'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

