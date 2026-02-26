// ignore_for_file: unused_element, unnecessary_cast

import '../centralization_rule_for_organization_rule_destination/centralization_rule_for_organization_rule_destination.dart';
import '../centralization_rule_for_organization_rule_source/centralization_rule_for_organization_rule_source.dart';

class CentralizationRuleForOrganizationRule {
  /// Configuration block for the destination where logs will be centralized. See <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> below.
  final CentralizationRuleForOrganizationRuleDestination destination;

  /// Configuration block for the source of logs to be centralized. See <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> below.
  final CentralizationRuleForOrganizationRuleSource source;

  CentralizationRuleForOrganizationRule({
    required this.destination,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination.toMap();
    map['source'] = source.toMap();
    return map;
  }

  factory CentralizationRuleForOrganizationRule.fromMap(
      Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRule(
      destination: CentralizationRuleForOrganizationRuleDestination.fromMap(
          (map['destination'] as Map).cast<String, dynamic>()),
      source: CentralizationRuleForOrganizationRuleSource.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
