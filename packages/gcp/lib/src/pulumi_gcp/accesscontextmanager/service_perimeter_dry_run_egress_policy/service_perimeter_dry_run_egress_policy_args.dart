// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_perimeter_dry_run_egress_policy_egress_from/service_perimeter_dry_run_egress_policy_egress_from.dart';
import '../service_perimeter_dry_run_egress_policy_egress_to/service_perimeter_dry_run_egress_policy_egress_to.dart';

/// The set of arguments for ServicePerimeterDryRunEgressPolicy.
class ServicePerimeterDryRunEgressPolicyArgs {
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final Input<ServicePerimeterDryRunEgressPolicyEgressFrom>? egressFrom;

  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final Input<ServicePerimeterDryRunEgressPolicyEgressTo>? egressTo;

  /// The name of the Service Perimeter to add this resource to.
  final Input<String> perimeter;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final Input<String>? title;

  ServicePerimeterDryRunEgressPolicyArgs({
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
          ServicePerimeterDryRunEgressPolicyEgressFrom,
          Map<String, dynamic>>(egressFromValue, (value) => value.toMap());
    }
    final egressToValue = egressTo;
    if (egressToValue != null) {
      map['egressTo'] = Input.mapOptionalInputValue<
          ServicePerimeterDryRunEgressPolicyEgressTo,
          Map<String, dynamic>>(egressToValue, (value) => value.toMap());
    }
    map['perimeter'] = perimeter;
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory ServicePerimeterDryRunEgressPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterDryRunEgressPolicyArgs(
      egressFrom:
          Input.asOptionalInput<ServicePerimeterDryRunEgressPolicyEgressFrom>(
              map['egressFrom']),
      egressTo:
          Input.asOptionalInput<ServicePerimeterDryRunEgressPolicyEgressTo>(
              map['egressTo']),
      perimeter: Input.asInput<String>(map['perimeter']),
      title: Input.asOptionalInput<String>(map['title']),
    );
  }
}
