// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'target_endpoint_response.dart';

/// Result data returned by getAFDTargetGroup.
class GetAFDTargetGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? deploymentStatus;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Provisioning status
  final String? provisioningState;
  /// Read only system data
  final SystemDataResponse? systemData;
  /// TargetEndpoint list referenced by this target group.
  final List<TargetEndpointResponse>? targetEndpoints;
  /// Resource type.
  final String? type;

  /// Creates a new [GetAFDTargetGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentStatus] Optional.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] Provisioning status
  /// [systemData] Read only system data
  /// [targetEndpoints] TargetEndpoint list referenced by this target group.
  /// [type] Resource type.
  const GetAFDTargetGroupResult({
    this.azureApiVersion,
    this.deploymentStatus,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.targetEndpoints,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'deploymentStatus': ?deploymentStatus,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'targetEndpoints': ?(() { final guardedValue = targetEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<TargetEndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetAFDTargetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetAFDTargetGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetEndpoints: (() { final guardedValue = map['targetEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetEndpointResponse>(guardedValue, (value) => TargetEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
