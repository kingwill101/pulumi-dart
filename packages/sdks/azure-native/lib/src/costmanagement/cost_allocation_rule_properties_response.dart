// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_allocation_rule_details_response.dart';

/// The properties of a cost allocation rule
class CostAllocationRulePropertiesResponse {
  /// Time at which the rule was created. Rules that change cost for the same resource are applied in order of creation.
  final pulumi.Input<String> createdDate;
  /// Description of a cost allocation rule.
  final pulumi.Input<String>? description;
  /// Resource information for the cost allocation rule
  final pulumi.Input<CostAllocationRuleDetailsResponse> details;
  /// Status of the rule
  final pulumi.Input<String> status;
  /// Time at which the rule was last updated.
  final pulumi.Input<String> updatedDate;

  /// Creates a new [CostAllocationRulePropertiesResponse].
  /// [createdDate] Time at which the rule was created. Rules that change cost for the same resource are applied in order of creation.
  /// [description] Description of a cost allocation rule.
  /// [details] Resource information for the cost allocation rule
  /// [status] Status of the rule
  /// [updatedDate] Time at which the rule was last updated.
  const CostAllocationRulePropertiesResponse({
    required this.createdDate,
    this.description,
    required this.details,
    required this.status,
    required this.updatedDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': createdDate,
      'description': ?description,
      'details': pulumi.Input.mapInputValue<CostAllocationRuleDetailsResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'status': status,
      'updatedDate': updatedDate,
    };
  }

  factory CostAllocationRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CostAllocationRulePropertiesResponse(
      createdDate: pulumi.Input.fromValue(map['createdDate'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: pulumi.Input.fromValue(CostAllocationRuleDetailsResponse.fromMap((map['details']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedDate: pulumi.Input.fromValue(map['updatedDate'] as String),
    );
  }
}
