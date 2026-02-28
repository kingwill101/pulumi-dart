// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_rule.dart';

/// Result data returned by getForwardingRules.
class GetForwardingRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The project name being queried.
  final String? project;

  /// The region being queried.
  final String? region;

  /// This is a list of the forwarding rules in the project. Each forwarding rule will list the backend, description, ip address. name, network, self link, service label, service name, and subnet.
  final List<GetForwardingRulesRule> rules;

  /// Creates a new [GetForwardingRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] The project name being queried.
  /// [region] The region being queried.
  /// [rules] This is a list of the forwarding rules in the project. Each forwarding rule will list the backend, description, ip address. name, network, self link, service label, service name, and subnet.
  GetForwardingRulesResult({
    required this.id,
    this.project,
    this.region,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rules'] =
        pulumi.Input.encodeList<GetForwardingRulesRule, Map<String, dynamic>>(
            rules, (value) => value.toMap());
    return map;
  }

  factory GetForwardingRulesResult.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesResult(
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: pulumi.Input.decodeList<GetForwardingRulesRule>(
          map['rules'],
          (value) => GetForwardingRulesRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
