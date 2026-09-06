// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBusinessCaseOperationReportDownloadUrl.
class GetBusinessCaseOperationReportDownloadUrlResult {
  /// Hyperlink to download report.
  final String? businessCaseReportUrl;
  /// Expiry date of download url.
  final String? expirationTime;

  /// Creates a new [GetBusinessCaseOperationReportDownloadUrlResult].
  /// [businessCaseReportUrl] Hyperlink to download report.
  /// [expirationTime] Expiry date of download url.
  const GetBusinessCaseOperationReportDownloadUrlResult({
    this.businessCaseReportUrl,
    this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessCaseReportUrl': ?businessCaseReportUrl,
      'expirationTime': ?expirationTime,
    };
  }

  factory GetBusinessCaseOperationReportDownloadUrlResult.fromMap(Map<String, dynamic> map) {
    return GetBusinessCaseOperationReportDownloadUrlResult(
      businessCaseReportUrl: (() { final guardedValue = map['businessCaseReportUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
