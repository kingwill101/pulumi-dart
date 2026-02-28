// ignore_for_file: unused_element, unnecessary_cast

import 'centralization_rule_for_organization_rule_destination.dart';
import 'centralization_rule_for_organization_rule_source.dart';

class CentralizationRuleForOrganizationRule {
  /// Configuration block for the destination where logs will be centralized. See `destination` below.
  final CentralizationRuleForOrganizationRuleDestination destination;
  /// Configuration block for the source of logs to be centralized. See `source` below.
  final CentralizationRuleForOrganizationRuleSource source;

  /// Creates a new [CentralizationRuleForOrganizationRule].
  /// [destination] Configuration block for the destination where logs will be centralized. See `destination` below.
  /// [source] Configuration block for the source of logs to be centralized. See `source` below.
  CentralizationRuleForOrganizationRule({
    required this.destination,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
      'source': source.toMap(),
    };
  }

  factory CentralizationRuleForOrganizationRule.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRule(
      destination: CentralizationRuleForOrganizationRuleDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      source: CentralizationRuleForOrganizationRuleSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

