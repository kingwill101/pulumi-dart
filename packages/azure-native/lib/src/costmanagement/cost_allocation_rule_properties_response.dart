// ignore_for_file: unused_element, unnecessary_cast

import 'cost_allocation_rule_details_response.dart';

/// The properties of a cost allocation rule
class CostAllocationRulePropertiesResponse {
  /// Time at which the rule was created. Rules that change cost for the same resource are applied in order of creation.
  final String createdDate;
  /// Description of a cost allocation rule.
  final String? description;
  /// Resource information for the cost allocation rule
  final CostAllocationRuleDetailsResponse details;
  /// Status of the rule
  final String status;
  /// Time at which the rule was last updated.
  final String updatedDate;

  /// Creates a new [CostAllocationRulePropertiesResponse].
  /// [createdDate] Time at which the rule was created. Rules that change cost for the same resource are applied in order of creation.
  /// [description] Description of a cost allocation rule.
  /// [details] Resource information for the cost allocation rule
  /// [status] Status of the rule
  /// [updatedDate] Time at which the rule was last updated.
  CostAllocationRulePropertiesResponse({
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
      'details': details.toMap(),
      'status': status,
      'updatedDate': updatedDate,
    };
  }

  factory CostAllocationRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CostAllocationRulePropertiesResponse(
      createdDate: map['createdDate'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      details: CostAllocationRuleDetailsResponse.fromMap((map['details'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      updatedDate: map['updatedDate'] as String,
    );
  }
}

