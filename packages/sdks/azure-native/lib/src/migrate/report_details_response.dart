// ignore_for_file: unused_element, unnecessary_cast


/// Business case report details.
class ReportDetailsResponse {
  /// Report status.
  final String reportStatus;
  /// Report type.
  final String reportType;

  /// Creates a new [ReportDetailsResponse].
  /// [reportStatus] Report status.
  /// [reportType] Report type.
  ReportDetailsResponse({
    required this.reportStatus,
    required this.reportType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportStatus': reportStatus,
      'reportType': reportType,
    };
  }

  factory ReportDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReportDetailsResponse(
      reportStatus: map['reportStatus'] as String,
      reportType: map['reportType'] as String,
    );
  }
}

