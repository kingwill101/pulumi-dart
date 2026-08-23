// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workload_network_segment_port_vif_response.dart';
import 'workload_network_segment_subnet_response.dart';

/// Result data returned by getWorkloadNetworkSegment.
class GetWorkloadNetworkSegmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gateway which to connect segment to.
  final String? connectedGateway;
  /// Display name of the segment.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Port Vif which segment is associated with.
  final List<WorkloadNetworkSegmentPortVifResponse> portVif;
  /// The provisioning state
  final String provisioningState;
  /// NSX revision number.
  final double? revision;
  /// Segment status.
  final String status;
  /// Subnet which to connect segment to.
  final WorkloadNetworkSegmentSubnetResponse? subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.azureApiVersion,
    this.connectedGateway,
    this.displayName,
    required this.id,
    required this.name,
    required this.portVif,
    required this.provisioningState,
    this.revision,
    required this.status,
    this.subnet,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectedGateway': ?connectedGateway,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'portVif': pulumi.Input.encodeList<WorkloadNetworkSegmentPortVifResponse, Map<String, dynamic>>(portVif, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'revision': ?revision,
      'status': status,
      'subnet': ?subnet?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWorkloadNetworkSegmentResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkSegmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectedGateway: (() { final guardedValue = map['connectedGateway']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      portVif: pulumi.Input.decodeList<WorkloadNetworkSegmentPortVifResponse>(map['portVif']!, (value) => WorkloadNetworkSegmentPortVifResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return guardedValue as double; })(),
      status: map['status'] as String,
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return WorkloadNetworkSegmentSubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
