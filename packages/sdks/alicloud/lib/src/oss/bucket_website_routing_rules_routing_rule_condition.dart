// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_condition_include_header.dart';

class BucketWebsiteRoutingRulesRoutingRuleCondition {
  /// When the specified Object is accessed, this status is returned to match this rule. This field must be 404 when the jump rule is mirrored back to the source.
  final pulumi.Input<String>? httpErrorCodeReturnedEquals;
  /// This rule can only be matched if the request contains the specified Header and the value is the specified value. You can specify up to 10 containers. See `include_headers` below.
  final pulumi.Input<List<BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader>>? includeHeaders;
  /// Only objects that match this prefix can match this rule.
  final pulumi.Input<String>? keyPrefixEquals;
  /// Only objects that match this suffix can match this rule.
  final pulumi.Input<String>? keySuffixEquals;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleCondition].
  /// [httpErrorCodeReturnedEquals] When the specified Object is accessed, this status is returned to match this rule. This field must be 404 when the jump rule is mirrored back to the source.
  /// [includeHeaders] This rule can only be matched if the request contains the specified Header and the value is the specified value. You can specify up to 10 containers. See `include_headers` below.
  /// [keyPrefixEquals] Only objects that match this prefix can match this rule.
  /// [keySuffixEquals] Only objects that match this suffix can match this rule.
  BucketWebsiteRoutingRulesRoutingRuleCondition({
    this.httpErrorCodeReturnedEquals,
    this.includeHeaders,
    this.keyPrefixEquals,
    this.keySuffixEquals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpErrorCodeReturnedEquals': ?httpErrorCodeReturnedEquals,
      'includeHeaders': ?pulumi.Input.mapOptionalInputValue<List<BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader>, List<Map<String, dynamic>>>(includeHeaders, (value) => pulumi.Input.encodeList<BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyPrefixEquals': ?keyPrefixEquals,
      'keySuffixEquals': ?keySuffixEquals,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleCondition.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleCondition(
      httpErrorCodeReturnedEquals: map['httpErrorCodeReturnedEquals'] == null ? null : (map['httpErrorCodeReturnedEquals']! as String).input(),
      includeHeaders: map['includeHeaders'] == null ? null : (pulumi.Input.decodeList<BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader>(map['includeHeaders']!, (value) => BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyPrefixEquals: map['keyPrefixEquals'] == null ? null : (map['keyPrefixEquals']! as String).input(),
      keySuffixEquals: map['keySuffixEquals'] == null ? null : (map['keySuffixEquals']! as String).input(),
    );
  }
}

