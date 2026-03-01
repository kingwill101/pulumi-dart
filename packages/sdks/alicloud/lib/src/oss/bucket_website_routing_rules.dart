// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule.dart';

class BucketWebsiteRoutingRules {
  /// Specify a jump rule or a mirroring back-to-origin rule, with a maximum of 20 routing rules. See `routing_rule` below.
  final List<BucketWebsiteRoutingRulesRoutingRule>? routingRules;

  /// Creates a new [BucketWebsiteRoutingRules].
  /// [routingRules] Specify a jump rule or a mirroring back-to-origin rule, with a maximum of 20 routing rules. See `routing_rule` below.
  BucketWebsiteRoutingRules({
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingRules': ?routingRules == null ? null : pulumi.Input.encodeList<BucketWebsiteRoutingRulesRoutingRule, Map<String, dynamic>>(routingRules!, (value) => value.toMap()),
    };
  }

  factory BucketWebsiteRoutingRules.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRules(
      routingRules: map['routingRules'] == null ? null : pulumi.Input.decodeList<BucketWebsiteRoutingRulesRoutingRule>(map['routingRules'], (value) => BucketWebsiteRoutingRulesRoutingRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

