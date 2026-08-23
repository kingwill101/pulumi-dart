// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_report_resource_compliance_reason_response.dart';

/// The guest configuration assignment resource.
class AssignmentReportResourceResponse {
  /// A value indicating compliance status of the machine for the assigned guest configuration.
  final pulumi.Input<String> complianceStatus;
  /// Properties of a guest configuration assignment resource.
  final pulumi.Input<dynamic> properties;
  /// Compliance reason and reason code for a resource.
  final pulumi.Input<List<AssignmentReportResourceComplianceReasonResponse>>? reasons;
  /// Name of the guest configuration assignment resource setting.
  final pulumi.Input<String> resourceId;

  /// Creates a new [AssignmentReportResourceResponse].
  /// [complianceStatus] A value indicating compliance status of the machine for the assigned guest configuration.
  /// [properties] Properties of a guest configuration assignment resource.
  /// [reasons] Compliance reason and reason code for a resource.
  /// [resourceId] Name of the guest configuration assignment resource setting.
  const AssignmentReportResourceResponse({
    required this.complianceStatus,
    required this.properties,
    this.reasons,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStatus': complianceStatus,
      'properties': properties,
      'reasons': ?pulumi.Input.mapOptionalInputValue<List<AssignmentReportResourceComplianceReasonResponse>, List<Map<String, dynamic>>>(reasons, (value) => pulumi.Input.encodeList<AssignmentReportResourceComplianceReasonResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceId': resourceId,
    };
  }

  factory AssignmentReportResourceResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentReportResourceResponse(
      complianceStatus: pulumi.Input.fromValue(map['complianceStatus'] as String),
      properties: pulumi.Input.fromValue(map['properties']),
      reasons: (() { final guardedValue = map['reasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssignmentReportResourceComplianceReasonResponse>(guardedValue, (value) => AssignmentReportResourceComplianceReasonResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
