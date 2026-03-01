// ignore_for_file: unused_element, unnecessary_cast

import 'service_perimeters_service_perimeter_status_egress_policy_egress_from.dart';
import 'service_perimeters_service_perimeter_status_egress_policy_egress_to.dart';

class ServicePerimetersServicePerimeterStatusEgressPolicy {
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final ServicePerimetersServicePerimeterStatusEgressPolicyEgressFrom? egressFrom;
  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final ServicePerimetersServicePerimeterStatusEgressPolicyEgressTo? egressTo;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final String? title;

  /// Creates a new [ServicePerimetersServicePerimeterStatusEgressPolicy].
  /// [egressFrom] Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// [egressTo] Defines the conditions on the `ApiOperation` and destination resources that
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimetersServicePerimeterStatusEgressPolicy({
    this.egressFrom,
    this.egressTo,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFrom': ?egressFrom == null ? null : egressFrom!.toMap(),
      'egressTo': ?egressTo == null ? null : egressTo!.toMap(),
      'title': ?title,
    };
  }

  factory ServicePerimetersServicePerimeterStatusEgressPolicy.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusEgressPolicy(
      egressFrom: map['egressFrom'] == null ? null : ServicePerimetersServicePerimeterStatusEgressPolicyEgressFrom.fromMap((map['egressFrom'] as Map).cast<String, dynamic>()),
      egressTo: map['egressTo'] == null ? null : ServicePerimetersServicePerimeterStatusEgressPolicyEgressTo.fromMap((map['egressTo'] as Map).cast<String, dynamic>()),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

