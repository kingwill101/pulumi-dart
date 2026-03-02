// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_traffic_mirror_filter_ingress_rules_get_traffic_mirror_filter_ingress_rules_args_doc}
/// Arguments for getTrafficMirrorFilterIngressRules.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_traffic_mirror_filter_ingress_rules_get_traffic_mirror_filter_ingress_rules_args_doc}
class GetTrafficMirrorFilterIngressRulesArgs {
  /// A list of Traffic Mirror Filter Ingress Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`.
  final pulumi.Input<String>? status;
  /// The ID of the Traffic Mirror Filter.
  final pulumi.Input<String> trafficMirrorFilterId;

  /// Creates a new [GetTrafficMirrorFilterIngressRulesArgs].
  /// [ids] A list of Traffic Mirror Filter Ingress Rule IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterId] The ID of the Traffic Mirror Filter.
  GetTrafficMirrorFilterIngressRulesArgs({
    this.ids,
    this.outputFile,
    this.status,
    required this.trafficMirrorFilterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'trafficMirrorFilterId': trafficMirrorFilterId,
    };
  }

  factory GetTrafficMirrorFilterIngressRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorFilterIngressRulesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      trafficMirrorFilterId: (map['trafficMirrorFilterId'] as String).input(),
    );
  }
}

