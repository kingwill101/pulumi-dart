// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule_destination.dart';
import 'centralization_rule_for_organization_rule_source.dart';

class CentralizationRuleForOrganizationRule {
  /// Configuration block for the destination where telemetry will be centralized. See `destination` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestination> destination;
  /// Configuration block for the source of logs to be centralized. See `source` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleSource> source;

  /// Creates a new [CentralizationRuleForOrganizationRule].
  /// [destination] Configuration block for the destination where telemetry will be centralized. See `destination` below.
  /// [source] Configuration block for the source of logs to be centralized. See `source` below.
  const CentralizationRuleForOrganizationRule({
    required this.destination,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<CentralizationRuleForOrganizationRuleDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'source': pulumi.Input.mapInputValue<CentralizationRuleForOrganizationRuleSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory CentralizationRuleForOrganizationRule.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRule(
      destination: pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      source: pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
