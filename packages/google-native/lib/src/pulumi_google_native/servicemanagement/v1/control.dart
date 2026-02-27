// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'method_policy.dart';

/// Selects and configures the service controller used by the service. Example: control: environment: servicecontrol.googleapis.com
class Control {
  /// The service controller environment to use. If empty, no control plane feature (like quota and billing) will be enabled. The recommended value for most services is servicecontrol.googleapis.com
  final String? environment;

  /// Defines policies applying to the API methods of the service.
  final List<MethodPolicy>? methodPolicies;

  Control({
    this.environment,
    this.methodPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue;
    }
    final methodPoliciesValue = methodPolicies;
    if (methodPoliciesValue != null) {
      map['methodPolicies'] =
          Input.encodeList<MethodPolicy, Map<String, dynamic>>(
              methodPoliciesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Control.fromMap(Map<String, dynamic> map) {
    return Control(
      environment:
          map['environment'] == null ? null : map['environment'] as String,
      methodPolicies: map['methodPolicies'] == null
          ? null
          : Input.decodeList<MethodPolicy>(
              map['methodPolicies'],
              (value) =>
                  MethodPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
