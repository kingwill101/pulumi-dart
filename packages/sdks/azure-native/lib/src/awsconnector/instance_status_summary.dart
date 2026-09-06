// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_status_details.dart';
import 'summary_status_enum_value.dart';

/// Definition of InstanceStatusSummary
class InstanceStatusSummary {
  /// &lt;p&gt;The system instance health or application instance health.&lt;/p&gt;
  final pulumi.Input<List<InstanceStatusDetails>?>? details;
  /// &lt;p&gt;The status.&lt;/p&gt;
  final pulumi.Input<SummaryStatusEnumValue?>? status;

  /// Creates a new [InstanceStatusSummary].
  /// [details] &lt;p&gt;The system instance health or application instance health.&lt;/p&gt;
  /// [status] &lt;p&gt;The status.&lt;/p&gt;
  const InstanceStatusSummary({
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
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceStatusDetails>(guardedValue, (value) => InstanceStatusDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SummaryStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
