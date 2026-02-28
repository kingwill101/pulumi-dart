// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_ingress_policy_ingress_to_operation_method_selector.dart';

class ServicePerimeterIngressPolicyIngressToOperation {
  /// API methods or permissions to allow. Method or permission must belong to
  /// the service specified by serviceName field. A single `MethodSelector` entry
  /// with `*` specified for the method field will allow all methods AND
  /// permissions for the service specified in `serviceName`.
  /// Structure is documented below.
  final List<ServicePerimeterIngressPolicyIngressToOperationMethodSelector>?
      methodSelectors;

  /// The name of the API whose methods or permissions the `IngressPolicy` or
  /// `EgressPolicy` want to allow. A single `ApiOperation` with `serviceName`
  /// field set to `*` will allow all methods AND permissions for all services.
  final String? serviceName;

  /// Creates a new [ServicePerimeterIngressPolicyIngressToOperation].
  /// [methodSelectors] API methods or permissions to allow. Method or permission must belong to
  /// [serviceName] The name of the API whose methods or permissions the `IngressPolicy` or
  ServicePerimeterIngressPolicyIngressToOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodSelectorsValue = methodSelectors;
    if (methodSelectorsValue != null) {
      map['methodSelectors'] = pulumi.Input.encodeList<
          ServicePerimeterIngressPolicyIngressToOperationMethodSelector,
          Map<String, dynamic>>(methodSelectorsValue, (value) => value.toMap());
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    return map;
  }

  factory ServicePerimeterIngressPolicyIngressToOperation.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterIngressPolicyIngressToOperation(
      methodSelectors: map['methodSelectors'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServicePerimeterIngressPolicyIngressToOperationMethodSelector>(
              map['methodSelectors'],
              (value) =>
                  ServicePerimeterIngressPolicyIngressToOperationMethodSelector
                      .fromMap((value as Map).cast<String, dynamic>())),
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}
