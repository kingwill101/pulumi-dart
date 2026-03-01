// ignore_for_file: unused_element, unnecessary_cast


/// Migration validation report result, contains the url for downloading the generated report.
class MigrationReportResultResponse {
  /// Migration validation result identifier
  final String? id;
  /// The url of the report.
  final String? reportUrl;

  /// Creates a new [MigrationReportResultResponse].
  /// [id] Migration validation result identifier
  /// [reportUrl] The url of the report.
  MigrationReportResultResponse({
    this.id,
    this.reportUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'reportUrl': ?reportUrl,
    };
  }

  factory MigrationReportResultResponse.fromMap(Map<String, dynamic> map) {
    return MigrationReportResultResponse(
      id: map['id'] == null ? null : map['id'] as String,
      reportUrl: map['reportUrl'] == null ? null : map['reportUrl'] as String,
    );
  }
}

