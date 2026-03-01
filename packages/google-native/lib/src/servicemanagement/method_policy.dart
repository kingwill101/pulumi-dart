// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_policy.dart';

/// Defines policies applying to an RPC method.
class MethodPolicy {
  /// Policies that are applicable to the request message.
  final List<FieldPolicy>? requestPolicies;

  /// Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subscriber.CreateSubscription". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
  final String? selector;

  /// Creates a new [MethodPolicy].
  /// [requestPolicies] Policies that are applicable to the request message.
  /// [selector] Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subscriber.CreateSubscription". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
  MethodPolicy({this.requestPolicies, this.selector});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestPolicies': ?requestPolicies == null
          ? null
          : pulumi.Input.encodeList<FieldPolicy, Map<String, dynamic>>(
              requestPolicies!,
              (value) => value.toMap(),
            ),
      'selector': ?selector,
    };
  }

  factory MethodPolicy.fromMap(Map<String, dynamic> map) {
    return MethodPolicy(
      requestPolicies: map['requestPolicies'] == null
          ? null
          : pulumi.Input.decodeList<FieldPolicy>(
              map['requestPolicies'],
              (value) =>
                  FieldPolicy.fromMap((value as Map).cast<String, dynamic>()),
            ),
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
