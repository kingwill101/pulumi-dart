// ignore_for_file: unused_element, unnecessary_cast

import 'overview_status_response.dart';

/// A list which includes all the compliance result for one report.
class ReportComplianceStatusResponse {
  /// The Microsoft 365 certification name.
  final OverviewStatusResponse m365;

  /// Creates a new [ReportComplianceStatusResponse].
  /// [m365] The Microsoft 365 certification name.
  ReportComplianceStatusResponse({
    required this.m365,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'm365': m365.toMap(),
    };
  }

  factory ReportComplianceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ReportComplianceStatusResponse(
      m365: OverviewStatusResponse.fromMap((map['m365'] as Map).cast<String, dynamic>()),
    );
  }
}

