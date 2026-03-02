// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compliance_execution_summary_response.dart';
import 'compliance_severity_enum_value_response.dart';
import 'compliance_status_enum_value_response.dart';
import 'compliant_summary_response.dart';
import 'non_compliant_summary_response.dart';

/// Definition of awsSsmResourceComplianceSummaryItem
class AwsSsmResourceComplianceSummaryItemPropertiesResponse {
  /// <p>The compliance type.</p>
  final pulumi.Input<String>? complianceType;
  /// <p>A list of items that are compliant for the resource.</p>
  final pulumi.Input<CompliantSummaryResponse>? compliantSummary;
  /// <p>Information about the execution.</p>
  final pulumi.Input<ComplianceExecutionSummaryResponse>? executionSummary;
  /// <p>A list of items that aren't compliant for the resource.</p>
  final pulumi.Input<NonCompliantSummaryResponse>? nonCompliantSummary;
  /// <p>The highest severity item found for the resource. The resource is compliant for this item.</p>
  final pulumi.Input<ComplianceSeverityEnumValueResponse>? overallSeverity;
  /// <p>The resource ID.</p>
  final pulumi.Input<String>? resourceId;
  /// <p>The resource type.</p>
  final pulumi.Input<String>? resourceType;
  /// <p>The compliance status for the resource.</p>
  final pulumi.Input<ComplianceStatusEnumValueResponse>? status;

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
      'compliantSummary': ?pulumi.Input.mapOptionalInputValue<CompliantSummaryResponse, Map<String, dynamic>>(compliantSummary, (value) => value.toMap()),
      'executionSummary': ?pulumi.Input.mapOptionalInputValue<ComplianceExecutionSummaryResponse, Map<String, dynamic>>(executionSummary, (value) => value.toMap()),
      'nonCompliantSummary': ?pulumi.Input.mapOptionalInputValue<NonCompliantSummaryResponse, Map<String, dynamic>>(nonCompliantSummary, (value) => value.toMap()),
      'overallSeverity': ?pulumi.Input.mapOptionalInputValue<ComplianceSeverityEnumValueResponse, Map<String, dynamic>>(overallSeverity, (value) => value.toMap()),
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?pulumi.Input.mapOptionalInputValue<ComplianceStatusEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory AwsSsmResourceComplianceSummaryItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSsmResourceComplianceSummaryItemPropertiesResponse(
      complianceType: map['complianceType'] == null ? null : (map['complianceType']! as String).input(),
      compliantSummary: map['compliantSummary'] == null ? null : (CompliantSummaryResponse.fromMap((map['compliantSummary']! as Map).cast<String, dynamic>())).input(),
      executionSummary: map['executionSummary'] == null ? null : (ComplianceExecutionSummaryResponse.fromMap((map['executionSummary']! as Map).cast<String, dynamic>())).input(),
      nonCompliantSummary: map['nonCompliantSummary'] == null ? null : (NonCompliantSummaryResponse.fromMap((map['nonCompliantSummary']! as Map).cast<String, dynamic>())).input(),
      overallSeverity: map['overallSeverity'] == null ? null : (ComplianceSeverityEnumValueResponse.fromMap((map['overallSeverity']! as Map).cast<String, dynamic>())).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      status: map['status'] == null ? null : (ComplianceStatusEnumValueResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

