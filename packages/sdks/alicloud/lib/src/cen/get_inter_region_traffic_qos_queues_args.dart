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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> trafficQosPolicyId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      trafficQosPolicyId = pulumi.Input.asInput<String>(trafficQosPolicyId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      trafficQosPolicyId: pulumi.Output.create<String>(map['trafficQosPolicyId'] as String),
    );
  }
}

