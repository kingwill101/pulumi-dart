// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compliance_execution_summary.dart';
import 'compliance_severity_enum_value.dart';
import 'compliance_status_enum_value.dart';
import 'compliant_summary.dart';
import 'non_compliant_summary.dart';

/// Definition of awsSsmResourceComplianceSummaryItem
class AwsSsmResourceComplianceSummaryItemProperties {
  /// &lt;p&gt;The compliance type.&lt;/p&gt;
  final pulumi.Input<String>? complianceType;

  /// &lt;p&gt;A list of items that are compliant for the resource.&lt;/p&gt;
  final pulumi.Input<CompliantSummary>? compliantSummary;

  /// &lt;p&gt;Information about the execution.&lt;/p&gt;
  final pulumi.Input<ComplianceExecutionSummary>? executionSummary;

  /// &lt;p&gt;A list of items that aren't compliant for the resource.&lt;/p&gt;
  final pulumi.Input<NonCompliantSummary>? nonCompliantSummary;

  /// &lt;p&gt;The highest severity item found for the resource. The resource is compliant for this item.&lt;/p&gt;
  final pulumi.Input<ComplianceSeverityEnumValue>? overallSeverity;

  /// &lt;p&gt;The resource ID.&lt;/p&gt;
  final pulumi.Input<String>? resourceId;

  /// &lt;p&gt;The resource type.&lt;/p&gt;
  final pulumi.Input<String>? resourceType;

  /// &lt;p&gt;The compliance status for the resource.&lt;/p&gt;
  final pulumi.Input<ComplianceStatusEnumValue>? status;

  /// Creates a new [AwsSsmResourceComplianceSummaryItemProperties].
  /// [complianceType] &lt;p&gt;The compliance type.&lt;/p&gt;
  /// [compliantSummary] &lt;p&gt;A list of items that are compliant for the resource.&lt;/p&gt;
  /// [executionSummary] &lt;p&gt;Information about the execution.&lt;/p&gt;
  /// [nonCompliantSummary] &lt;p&gt;A list of items that aren't compliant for the resource.&lt;/p&gt;
  /// [overallSeverity] &lt;p&gt;The highest severity item found for the resource. The resource is compliant for this item.&lt;/p&gt;
  /// [resourceId] &lt;p&gt;The resource ID.&lt;/p&gt;
  /// [resourceType] &lt;p&gt;The resource type.&lt;/p&gt;
  /// [status] &lt;p&gt;The compliance status for the resource.&lt;/p&gt;
  AwsSsmResourceComplianceSummaryItemProperties({
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
      'compliantSummary':
          ?pulumi.Input.mapOptionalInputValue<
            CompliantSummary,
            Map<String, dynamic>
          >(compliantSummary, (value) => value.toMap()),
      'executionSummary':
          ?pulumi.Input.mapOptionalInputValue<
            ComplianceExecutionSummary,
            Map<String, dynamic>
          >(executionSummary, (value) => value.toMap()),
      'nonCompliantSummary':
          ?pulumi.Input.mapOptionalInputValue<
            NonCompliantSummary,
            Map<String, dynamic>
          >(nonCompliantSummary, (value) => value.toMap()),
      'overallSeverity':
          ?pulumi.Input.mapOptionalInputValue<
            ComplianceSeverityEnumValue,
            Map<String, dynamic>
          >(overallSeverity, (value) => value.toMap()),
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            ComplianceStatusEnumValue,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory AwsSsmResourceComplianceSummaryItemProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsSsmResourceComplianceSummaryItemProperties(
      complianceType: (() {
        final guardedValue = map['complianceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      compliantSummary: (() {
        final guardedValue = map['compliantSummary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CompliantSummary.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      executionSummary: (() {
        final guardedValue = map['executionSummary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComplianceExecutionSummary.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nonCompliantSummary: (() {
        final guardedValue = map['nonCompliantSummary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NonCompliantSummary.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      overallSeverity: (() {
        final guardedValue = map['overallSeverity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComplianceSeverityEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComplianceStatusEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
