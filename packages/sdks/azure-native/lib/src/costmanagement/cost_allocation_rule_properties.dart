// ignore_for_file: unused_element, unnecessary_cast

import 'cost_allocation_rule_details.dart';

/// The properties of a cost allocation rule
class CostAllocationRuleProperties {
  /// Description of a cost allocation rule.
  final String? description;
  /// Resource information for the cost allocation rule
  final CostAllocationRuleDetails details;
  /// Status of the rule
  final String status;

  /// Creates a new [CostAllocationRuleProperties].
  /// [description] Description of a cost allocation rule.
  /// [details] Resource information for the cost allocation rule
  /// [status] Status of the rule
  CostAllocationRuleProperties({
    this.description,
    required this.details,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'details': details.toMap(),
      'status': status,
    };
  }

  factory CostAllocationRuleProperties.fromMap(Map<String, dynamic> map) {
    return CostAllocationRuleProperties(
      description: map['description'] == null ? null : map['description'] as String,
      details: CostAllocationRuleDetails.fromMap((map['details'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}

