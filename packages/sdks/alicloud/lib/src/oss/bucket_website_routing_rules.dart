// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule.dart';

class BucketWebsiteRoutingRules {
  /// Specify a jump rule or a mirroring back-to-origin rule, with a maximum of 20 routing rules. See `routing_rule` below.
  final pulumi.Input<List<BucketWebsiteRoutingRulesRoutingRule>>? routingRules;

  /// Creates a new [BucketWebsiteRoutingRules].
  /// [routingRules] Specify a jump rule or a mirroring back-to-origin rule, with a maximum of 20 routing rules. See `routing_rule` below.
  const BucketWebsiteRoutingRules({
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<BucketWebsiteRoutingRulesRoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<BucketWebsiteRoutingRulesRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketWebsiteRoutingRules.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRules(
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketWebsiteRoutingRulesRoutingRule>(guardedValue, (value) => BucketWebsiteRoutingRulesRoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

