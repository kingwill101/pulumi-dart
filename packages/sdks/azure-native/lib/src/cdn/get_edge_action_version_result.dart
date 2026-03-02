// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEdgeActionVersion.
class GetEdgeActionVersionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The deployment type
  final String deploymentType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The active state
  final String isDefaultVersion;
  /// The last update time in UTC for package update
  final String lastPackageUpdateTime;
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
  /// The validation status
  final String validationStatus;

  /// Creates a new [GetEdgeActionVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentType] The deployment type
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isDefaultVersion] The active state
  /// [lastPackageUpdateTime] The last update time in UTC for package update
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationStatus] The validation status
  GetEdgeActionVersionResult({
    required this.azureApiVersion,
    required this.deploymentType,
    required this.id,
    required this.isDefaultVersion,
    required this.lastPackageUpdateTime,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deploymentType': deploymentType,
      'id': id,
      'isDefaultVersion': isDefaultVersion,
      'lastPackageUpdateTime': lastPackageUpdateTime,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'validationStatus': validationStatus,
    };
  }

  factory GetEdgeActionVersionResult.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionVersionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentType: map['deploymentType'] as String,
      id: map['id'] as String,
      isDefaultVersion: map['isDefaultVersion'] as String,
      lastPackageUpdateTime: map['lastPackageUpdateTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      validationStatus: map['validationStatus'] as String,
    );
  }
}

