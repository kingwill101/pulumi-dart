// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_selector.dart';

/// Identification for an API Operation.
class ApiOperation {
  /// API methods or permissions to allow. Method or permission must belong to the service specified by `service_name` field. A single MethodSelector entry with `*` specified for the `method` field will allow all methods AND permissions for the service specified in `service_name`.
  final List<MethodSelector>? methodSelectors;

  /// The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow. A single ApiOperation with `service_name` field set to `*` will allow all methods AND permissions for all services.
  final String? serviceName;

  ApiOperation({
    this.methodSelectors,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodSelectorsValue = methodSelectors;
    if (methodSelectorsValue != null) {
      map['methodSelectors'] =
          pulumi.Input.encodeList<MethodSelector, Map<String, dynamic>>(
              methodSelectorsValue, (value) => value.toMap());
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    return map;
  }

  factory ApiOperation.fromMap(Map<String, dynamic> map) {
    return ApiOperation(
      methodSelectors: map['methodSelectors'] == null
          ? null
          : pulumi.Input.decodeList<MethodSelector>(
              map['methodSelectors'],
              (value) => MethodSelector.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}
