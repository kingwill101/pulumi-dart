// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule.dart';

/// The network rule set for a container registry.
class NetworkRuleSet {
  /// The default action of allow or deny when no other rules match.
  final String defaultAction;
  /// The IP ACL rules.
  final List<IPRule>? ipRules;

  /// Creates a new [NetworkRuleSet].
  /// [defaultAction] The default action of allow or deny when no other rules match.
  /// [ipRules] The IP ACL rules.
  NetworkRuleSet({
    required this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
    };
  }

  factory NetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSet(
      defaultAction: map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRule>(map['ipRules'], (value) => IPRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

