// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_traffic_mirror_filter_egress_rules_get_traffic_mirror_filter_egress_rules_args_doc}
/// Arguments for getTrafficMirrorFilterEgressRules.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_traffic_mirror_filter_egress_rules_get_traffic_mirror_filter_egress_rules_args_doc}
class GetTrafficMirrorFilterEgressRulesArgs {
  /// A list of Traffic Mirror Filter Egress Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`.
  final pulumi.Input<String>? status;
  /// The ID of the Traffic Mirror Filter.
  final pulumi.Input<String> trafficMirrorFilterId;

  /// Creates a new [GetTrafficMirrorFilterEgressRulesArgs].
  /// [ids] A list of Traffic Mirror Filter Egress Rule IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`.
  /// [trafficMirrorFilterId] The ID of the Traffic Mirror Filter.
  GetTrafficMirrorFilterEgressRulesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    required pulumi.Output<String> trafficMirrorFilterId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      trafficMirrorFilterId = pulumi.Input.asInput<String>(trafficMirrorFilterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'trafficMirrorFilterId': trafficMirrorFilterId,
    };
  }

  factory GetTrafficMirrorFilterEgressRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorFilterEgressRulesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      trafficMirrorFilterId: pulumi.Output.create<String>(map['trafficMirrorFilterId'] as String),
    );
  }
}

