// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEdgeActionVersion.
class GetEdgeActionVersionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The deployment type
  final String? deploymentType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The active state
  final String? isDefaultVersion;
  /// The last update time in UTC for package update
  final String? lastPackageUpdateTime;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning state
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The validation status
  final String? validationStatus;

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
  const GetEdgeActionVersionResult({
    this.azureApiVersion,
    this.deploymentType,
    this.id,
    this.isDefaultVersion,
    this.lastPackageUpdateTime,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'deploymentType': ?deploymentType,
      'id': ?id,
      'isDefaultVersion': ?isDefaultVersion,
      'lastPackageUpdateTime': ?lastPackageUpdateTime,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'validationStatus': ?validationStatus,
    };
  }

  factory GetEdgeActionVersionResult.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionVersionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefaultVersion: (() { final guardedValue = map['isDefaultVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastPackageUpdateTime: (() { final guardedValue = map['lastPackageUpdateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationStatus: (() { final guardedValue = map['validationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
