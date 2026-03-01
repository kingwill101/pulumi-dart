// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_status_details.dart';
import 'summary_status_enum_value.dart';

/// Definition of InstanceStatusSummary
class InstanceStatusSummary {
  /// <p>The system instance health or application instance health.</p>
  final List<InstanceStatusDetails>? details;
  /// <p>The status.</p>
  final SummaryStatusEnumValue? status;

  /// Creates a new [InstanceStatusSummary].
  /// [details] <p>The system instance health or application instance health.</p>
  /// [status] <p>The status.</p>
  InstanceStatusSummary({
    this.details,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details == null ? null : pulumi.Input.encodeList<InstanceStatusDetails, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory InstanceStatusSummary.fromMap(Map<String, dynamic> map) {
    return InstanceStatusSummary(
      details: map['details'] == null ? null : pulumi.Input.decodeList<InstanceStatusDetails>(map['details'], (value) => InstanceStatusDetails.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : SummaryStatusEnumValue.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

