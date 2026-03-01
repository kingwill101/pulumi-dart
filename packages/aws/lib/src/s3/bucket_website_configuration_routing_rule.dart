// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_website_configuration_routing_rule_condition.dart';
import 'bucket_website_configuration_routing_rule_redirect.dart';

class BucketWebsiteConfigurationRoutingRule {
  /// Configuration block for describing a condition that must be met for the specified redirect to apply. See below.
  final BucketWebsiteConfigurationRoutingRuleCondition? condition;

  /// Configuration block for redirect information. See below.
  final BucketWebsiteConfigurationRoutingRuleRedirect redirect;

  /// Creates a new [BucketWebsiteConfigurationRoutingRule].
  /// [condition] Configuration block for describing a condition that must be met for the specified redirect to apply. See below.
  /// [redirect] Configuration block for redirect information. See below.
  BucketWebsiteConfigurationRoutingRule({
    this.condition,
    required this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition == null ? null : condition!.toMap(),
      'redirect': redirect.toMap(),
    };
  }

  factory BucketWebsiteConfigurationRoutingRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteConfigurationRoutingRule(
      condition: map['condition'] == null
          ? null
          : BucketWebsiteConfigurationRoutingRuleCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      redirect: BucketWebsiteConfigurationRoutingRuleRedirect.fromMap(
        (map['redirect'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
