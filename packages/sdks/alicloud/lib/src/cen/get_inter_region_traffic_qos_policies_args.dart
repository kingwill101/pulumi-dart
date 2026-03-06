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
  const GetInterRegionTrafficQosPoliciesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.trafficQosPolicyDescription,
    this.trafficQosPolicyId,
    this.trafficQosPolicyName,
    required this.transitRouterAttachmentId,
    required this.transitRouterId,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficQosPolicyDescription: (() { final guardedValue = map['trafficQosPolicyDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficQosPolicyId: (() { final guardedValue = map['trafficQosPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficQosPolicyName: (() { final guardedValue = map['trafficQosPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterAttachmentId: pulumi.Input.fromValue(map['transitRouterAttachmentId'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}

