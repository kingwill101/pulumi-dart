// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_multi_alternates_mirror_multi_alternate.dart';

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates {
  /// Mirror back-to-source multi-source station configuration list See `mirror_multi_alternate` below.
  final pulumi.Input<List<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate>>? mirrorMultiAlternates;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates].
  /// [mirrorMultiAlternates] Mirror back-to-source multi-source station configuration list See `mirror_multi_alternate` below.
  const BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates({
    this.mirrorMultiAlternates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mirrorMultiAlternates': ?pulumi.Input.mapOptionalInputValue<List<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate>, List<Map<String, dynamic>>>(mirrorMultiAlternates, (value) => pulumi.Input.encodeList<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates(
      mirrorMultiAlternates: (() { final guardedValue = map['mirrorMultiAlternates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate>(guardedValue, (value) => BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

