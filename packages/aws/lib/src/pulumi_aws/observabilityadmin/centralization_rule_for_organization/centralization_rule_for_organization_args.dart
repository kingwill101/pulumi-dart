// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../centralization_rule_for_organization_rule/centralization_rule_for_organization_rule.dart';
import '../centralization_rule_for_organization_timeouts/centralization_rule_for_organization_timeouts.dart';

/// The set of arguments for CentralizationRuleForOrganization.
class CentralizationRuleForOrganizationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for the centralization rule. See `rule` below.
  ///
  /// The following arguments are optional:
  final Input<CentralizationRuleForOrganizationRule> rule;

  /// Name of the centralization rule. Must be unique within the organization.
  final Input<String> ruleName;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<CentralizationRuleForOrganizationTimeouts>? timeouts;

  CentralizationRuleForOrganizationArgs({
    this.region,
    required this.rule,
    required this.ruleName,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rule'] = Input.mapInputValue<CentralizationRuleForOrganizationRule,
        Map<String, dynamic>>(rule, (value) => value.toMap());
    map['ruleName'] = ruleName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          CentralizationRuleForOrganizationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CentralizationRuleForOrganizationArgs.fromMap(
      Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      rule: Input.asInput<CentralizationRuleForOrganizationRule>(map['rule']),
      ruleName: Input.asInput<String>(map['ruleName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<CentralizationRuleForOrganizationTimeouts>(
              map['timeouts']),
    );
  }
}
