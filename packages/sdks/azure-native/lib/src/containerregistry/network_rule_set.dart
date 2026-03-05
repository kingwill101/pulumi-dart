// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule.dart';

/// The network rule set for a container registry.
class NetworkRuleSet {
  /// The default action of allow or deny when no other rules match.
  final pulumi.Input<String> defaultAction;
  /// The IP ACL rules.
  final pulumi.Input<List<IPRule>>? ipRules;

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
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSet(
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRule>(guardedValue, (value) => IPRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

