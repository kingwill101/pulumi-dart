// ignore_for_file: unused_element, unnecessary_cast

import '../service_perimeter_status_egress_policy_egress_from/service_perimeter_status_egress_policy_egress_from.dart';
import '../service_perimeter_status_egress_policy_egress_to/service_perimeter_status_egress_policy_egress_to.dart';

class ServicePerimeterStatusEgressPolicy {
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final ServicePerimeterStatusEgressPolicyEgressFrom? egressFrom;

  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final ServicePerimeterStatusEgressPolicyEgressTo? egressTo;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final String? title;

  ServicePerimeterStatusEgressPolicy({
    this.egressFrom,
    this.egressTo,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressFromValue = egressFrom;
    if (egressFromValue != null) {
      map['egressFrom'] = egressFromValue.toMap();
    }
    final egressToValue = egressTo;
    if (egressToValue != null) {
      map['egressTo'] = egressToValue.toMap();
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory ServicePerimeterStatusEgressPolicy.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusEgressPolicy(
      egressFrom: map['egressFrom'] == null
          ? null
          : ServicePerimeterStatusEgressPolicyEgressFrom.fromMap(
              (map['egressFrom'] as Map).cast<String, dynamic>()),
      egressTo: map['egressTo'] == null
          ? null
          : ServicePerimeterStatusEgressPolicyEgressTo.fromMap(
              (map['egressTo'] as Map).cast<String, dynamic>()),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
