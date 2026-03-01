// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_report_resource_compliance_reason_response.dart';

/// The guest configuration assignment resource.
class AssignmentReportResourceResponse {
  /// A value indicating compliance status of the machine for the assigned guest configuration.
  final String complianceStatus;
  /// Properties of a guest configuration assignment resource.
  final dynamic properties;
  /// Compliance reason and reason code for a resource.
  final List<AssignmentReportResourceComplianceReasonResponse>? reasons;
  /// Name of the guest configuration assignment resource setting.
  final String resourceId;

  /// Creates a new [AssignmentReportResourceResponse].
  /// [complianceStatus] A value indicating compliance status of the machine for the assigned guest configuration.
  /// [properties] Properties of a guest configuration assignment resource.
  /// [reasons] Compliance reason and reason code for a resource.
  /// [resourceId] Name of the guest configuration assignment resource setting.
  AssignmentReportResourceResponse({
    required this.complianceStatus,
    required this.properties,
    this.reasons,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceStatus': complianceStatus,
      'properties': properties,
      'reasons': ?reasons == null ? null : pulumi.Input.encodeList<AssignmentReportResourceComplianceReasonResponse, Map<String, dynamic>>(reasons!, (value) => value.toMap()),
      'resourceId': resourceId,
    };
  }

  factory AssignmentReportResourceResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentReportResourceResponse(
      complianceStatus: map['complianceStatus'] as String,
      properties: map['properties'],
      reasons: map['reasons'] == null ? null : pulumi.Input.decodeList<AssignmentReportResourceComplianceReasonResponse>(map['reasons'], (value) => AssignmentReportResourceComplianceReasonResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceId: map['resourceId'] as String,
    );
  }
}

