// ignore_for_file: unused_element, unnecessary_cast

import 'compliance_execution_summary_response.dart';
import 'compliance_severity_enum_value_response.dart';
import 'compliance_status_enum_value_response.dart';
import 'compliant_summary_response.dart';
import 'non_compliant_summary_response.dart';

/// Definition of awsSsmResourceComplianceSummaryItem
class AwsSsmResourceComplianceSummaryItemPropertiesResponse {
  /// <p>The compliance type.</p>
  final String? complianceType;
  /// <p>A list of items that are compliant for the resource.</p>
  final CompliantSummaryResponse? compliantSummary;
  /// <p>Information about the execution.</p>
  final ComplianceExecutionSummaryResponse? executionSummary;
  /// <p>A list of items that aren't compliant for the resource.</p>
  final NonCompliantSummaryResponse? nonCompliantSummary;
  /// <p>The highest severity item found for the resource. The resource is compliant for this item.</p>
  final ComplianceSeverityEnumValueResponse? overallSeverity;
  /// <p>The resource ID.</p>
  final String? resourceId;
  /// <p>The resource type.</p>
  final String? resourceType;
  /// <p>The compliance status for the resource.</p>
  final ComplianceStatusEnumValueResponse? status;

  /// Creates a new [AwsSsmResourceComplianceSummaryItemPropertiesResponse].
  /// [complianceType] <p>The compliance type.</p>
  /// [compliantSummary] <p>A list of items that are compliant for the resource.</p>
  /// [executionSummary] <p>Information about the execution.</p>
  /// [nonCompliantSummary] <p>A list of items that aren't compliant for the resource.</p>
  /// [overallSeverity] <p>The highest severity item found for the resource. The resource is compliant for this item.</p>
  /// [resourceId] <p>The resource ID.</p>
  /// [resourceType] <p>The resource type.</p>
  /// [status] <p>The compliance status for the resource.</p>
  AwsSsmResourceComplianceSummaryItemPropertiesResponse({
    this.complianceType,
    this.compliantSummary,
    this.executionSummary,
    this.nonCompliantSummary,
    this.overallSeverity,
    this.resourceId,
    this.resourceType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceType': ?complianceType,
      'compliantSummary': ?compliantSummary == null ? null : compliantSummary!.toMap(),
      'executionSummary': ?executionSummary == null ? null : executionSummary!.toMap(),
      'nonCompliantSummary': ?nonCompliantSummary == null ? null : nonCompliantSummary!.toMap(),
      'overallSeverity': ?overallSeverity == null ? null : overallSeverity!.toMap(),
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory AwsSsmResourceComplianceSummaryItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSsmResourceComplianceSummaryItemPropertiesResponse(
      complianceType: map['complianceType'] == null ? null : map['complianceType'] as String,
      compliantSummary: map['compliantSummary'] == null ? null : CompliantSummaryResponse.fromMap((map['compliantSummary'] as Map).cast<String, dynamic>()),
      executionSummary: map['executionSummary'] == null ? null : ComplianceExecutionSummaryResponse.fromMap((map['executionSummary'] as Map).cast<String, dynamic>()),
      nonCompliantSummary: map['nonCompliantSummary'] == null ? null : NonCompliantSummaryResponse.fromMap((map['nonCompliantSummary'] as Map).cast<String, dynamic>()),
      overallSeverity: map['overallSeverity'] == null ? null : ComplianceSeverityEnumValueResponse.fromMap((map['overallSeverity'] as Map).cast<String, dynamic>()),
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      status: map['status'] == null ? null : ComplianceStatusEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

