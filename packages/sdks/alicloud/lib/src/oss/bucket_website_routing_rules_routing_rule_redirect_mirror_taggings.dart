// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_taggings_tagging.dart';

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings {
  /// Image back-to-source save label rule list See `taggings` below.
  final List<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging>? taggings;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings].
  /// [taggings] Image back-to-source save label rule list See `taggings` below.
  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings({
    this.taggings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taggings': ?taggings == null ? null : pulumi.Input.encodeList<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging, Map<String, dynamic>>(taggings!, (value) => value.toMap()),
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings(
      taggings: map['taggings'] == null ? null : pulumi.Input.decodeList<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging>(map['taggings'], (value) => BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

