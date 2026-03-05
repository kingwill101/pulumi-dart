// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_network_segment_subnet.dart';

/// {@template pulumi_avs_workload_network_segment_args_doc}
/// The set of arguments for WorkloadNetworkSegment.
/// {@endtemplate}
/// {@macro pulumi_avs_workload_network_segment_args_doc}
class WorkloadNetworkSegmentArgs {
  /// Gateway which to connect segment to.
  final pulumi.Input<String>? connectedGateway;
  /// Display name of the segment.
  final pulumi.Input<String>? displayName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// NSX revision number.
  final pulumi.Input<double>? revision;
  /// The ID of the NSX Segment
  final pulumi.Input<String>? segmentId;
  /// Subnet which to connect segment to.
  final pulumi.Input<WorkloadNetworkSegmentSubnet>? subnet;

  /// Creates a new [WorkloadNetworkSegmentArgs].
  /// [connectedGateway] Gateway which to connect segment to.
  /// [displayName] Display name of the segment.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [revision] NSX revision number.
  /// [segmentId] The ID of the NSX Segment
  /// [subnet] Subnet which to connect segment to.
  WorkloadNetworkSegmentArgs({
    this.connectedGateway,
    this.displayName,
    required this.privateCloudName,
    required this.resourceGroupName,
    this.revision,
    this.segmentId,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedGateway': ?connectedGateway,
      'displayName': ?displayName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'revision': ?revision,
      'segmentId': ?segmentId,
      'subnet': ?pulumi.Input.mapOptionalInputValue<WorkloadNetworkSegmentSubnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory WorkloadNetworkSegmentArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkSegmentArgs(
      connectedGateway: (() { final guardedValue = map['connectedGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      segmentId: (() { final guardedValue = map['segmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadNetworkSegmentSubnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

