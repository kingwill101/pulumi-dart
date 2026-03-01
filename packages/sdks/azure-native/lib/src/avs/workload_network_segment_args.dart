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
    pulumi.Output<String>? connectedGateway,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<double>? revision,
    pulumi.Output<String>? segmentId,
    pulumi.Output<WorkloadNetworkSegmentSubnet>? subnet,
  }) :
      connectedGateway = pulumi.Input.asOptionalInput<String>(connectedGateway),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      revision = pulumi.Input.asOptionalInput<double>(revision),
      segmentId = pulumi.Input.asOptionalInput<String>(segmentId),
      subnet = pulumi.Input.asOptionalInput<WorkloadNetworkSegmentSubnet>(subnet);

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
      connectedGateway: map['connectedGateway'] == null ? null : pulumi.Output.create<String>(map['connectedGateway'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<double>(map['revision'] as double),
      segmentId: map['segmentId'] == null ? null : pulumi.Output.create<String>(map['segmentId'] as String),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<WorkloadNetworkSegmentSubnet>(WorkloadNetworkSegmentSubnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())),
    );
  }
}

