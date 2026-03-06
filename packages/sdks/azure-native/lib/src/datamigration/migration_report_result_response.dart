// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration validation report result, contains the url for downloading the generated report.
class MigrationReportResultResponse {
  /// Migration validation result identifier
  final pulumi.Input<String>? id;
  /// The url of the report.
  final pulumi.Input<String>? reportUrl;

  /// Creates a new [MigrationReportResultResponse].
  /// [id] Migration validation result identifier
  /// [reportUrl] The url of the report.
  const MigrationReportResultResponse({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportUrl: (() { final guardedValue = map['reportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

