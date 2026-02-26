// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'field_policy.dart';

/// Defines policies applying to an RPC method.
class MethodPolicy {
  /// Policies that are applicable to the request message.
  final List<FieldPolicy>? requestPolicies;

  /// Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subscriber.CreateSubscription". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
  final String? selector;

  MethodPolicy({
    this.requestPolicies,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestPoliciesValue = requestPolicies;
    if (requestPoliciesValue != null) {
      map['requestPolicies'] =
          Input.encodeList<FieldPolicy, Map<String, dynamic>>(
              requestPoliciesValue, (value) => value.toMap());
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    return map;
  }

  factory MethodPolicy.fromMap(Map<String, dynamic> map) {
    return MethodPolicy(
      requestPolicies: map['requestPolicies'] == null
          ? null
          : Input.decodeList<FieldPolicy>(
              map['requestPolicies'],
              (value) =>
                  FieldPolicy.fromMap((value as Map).cast<String, dynamic>())),
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
