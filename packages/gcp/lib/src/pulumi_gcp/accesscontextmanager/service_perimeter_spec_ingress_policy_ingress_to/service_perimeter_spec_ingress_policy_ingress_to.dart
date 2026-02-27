// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_perimeter_spec_ingress_policy_ingress_to_operation/service_perimeter_spec_ingress_policy_ingress_to_operation.dart';

class ServicePerimeterSpecIngressPolicyIngressTo {
  /// A list of `ApiOperations` the sources specified in corresponding `IngressFrom`
  /// are allowed to perform in this `ServicePerimeter`.
  /// Structure is documented below.
  final List<ServicePerimeterSpecIngressPolicyIngressToOperation>? operations;

  /// A list of resources, currently only projects in the form
  /// `projects/<projectnumber>`, protected by this `ServicePerimeter`
  /// that are allowed to be accessed by sources defined in the
  /// corresponding `IngressFrom`. A request matches if it contains
  /// a resource in this list. If `*` is specified for resources,
  /// then this `IngressTo` rule will authorize access to all
  /// resources inside the perimeter, provided that the request
  /// also matches the `operations` field.
  final List<String>? resources;

  /// A list of IAM roles that represent the set of operations that the sources
  /// specified in the corresponding `IngressFrom`
  /// are allowed to perform.
  final List<String>? roles;

  ServicePerimeterSpecIngressPolicyIngressTo({
    this.operations,
    this.resources,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final operationsValue = operations;
    if (operationsValue != null) {
      map['operations'] = pulumi.Input.encodeList<
          ServicePerimeterSpecIngressPolicyIngressToOperation,
          Map<String, dynamic>>(operationsValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue;
    }
    final rolesValue = roles;
    if (rolesValue != null) {
      map['roles'] = rolesValue;
    }
    return map;
  }

  factory ServicePerimeterSpecIngressPolicyIngressTo.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterSpecIngressPolicyIngressTo(
      operations: map['operations'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServicePerimeterSpecIngressPolicyIngressToOperation>(
              map['operations'],
              (value) =>
                  ServicePerimeterSpecIngressPolicyIngressToOperation.fromMap(
                      (value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
      roles:
          map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
    );
  }
}
