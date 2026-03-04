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

  factory GetTrafficMirrorFilterEgressRulesArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTrafficMirrorFilterEgressRulesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficMirrorFilterId: pulumi.Input.fromValue(
        map['trafficMirrorFilterId'] as String,
      ),
    );
  }
}
