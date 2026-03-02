// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_inter_region_traffic_qos_queues_get_inter_region_traffic_qos_queues_args_doc}
/// Arguments for getInterRegionTrafficQosQueues.
/// {@endtemplate}
/// {@macro pulumi_cen_get_inter_region_traffic_qos_queues_get_inter_region_traffic_qos_queues_args_doc}
class GetInterRegionTrafficQosQueuesArgs {
  /// A list of Inter Region Traffic Qos Queue IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the traffic scheduling policy.
  final pulumi.Input<String> trafficQosPolicyId;

  /// Creates a new [GetInterRegionTrafficQosQueuesArgs].
  /// [ids] A list of Inter Region Traffic Qos Queue IDs.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [trafficQosPolicyId] The ID of the traffic scheduling policy.
  GetInterRegionTrafficQosQueuesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.trafficQosPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'trafficQosPolicyId': trafficQosPolicyId,
    };
  }

  factory GetInterRegionTrafficQosQueuesArgs.fromMap(Map<String, dynamic> map) {
    return GetInterRegionTrafficQosQueuesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      trafficQosPolicyId: (map['trafficQosPolicyId'] as String).input(),
    );
  }
}

