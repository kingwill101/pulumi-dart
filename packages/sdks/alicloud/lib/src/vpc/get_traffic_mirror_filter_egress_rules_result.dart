// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_mirror_filter_egress_rules_rule.dart';

/// Result data returned by getTrafficMirrorFilterEgressRules.
class GetTrafficMirrorFilterEgressRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetTrafficMirrorFilterEgressRulesRule> rules;
  final String? status;
  final String trafficMirrorFilterId;

  /// Creates a new [GetTrafficMirrorFilterEgressRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [rules] Required.
  /// [status] Optional.
  /// [trafficMirrorFilterId] Required.
  GetTrafficMirrorFilterEgressRulesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.rules,
    this.status,
    required this.trafficMirrorFilterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetTrafficMirrorFilterEgressRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
      'trafficMirrorFilterId': trafficMirrorFilterId,
    };
  }

  factory GetTrafficMirrorFilterEgressRulesResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorFilterEgressRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      rules: pulumi.Input.decodeList<GetTrafficMirrorFilterEgressRulesRule>(map['rules'], (value) => GetTrafficMirrorFilterEgressRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
      trafficMirrorFilterId: map['trafficMirrorFilterId'] as String,
    );
  }
}

