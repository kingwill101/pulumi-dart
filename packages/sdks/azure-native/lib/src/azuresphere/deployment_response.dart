// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_response.dart';
import 'system_data_response.dart';

/// An deployment resource belonging to a device group resource.
class DeploymentResponse {
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

  /// Creates a new [DeploymentResponse].
  /// [deployedImages] Images deployed
  /// [deploymentDateUtc] Deployment date UTC
  /// [deploymentId] Deployment ID
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  DeploymentResponse({
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
      'deployedImages': ?deployedImages == null ? null : pulumi.Input.encodeList<ImageResponse, Map<String, dynamic>>(deployedImages!, (value) => value.toMap()),
      'deploymentDateUtc': deploymentDateUtc,
      'deploymentId': ?deploymentId,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory DeploymentResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentResponse(
      deployedImages: map['deployedImages'] == null ? null : pulumi.Input.decodeList<ImageResponse>(map['deployedImages'], (value) => ImageResponse.fromMap((value as Map).cast<String, dynamic>())),
      deploymentDateUtc: map['deploymentDateUtc'] as String,
      deploymentId: map['deploymentId'] == null ? null : map['deploymentId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

