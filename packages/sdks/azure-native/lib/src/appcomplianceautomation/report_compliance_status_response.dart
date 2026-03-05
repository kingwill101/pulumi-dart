// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'overview_status_response.dart';

/// A list which includes all the compliance result for one report.
class ReportComplianceStatusResponse {
  /// The Microsoft 365 certification name.
  final pulumi.Input<OverviewStatusResponse> m365;

  /// Creates a new [ReportComplianceStatusResponse].
  /// [m365] The Microsoft 365 certification name.
  ReportComplianceStatusResponse({
    required this.m365,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'm365': pulumi.Input.mapInputValue<OverviewStatusResponse, Map<String, dynamic>>(m365, (value) => value.toMap()),
    };
  }

  factory ReportComplianceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ReportComplianceStatusResponse(
      m365: pulumi.Input.fromValue(OverviewStatusResponse.fromMap((map['m365']! as Map).cast<String, dynamic>())),
    );
  }
}

