// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'field_policy_response.dart';

/// Defines policies applying to an RPC method.
class MethodPolicyResponse {
  /// Policies that are applicable to the request message.
  final List<FieldPolicyResponse> requestPolicies;

  /// Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subscriber.CreateSubscription". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
  final String selector;

  MethodPolicyResponse({
    required this.requestPolicies,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestPolicies'] =
        Input.encodeList<FieldPolicyResponse, Map<String, dynamic>>(
            requestPolicies, (value) => value.toMap());
    map['selector'] = selector;
    return map;
  }

  factory MethodPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MethodPolicyResponse(
      requestPolicies: Input.decodeList<FieldPolicyResponse>(
          map['requestPolicies'],
          (value) => FieldPolicyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      selector: map['selector'] as String,
    );
  }
}
