// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_perimeters_service_perimeter_status_egress_policy_egress_to_operation_method_selector/service_perimeters_service_perimeter_status_egress_policy_egress_to_operation_method_selector.dart';

class ServicePerimetersServicePerimeterStatusEgressPolicyEgressToOperation {
  /// API methods or permissions to allow. Method or permission must belong
  /// to the service specified by `serviceName` field. A single MethodSelector
  /// entry with `*` specified for the `method` field will allow all methods
  /// AND permissions for the service specified in `serviceName`.
  /// Structure is documented below.
  final List<
          ServicePerimetersServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector>?
      methodSelectors;

  /// The name of the API whose methods or permissions the `IngressPolicy` or
  /// `EgressPolicy` want to allow. A single `ApiOperation` with serviceName
  /// field set to `*` will allow all methods AND permissions for all services.
  final String? serviceName;

  ServicePerimetersServicePerimeterStatusEgressPolicyEgressToOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodSelectorsValue = methodSelectors;
    if (methodSelectorsValue != null) {
      map['methodSelectors'] = Input.encodeList<
          ServicePerimetersServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector,
          Map<String, dynamic>>(methodSelectorsValue, (value) => value.toMap());
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    return map;
  }

  factory ServicePerimetersServicePerimeterStatusEgressPolicyEgressToOperation.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusEgressPolicyEgressToOperation(
      methodSelectors: map['methodSelectors'] == null
          ? null
          : Input.decodeList<
                  ServicePerimetersServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector>(
              map['methodSelectors'],
              (value) =>
                  ServicePerimetersServicePerimeterStatusEgressPolicyEgressToOperationMethodSelector
                      .fromMap((value as Map).cast<String, dynamic>())),
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}
