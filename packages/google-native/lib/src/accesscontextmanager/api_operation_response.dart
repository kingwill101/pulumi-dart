// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_selector_response.dart';

/// Identification for an API Operation.
class ApiOperationResponse {
  /// API methods or permissions to allow. Method or permission must belong to the service specified by `service_name` field. A single MethodSelector entry with `*` specified for the `method` field will allow all methods AND permissions for the service specified in `service_name`.
  final List<MethodSelectorResponse> methodSelectors;

  /// The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow. A single ApiOperation with `service_name` field set to `*` will allow all methods AND permissions for all services.
  final String serviceName;

  /// Creates a new [ApiOperationResponse].
  /// [methodSelectors] API methods or permissions to allow. Method or permission must belong to the service specified by `service_name` field. A single MethodSelector entry with `*` specified for the `method` field will allow all methods AND permissions for the service specified in `service_name`.
  /// [serviceName] The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow. A single ApiOperation with `service_name` field set to `*` will allow all methods AND permissions for all services.
  ApiOperationResponse({
    required this.methodSelectors,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['methodSelectors'] =
        pulumi.Input.encodeList<MethodSelectorResponse, Map<String, dynamic>>(
            methodSelectors, (value) => value.toMap());
    map['serviceName'] = serviceName;
    return map;
  }

  factory ApiOperationResponse.fromMap(Map<String, dynamic> map) {
    return ApiOperationResponse(
      methodSelectors: pulumi.Input.decodeList<MethodSelectorResponse>(
          map['methodSelectors'],
          (value) => MethodSelectorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceName: map['serviceName'] as String,
    );
  }
}
