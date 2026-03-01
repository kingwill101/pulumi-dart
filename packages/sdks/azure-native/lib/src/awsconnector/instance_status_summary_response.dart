// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_status_details_response.dart';
import 'summary_status_enum_value_response.dart';

/// Definition of InstanceStatusSummary
class InstanceStatusSummaryResponse {
  /// <p>The system instance health or application instance health.</p>
  final List<InstanceStatusDetailsResponse>? details;
  /// <p>The status.</p>
  final SummaryStatusEnumValueResponse? status;

  /// Creates a new [InstanceStatusSummaryResponse].
  /// [details] <p>The system instance health or application instance health.</p>
  /// [status] <p>The status.</p>
  InstanceStatusSummaryResponse({
    this.details,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details == null ? null : pulumi.Input.encodeList<InstanceStatusDetailsResponse, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory InstanceStatusSummaryResponse.fromMap(Map<String, dynamic> map) {
    return InstanceStatusSummaryResponse(
      details: map['details'] == null ? null : pulumi.Input.decodeList<InstanceStatusDetailsResponse>(map['details'], (value) => InstanceStatusDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : SummaryStatusEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

