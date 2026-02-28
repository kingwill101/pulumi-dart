// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_egress_policy_egress_from.dart';
import 'service_perimeter_egress_policy_egress_to.dart';

/// {@template pulumi_accesscontextmanager_service_perimeter_egress_policy_service_perimeter_egress_policy_args_doc}
/// The set of arguments for ServicePerimeterEgressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_egress_policy_service_perimeter_egress_policy_args_doc}
class ServicePerimeterEgressPolicyArgs {
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterEgressPolicyEgressFrom>? egressFrom;
  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterEgressPolicyEgressTo>? egressTo;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterEgressPolicyArgs].
  /// [egressFrom] Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// [egressTo] Defines the conditions on the `ApiOperation` and destination resources that
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimeterEgressPolicyArgs({
    ServicePerimeterEgressPolicyEgressFrom? egressFrom,
    ServicePerimeterEgressPolicyEgressTo? egressTo,
    required String perimeter,
    String? title,
  }) :
      egressFrom = pulumi.Input.asOptionalInput<ServicePerimeterEgressPolicyEgressFrom>(egressFrom),
      egressTo = pulumi.Input.asOptionalInput<ServicePerimeterEgressPolicyEgressTo>(egressTo),
      perimeter = pulumi.Input.asInput<String>(perimeter),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterEgressPolicyEgressFrom, Map<String, dynamic>>(egressFrom, (value) => value.toMap()),
      'egressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterEgressPolicyEgressTo, Map<String, dynamic>>(egressTo, (value) => value.toMap()),
      'perimeter': perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterEgressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterEgressPolicyArgs(
      egressFrom: map['egressFrom'] == null ? null : ServicePerimeterEgressPolicyEgressFrom.fromMap((map['egressFrom'] as Map).cast<String, dynamic>()),
      egressTo: map['egressTo'] == null ? null : ServicePerimeterEgressPolicyEgressTo.fromMap((map['egressTo'] as Map).cast<String, dynamic>()),
      perimeter: map['perimeter'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

