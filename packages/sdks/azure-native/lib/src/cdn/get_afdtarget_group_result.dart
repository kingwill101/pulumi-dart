// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'target_endpoint_response.dart';

/// Result data returned by getAFDTargetGroup.
class GetAFDTargetGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String deploymentStatus;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// Provisioning status
  final String provisioningState;

  /// Read only system data
  final SystemDataResponse systemData;

  /// TargetEndpoint list referenced by this target group.
  final List<TargetEndpointResponse> targetEndpoints;

  /// Resource type.
  final String type;

  /// Creates a new [GetAFDTargetGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentStatus] Required.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] Provisioning status
  /// [systemData] Read only system data
  /// [targetEndpoints] TargetEndpoint list referenced by this target group.
  /// [type] Resource type.
  GetAFDTargetGroupResult({
    required this.azureApiVersion,
    required this.deploymentStatus,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.targetEndpoints,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deploymentStatus': deploymentStatus,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'targetEndpoints':
          pulumi.Input.encodeList<TargetEndpointResponse, Map<String, dynamic>>(
            targetEndpoints,
            (value) => value.toMap(),
          ),
      'type': type,
    };
  }

  factory GetAFDTargetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetAFDTargetGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      targetEndpoints: pulumi.Input.decodeList<TargetEndpointResponse>(
        map['targetEndpoints']!,
        (value) => TargetEndpointResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      type: map['type'] as String,
    );
  }
}
