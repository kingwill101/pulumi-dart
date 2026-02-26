// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_perimeter_dry_run_ingress_policy_ingress_from/service_perimeter_dry_run_ingress_policy_ingress_from.dart';
import '../service_perimeter_dry_run_ingress_policy_ingress_to/service_perimeter_dry_run_ingress_policy_ingress_to.dart';

/// The set of arguments for ServicePerimeterDryRunIngressPolicy.
class ServicePerimeterDryRunIngressPolicyArgs {
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final Input<ServicePerimeterDryRunIngressPolicyIngressFrom>? ingressFrom;

  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final Input<ServicePerimeterDryRunIngressPolicyIngressTo>? ingressTo;

  /// The name of the Service Perimeter to add this resource to.
  final Input<String> perimeter;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final Input<String>? title;

  ServicePerimeterDryRunIngressPolicyArgs({
    this.ingressFrom,
    this.ingressTo,
    required this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ingressFromValue = ingressFrom;
    if (ingressFromValue != null) {
      map['ingressFrom'] = Input.mapOptionalInputValue<
          ServicePerimeterDryRunIngressPolicyIngressFrom,
          Map<String, dynamic>>(ingressFromValue, (value) => value.toMap());
    }
    final ingressToValue = ingressTo;
    if (ingressToValue != null) {
      map['ingressTo'] = Input.mapOptionalInputValue<
          ServicePerimeterDryRunIngressPolicyIngressTo,
          Map<String, dynamic>>(ingressToValue, (value) => value.toMap());
    }
    map['perimeter'] = perimeter;
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory ServicePerimeterDryRunIngressPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterDryRunIngressPolicyArgs(
      ingressFrom:
          Input.asOptionalInput<ServicePerimeterDryRunIngressPolicyIngressFrom>(
              map['ingressFrom']),
      ingressTo:
          Input.asOptionalInput<ServicePerimeterDryRunIngressPolicyIngressTo>(
              map['ingressTo']),
      perimeter: Input.asInput<String>(map['perimeter']),
      title: Input.asOptionalInput<String>(map['title']),
    );
  }
}
