// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_response.dart';
import 'system_data_response.dart';

/// An deployment resource belonging to a device group resource.
class DeploymentResponse {
  /// Images deployed
  final pulumi.Input<List<ImageResponse>>? deployedImages;
  /// Deployment date UTC
  final pulumi.Input<String> deploymentDateUtc;
  /// Deployment ID
  final pulumi.Input<String>? deploymentId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

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
      'deployedImages': ?pulumi.Input.mapOptionalInputValue<List<ImageResponse>, List<Map<String, dynamic>>>(deployedImages, (value) => pulumi.Input.encodeList<ImageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentDateUtc': deploymentDateUtc,
      'deploymentId': ?deploymentId,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory DeploymentResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentResponse(
      deployedImages: (() { final guardedValue = map['deployedImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageResponse>(guardedValue, (value) => ImageResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deploymentDateUtc: pulumi.Input.fromValue(map['deploymentDateUtc'] as String),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

