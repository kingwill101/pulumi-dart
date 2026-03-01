// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_ingress_policy_ingress_to_operation_method_selector.dart';

class ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation {
  /// API methods or permissions to allow. Method or permission must belong
  /// to the service specified by `serviceName` field. A single MethodSelector
  /// entry with `*` specified for the `method` field will allow all methods
  /// AND permissions for the service specified in `serviceName`.
  /// Structure is documented below.
  final List<
    ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperationMethodSelector
  >?
  methodSelectors;

  /// The name of the API whose methods or permissions the `IngressPolicy` or
  /// `EgressPolicy` want to allow. A single `ApiOperation` with serviceName
  /// field set to `*` will allow all methods AND permissions for all services.
  final String? serviceName;

  /// Creates a new [ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation].
  /// [methodSelectors] API methods or permissions to allow. Method or permission must belong
  /// [serviceName] The name of the API whose methods or permissions the `IngressPolicy` or
  ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodSelectors': ?methodSelectors == null
          ? null
          : pulumi.Input.encodeList<
              ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperationMethodSelector,
              Map<String, dynamic>
            >(methodSelectors!, (value) => value.toMap()),
      'serviceName': ?serviceName,
    };
  }

  factory ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperation(
      methodSelectors: map['methodSelectors'] == null
          ? null
          : pulumi.Input.decodeList<
              ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperationMethodSelector
            >(
              map['methodSelectors'],
              (value) =>
                  ServicePerimetersServicePerimeterSpecIngressPolicyIngressToOperationMethodSelector.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      serviceName: map['serviceName'] == null
          ? null
          : map['serviceName'] as String,
    );
  }
}
