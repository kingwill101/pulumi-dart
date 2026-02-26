// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_perimeter_egress_policy_egress_from/service_perimeter_egress_policy_egress_from.dart';
import '../service_perimeter_egress_policy_egress_to/service_perimeter_egress_policy_egress_to.dart';

/// The set of arguments for ServicePerimeterEgressPolicy.
class ServicePerimeterEgressPolicyArgs {
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final Input<ServicePerimeterEgressPolicyEgressFrom>? egressFrom;

  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final Input<ServicePerimeterEgressPolicyEgressTo>? egressTo;

  /// The name of the Service Perimeter to add this resource to.
  final Input<String> perimeter;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final Input<String>? title;

  ServicePerimeterEgressPolicyArgs({
    this.egressFrom,
    this.egressTo,
    required this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressFromValue = egressFrom;
    if (egressFromValue != null) {
      map['egressFrom'] = Input.mapOptionalInputValue<
          ServicePerimeterEgressPolicyEgressFrom,
          Map<String, dynamic>>(egressFromValue, (value) => value.toMap());
    }
    final egressToValue = egressTo;
    if (egressToValue != null) {
      map['egressTo'] = Input.mapOptionalInputValue<
          ServicePerimeterEgressPolicyEgressTo,
          Map<String, dynamic>>(egressToValue, (value) => value.toMap());
    }
    map['perimeter'] = perimeter;
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory ServicePerimeterEgressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterEgressPolicyArgs(
      egressFrom: Input.asOptionalInput<ServicePerimeterEgressPolicyEgressFrom>(
          map['egressFrom']),
      egressTo: Input.asOptionalInput<ServicePerimeterEgressPolicyEgressTo>(
          map['egressTo']),
      perimeter: Input.asInput<String>(map['perimeter']),
      title: Input.asOptionalInput<String>(map['title']),
    );
  }
}
