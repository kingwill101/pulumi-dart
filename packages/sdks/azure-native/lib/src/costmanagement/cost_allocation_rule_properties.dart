// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_allocation_rule_details.dart';

/// The properties of a cost allocation rule
class CostAllocationRuleProperties {
  /// Description of a cost allocation rule.
  final pulumi.Input<String>? description;
  /// Resource information for the cost allocation rule
  final pulumi.Input<CostAllocationRuleDetails> details;
  /// Status of the rule
  final pulumi.Input<String> status;

  /// Creates a new [CostAllocationRuleProperties].
  /// [description] Description of a cost allocation rule.
  /// [details] Resource information for the cost allocation rule
  /// [status] Status of the rule
  const CostAllocationRuleProperties({
    this.description,
    required this.details,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'details': pulumi.Input.mapInputValue<CostAllocationRuleDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'status': status,
    };
  }

  factory CostAllocationRuleProperties.fromMap(Map<String, dynamic> map) {
    return CostAllocationRuleProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: pulumi.Input.fromValue(CostAllocationRuleDetails.fromMap((map['details']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
