// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_segment_port_vif_response.dart';
import 'workload_network_segment_subnet_response.dart';

/// Result data returned by getWorkloadNetworkSegment.
class GetWorkloadNetworkSegmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gateway which to connect segment to.
  final String? connectedGateway;
  /// Display name of the segment.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Port Vif which segment is associated with.
  final List<WorkloadNetworkSegmentPortVifResponse>? portVif;
  /// The provisioning state
  final String? provisioningState;
  /// NSX revision number.
  final double? revision;
  /// Segment status.
  final String? status;
  /// Subnet which to connect segment to.
  final WorkloadNetworkSegmentSubnetResponse? subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkloadNetworkSegmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectedGateway] Gateway which to connect segment to.
  /// [displayName] Display name of the segment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [portVif] Port Vif which segment is associated with.
  /// [provisioningState] The provisioning state
  /// [revision] NSX revision number.
  /// [status] Segment status.
  /// [subnet] Subnet which to connect segment to.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkloadNetworkSegmentResult({
    this.azureApiVersion,
    this.connectedGateway,
    this.displayName,
    this.id,
    this.name,
    this.portVif,
    this.provisioningState,
    this.revision,
    this.status,
    this.subnet,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectedGateway': ?connectedGateway,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'portVif': ?(() { final guardedValue = portVif; if (guardedValue == null) return null; return pulumi.Input.encodeList<WorkloadNetworkSegmentPortVifResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'revision': ?revision,
      'status': ?status,
      'subnet': ?subnet?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWorkloadNetworkSegmentResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkSegmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectedGateway: (() { final guardedValue = map['connectedGateway']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portVif: (() { final guardedValue = map['portVif']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadNetworkSegmentPortVifResponse>(guardedValue, (value) => WorkloadNetworkSegmentPortVifResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return WorkloadNetworkSegmentSubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
