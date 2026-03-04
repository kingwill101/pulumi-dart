// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Business case report details.
class ReportDetailsResponse {
  /// Report status.
  final pulumi.Input<String> reportStatus;

  /// Report type.
  final pulumi.Input<String> reportType;

  /// Creates a new [ReportDetailsResponse].
  /// [reportStatus] Report status.
  /// [reportType] Report type.
  ReportDetailsResponse({required this.reportStatus, required this.reportType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportStatus': reportStatus,
      'reportType': reportType,
    };
  }

  factory ReportDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReportDetailsResponse(
      reportStatus: pulumi.Input.fromValue(map['reportStatus'] as String),
      reportType: pulumi.Input.fromValue(map['reportType'] as String),
    );
  }
}
