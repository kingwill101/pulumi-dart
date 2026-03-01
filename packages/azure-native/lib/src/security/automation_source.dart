// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_set.dart';

/// The source event types which evaluate the security automation set of rules. For example - security alerts and security assessments. To learn more about the supported security events data models schemas - please visit https://aka.ms/ASCAutomationSchemas.
class AutomationSource {
  /// A valid event source type.
  final String? eventSource;
  /// A set of rules which evaluate upon event interception. A logical disjunction is applied between defined rule sets (logical 'or').
  final List<AutomationRuleSet>? ruleSets;

  /// Creates a new [AutomationSource].
  /// [eventSource] A valid event source type.
  /// [ruleSets] A set of rules which evaluate upon event interception. A logical disjunction is applied between defined rule sets (logical 'or').
  AutomationSource({
    this.eventSource,
    this.ruleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSource': ?eventSource,
      'ruleSets': ?ruleSets == null ? null : pulumi.Input.encodeList<AutomationRuleSet, Map<String, dynamic>>(ruleSets!, (value) => value.toMap()),
    };
  }

  factory AutomationSource.fromMap(Map<String, dynamic> map) {
    return AutomationSource(
      eventSource: map['eventSource'] == null ? null : map['eventSource'] as String,
      ruleSets: map['ruleSets'] == null ? null : pulumi.Input.decodeList<AutomationRuleSet>(map['ruleSets'], (value) => AutomationRuleSet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

