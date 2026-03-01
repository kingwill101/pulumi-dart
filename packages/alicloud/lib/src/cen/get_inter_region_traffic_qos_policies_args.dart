// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_inter_region_traffic_qos_policies_get_inter_region_traffic_qos_policies_args_doc}
/// Arguments for getInterRegionTrafficQosPolicies.
/// {@endtemplate}
/// {@macro pulumi_cen_get_inter_region_traffic_qos_policies_get_inter_region_traffic_qos_policies_args_doc}
class GetInterRegionTrafficQosPoliciesArgs {
  /// A list of Inter Region Traffic Qos Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Inter Region Traffic Qos Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the traffic scheduling policy. Valid Value: `Creating`, `Active`, `Modifying`, `Deleting`, `Deleted`.
  final pulumi.Input<String>? status;
  /// The description of the QoS policy.
  final pulumi.Input<String>? trafficQosPolicyDescription;
  /// The ID of the QoS policy.
  final pulumi.Input<String>? trafficQosPolicyId;
  /// The name of the QoS policy.
  final pulumi.Input<String>? trafficQosPolicyName;
  /// The ID of the inter-region connection.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [GetInterRegionTrafficQosPoliciesArgs].
  /// [ids] A list of Inter Region Traffic Qos Policy IDs.
  /// [nameRegex] A regex string to filter results by Inter Region Traffic Qos Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the traffic scheduling policy. Valid Value: `Creating`, `Active`, `Modifying`, `Deleting`, `Deleted`.
  /// [trafficQosPolicyDescription] The description of the QoS policy.
  /// [trafficQosPolicyId] The ID of the QoS policy.
  /// [trafficQosPolicyName] The name of the QoS policy.
  /// [transitRouterAttachmentId] The ID of the inter-region connection.
  /// [transitRouterId] The ID of the transit router.
  GetInterRegionTrafficQosPoliciesArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? status,
    String? trafficQosPolicyDescription,
    String? trafficQosPolicyId,
    String? trafficQosPolicyName,
    required String transitRouterAttachmentId,
    required String transitRouterId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      trafficQosPolicyDescription = pulumi.Input.asOptionalInput<String>(trafficQosPolicyDescription),
      trafficQosPolicyId = pulumi.Input.asOptionalInput<String>(trafficQosPolicyId),
      trafficQosPolicyName = pulumi.Input.asOptionalInput<String>(trafficQosPolicyName),
      transitRouterAttachmentId = pulumi.Input.asInput<String>(transitRouterAttachmentId),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'trafficQosPolicyDescription': ?trafficQosPolicyDescription,
      'trafficQosPolicyId': ?trafficQosPolicyId,
      'trafficQosPolicyName': ?trafficQosPolicyName,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetInterRegionTrafficQosPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetInterRegionTrafficQosPoliciesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      trafficQosPolicyDescription: map['trafficQosPolicyDescription'] == null ? null : map['trafficQosPolicyDescription'] as String,
      trafficQosPolicyId: map['trafficQosPolicyId'] == null ? null : map['trafficQosPolicyId'] as String,
      trafficQosPolicyName: map['trafficQosPolicyName'] == null ? null : map['trafficQosPolicyName'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

