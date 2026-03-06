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
  const ListCapacityPoolVolumeQuotaReportResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<QuotaReportResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListCapacityPoolVolumeQuotaReportResult.fromMap(Map<String, dynamic> map) {
    return ListCapacityPoolVolumeQuotaReportResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<QuotaReportResponse>(guardedValue, (value) => QuotaReportResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

