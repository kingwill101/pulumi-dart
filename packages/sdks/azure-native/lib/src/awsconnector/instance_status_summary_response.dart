// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_status_details_response.dart';
import 'summary_status_enum_value_response.dart';

/// Definition of InstanceStatusSummary
class InstanceStatusSummaryResponse {
  /// &lt;p&gt;The system instance health or application instance health.&lt;/p&gt;
  final pulumi.Input<List<InstanceStatusDetailsResponse>>? details;

  /// &lt;p&gt;The status.&lt;/p&gt;
  final pulumi.Input<SummaryStatusEnumValueResponse>? status;

  /// Creates a new [InstanceStatusSummaryResponse].
  /// [details] &lt;p&gt;The system instance health or application instance health.&lt;/p&gt;
  /// [status] &lt;p&gt;The status.&lt;/p&gt;
  InstanceStatusSummaryResponse({this.details, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceStatusDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            details,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceStatusDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            SummaryStatusEnumValueResponse,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory InstanceStatusSummaryResponse.fromMap(Map<String, dynamic> map) {
    return InstanceStatusSummaryResponse(
      details: (() {
        final guardedValue = map['details'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceStatusDetailsResponse>(
            guardedValue,
            (value) => InstanceStatusDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SummaryStatusEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
