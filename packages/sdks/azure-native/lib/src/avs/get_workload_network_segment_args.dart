// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_workload_network_segment_args_doc}
/// Arguments for getWorkloadNetworkSegment.
/// {@endtemplate}
/// {@macro pulumi_avs_get_workload_network_segment_args_doc}
class GetWorkloadNetworkSegmentArgs {
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the NSX Segment
  final pulumi.Input<String> segmentId;

  /// Creates a new [GetWorkloadNetworkSegmentArgs].
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [segmentId] The ID of the NSX Segment
  const GetWorkloadNetworkSegmentArgs({
    required this.privateCloudName,
    required this.resourceGroupName,
    required this.segmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'segmentId': segmentId,
    };
  }

  factory GetWorkloadNetworkSegmentArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkSegmentArgs(
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      segmentId: pulumi.Input.fromValue(map['segmentId'] as String),
    );
  }
}
