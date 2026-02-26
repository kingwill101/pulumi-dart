// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_perimeters_service_perimeter_status_ingress_policy_ingress_to_operation/service_perimeters_service_perimeter_status_ingress_policy_ingress_to_operation.dart';

class ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo {
  /// A list of `ApiOperations` the sources specified in corresponding `IngressFrom`
  /// are allowed to perform in this `ServicePerimeter`.
  /// Structure is documented below.
  final List<
          ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperation>?
      operations;

  /// A list of resources, currently only projects in the form
  /// `projects/<projectnumber>`, protected by this `ServicePerimeter`
  /// that are allowed to be accessed by sources defined in the
  /// corresponding `IngressFrom`. A request matches if it contains
  /// a resource in this list. If `*` is specified for resources,
  /// then this `IngressTo` rule will authorize access to all
  /// resources inside the perimeter, provided that the request
  /// also matches the <span pulumi-lang-nodejs="`operations`" pulumi-lang-dotnet="`Operations`" pulumi-lang-go="`operations`" pulumi-lang-python="`operations`" pulumi-lang-yaml="`operations`" pulumi-lang-java="`operations`">`operations`</span> field.
  final List<String>? resources;

  /// A list of IAM roles that represent the set of operations that the sources
  /// specified in the corresponding `IngressFrom`
  /// are allowed to perform.
  final List<String>? roles;

  ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo({
    this.operations,
    this.resources,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final operationsValue = operations;
    if (operationsValue != null) {
      map['operations'] = Input.encodeList<
          ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperation,
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

  factory ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo(
      operations: map['operations'] == null
          ? null
          : Input.decodeList<
                  ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperation>(
              map['operations'],
              (value) =>
                  ServicePerimetersServicePerimeterStatusIngressPolicyIngressToOperation
                      .fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
      roles:
          map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
    );
  }
}
