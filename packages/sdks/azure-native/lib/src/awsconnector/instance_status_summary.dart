// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_status_details.dart';
import 'summary_status_enum_value.dart';

/// Definition of InstanceStatusSummary
class InstanceStatusSummary {
  /// <p>The system instance health or application instance health.</p>
  final pulumi.Input<List<InstanceStatusDetails>>? details;
  /// <p>The status.</p>
  final pulumi.Input<SummaryStatusEnumValue>? status;

  /// Creates a new [InstanceStatusSummary].
  /// [details] <p>The system instance health or application instance health.</p>
  /// [status] <p>The status.</p>
  InstanceStatusSummary({
    this.details,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<List<InstanceStatusDetails>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<InstanceStatusDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?pulumi.Input.mapOptionalInputValue<SummaryStatusEnumValue, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory InstanceStatusSummary.fromMap(Map<String, dynamic> map) {
    return InstanceStatusSummary(
      details: map['details'] == null ? null : (pulumi.Input.decodeList<InstanceStatusDetails>(map['details']!, (value) => InstanceStatusDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (SummaryStatusEnumValue.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

