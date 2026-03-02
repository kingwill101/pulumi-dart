// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_filter_egress_rule.dart';
import 'traffic_mirror_filter_ingress_rule.dart';

/// Input properties used for looking up and filtering TrafficMirrorFilter resources.
class TrafficMirrorFilterState {
  /// Whether to PreCheck only this request. Value:
  /// - **true**: The check request is sent without creating traffic Image filter conditions. Check items include whether required parameters, request format, and business restrictions are filled in. If the check does not pass, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request, returns a 2xx HTTP status code after passing the check, and directly creates a filter condition.
  final pulumi.Input<bool>? dryRun;
  /// Information about the outbound rule. See the following `Block EgressRules`.
  final pulumi.Input<List<TrafficMirrorFilterEgressRule>>? egressRules;
  /// Inward direction rule information. See the following `Block IngressRules`.
  final pulumi.Input<List<TrafficMirrorFilterIngressRule>>? ingressRules;
  /// The ID of the resource group to which the VPC belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The tags of this resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The description of the TrafficMirrorFilter.
  final pulumi.Input<String>? trafficMirrorFilterDescription;
  /// The name of the TrafficMirrorFilter.
  final pulumi.Input<String>? trafficMirrorFilterName;

  /// Creates a new [TrafficMirrorFilterState].
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [egressRules] Information about the outbound rule. See the following `Block EgressRules`.
  /// [ingressRules] Inward direction rule information. See the following `Block IngressRules`.
  /// [resourceGroupId] The ID of the resource group to which the VPC belongs.
  /// [status] The status of the resource.
  /// [tags] The tags of this resource.
  /// [trafficMirrorFilterDescription] The description of the TrafficMirrorFilter.
  /// [trafficMirrorFilterName] The name of the TrafficMirrorFilter.
  TrafficMirrorFilterState({
    this.dryRun,
    this.egressRules,
    this.ingressRules,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.trafficMirrorFilterDescription,
    this.trafficMirrorFilterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'egressRules': ?pulumi.Input.mapOptionalInputValue<List<TrafficMirrorFilterEgressRule>, List<Map<String, dynamic>>>(egressRules, (value) => pulumi.Input.encodeList<TrafficMirrorFilterEgressRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressRules': ?pulumi.Input.mapOptionalInputValue<List<TrafficMirrorFilterIngressRule>, List<Map<String, dynamic>>>(ingressRules, (value) => pulumi.Input.encodeList<TrafficMirrorFilterIngressRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'trafficMirrorFilterDescription': ?trafficMirrorFilterDescription,
      'trafficMirrorFilterName': ?trafficMirrorFilterName,
    };
  }

  factory TrafficMirrorFilterState.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      egressRules: map['egressRules'] == null ? null : (pulumi.Input.decodeList<TrafficMirrorFilterEgressRule>(map['egressRules'], (value) => TrafficMirrorFilterEgressRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingressRules: map['ingressRules'] == null ? null : (pulumi.Input.decodeList<TrafficMirrorFilterIngressRule>(map['ingressRules'], (value) => TrafficMirrorFilterIngressRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficMirrorFilterDescription: map['trafficMirrorFilterDescription'] == null ? null : (map['trafficMirrorFilterDescription'] as String).input(),
      trafficMirrorFilterName: map['trafficMirrorFilterName'] == null ? null : (map['trafficMirrorFilterName'] as String).input(),
    );
  }
}

