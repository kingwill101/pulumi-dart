// ignore_for_file: unused_element, unnecessary_cast

import 'ingress_from.dart';
import 'ingress_to.dart';

/// Policy for ingress into ServicePerimeter. IngressPolicies match requests based on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match, both the `ingress_from` and `ingress_to` stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and/or actions they match using the `ingress_to` field.
class IngressPolicy {
  /// Defines the conditions on the source of a request causing this IngressPolicy to apply.
  final IngressFrom? ingressFrom;

  /// Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy to apply.
  final IngressTo? ingressTo;

  IngressPolicy({
    this.ingressFrom,
    this.ingressTo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ingressFromValue = ingressFrom;
    if (ingressFromValue != null) {
      map['ingressFrom'] = ingressFromValue.toMap();
    }
    final ingressToValue = ingressTo;
    if (ingressToValue != null) {
      map['ingressTo'] = ingressToValue.toMap();
    }
    return map;
  }

  factory IngressPolicy.fromMap(Map<String, dynamic> map) {
    return IngressPolicy(
      ingressFrom: map['ingressFrom'] == null
          ? null
          : IngressFrom.fromMap(
              (map['ingressFrom'] as Map).cast<String, dynamic>()),
      ingressTo: map['ingressTo'] == null
          ? null
          : IngressTo.fromMap(
              (map['ingressTo'] as Map).cast<String, dynamic>()),
    );
  }
}
