// ignore_for_file: unused_element, unnecessary_cast

import 'service_perimeters_service_perimeter_status_ingress_policy_ingress_from.dart';
import 'service_perimeters_service_perimeter_status_ingress_policy_ingress_to.dart';

class ServicePerimetersServicePerimeterStatusIngressPolicy {
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom?
  ingressFrom;

  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo?
  ingressTo;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final String? title;

  /// Creates a new [ServicePerimetersServicePerimeterStatusIngressPolicy].
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimetersServicePerimeterStatusIngressPolicy({
    this.ingressFrom,
    this.ingressTo,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressFrom': ?ingressFrom == null ? null : ingressFrom!.toMap(),
      'ingressTo': ?ingressTo == null ? null : ingressTo!.toMap(),
      'title': ?title,
    };
  }

  factory ServicePerimetersServicePerimeterStatusIngressPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimetersServicePerimeterStatusIngressPolicy(
      ingressFrom: map['ingressFrom'] == null
          ? null
          : ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom.fromMap(
              (map['ingressFrom'] as Map).cast<String, dynamic>(),
            ),
      ingressTo: map['ingressTo'] == null
          ? null
          : ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo.fromMap(
              (map['ingressTo'] as Map).cast<String, dynamic>(),
            ),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
