// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_report_response.dart';

/// Result data returned by listCapacityPoolVolumeQuotaReport.
class ListCapacityPoolVolumeQuotaReportResult {
  /// URL to get the next set of results.
  final String? nextLink;
  /// List of volume quota report records
  final List<QuotaReportResponse>? value;

  /// Creates a new [ListCapacityPoolVolumeQuotaReportResult].
  /// [nextLink] URL to get the next set of results.
  /// [value] List of volume quota report records
  ListCapacityPoolVolumeQuotaReportResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<QuotaReportResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListCapacityPoolVolumeQuotaReportResult.fromMap(Map<String, dynamic> map) {
    return ListCapacityPoolVolumeQuotaReportResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<QuotaReportResponse>(map['value']!, (value) => QuotaReportResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

