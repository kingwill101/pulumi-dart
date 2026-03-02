// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_status_details_response.dart';
import 'summary_status_enum_value_response.dart';

/// Definition of InstanceStatusSummary
class InstanceStatusSummaryResponse {
  /// <p>The system instance health or application instance health.</p>
  final pulumi.Input<List<InstanceStatusDetailsResponse>>? details;
  /// <p>The status.</p>
  final pulumi.Input<SummaryStatusEnumValueResponse>? status;

  /// Creates a new [InstanceStatusSummaryResponse].
  /// [details] <p>The system instance health or application instance health.</p>
  /// [status] <p>The status.</p>
  InstanceStatusSummaryResponse({
    this.details,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<List<InstanceStatusDetailsResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<InstanceStatusDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?pulumi.Input.mapOptionalInputValue<SummaryStatusEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory InstanceStatusSummaryResponse.fromMap(Map<String, dynamic> map) {
    return InstanceStatusSummaryResponse(
      details: map['details'] == null ? null : (pulumi.Input.decodeList<InstanceStatusDetailsResponse>(map['details'], (value) => InstanceStatusDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (SummaryStatusEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

