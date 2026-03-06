// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDeployment.
class GetDeploymentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Images deployed
  final List<ImageResponse>? deployedImages;
  /// Deployment date UTC
  final String deploymentDateUtc;
  /// Deployment ID
  final String? deploymentId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeploymentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deployedImages] Images deployed
  /// [deploymentDateUtc] Deployment date UTC
  /// [deploymentId] Deployment ID
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDeploymentResult({
    required this.azureApiVersion,
    this.deployedImages,
    required this.deploymentDateUtc,
    this.deploymentId,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deployedImages': ?(() { final guardedValue = deployedImages; if (guardedValue == null) return null; return pulumi.Input.encodeList<ImageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deploymentDateUtc': deploymentDateUtc,
      'deploymentId': ?deploymentId,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deployedImages: (() { final guardedValue = map['deployedImages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageResponse>(guardedValue, (value) => ImageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      deploymentDateUtc: map['deploymentDateUtc'] as String,
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

