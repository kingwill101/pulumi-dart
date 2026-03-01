// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_egress_policy_egress_to_operation_method_selector.dart';

class ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation {
  /// API methods or permissions to allow. Method or permission must belong
  /// to the service specified by `serviceName` field. A single MethodSelector
  /// entry with `*` specified for the `method` field will allow all methods
  /// AND permissions for the service specified in `serviceName`.
  /// Structure is documented below.
  final List<ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector>? methodSelectors;
  /// The name of the API whose methods or permissions the `IngressPolicy` or
  /// `EgressPolicy` want to allow. A single `ApiOperation` with serviceName
  /// field set to `*` will allow all methods AND permissions for all services.
  final String? serviceName;

  /// Creates a new [ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation].
  /// [methodSelectors] API methods or permissions to allow. Method or permission must belong
  /// [serviceName] The name of the API whose methods or permissions the `IngressPolicy` or
  ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodSelectors': ?methodSelectors == null ? null : pulumi.Input.encodeList<ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector, Map<String, dynamic>>(methodSelectors!, (value) => value.toMap()),
      'serviceName': ?serviceName,
    };
  }

  factory ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperation(
      methodSelectors: map['methodSelectors'] == null ? null : pulumi.Input.decodeList<ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector>(map['methodSelectors'], (value) => ServicePerimetersServicePerimeterSpecEgressPolicyEgressToOperationMethodSelector.fromMap((value as Map).cast<String, dynamic>())),
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

