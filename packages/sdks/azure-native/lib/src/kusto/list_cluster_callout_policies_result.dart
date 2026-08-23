// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'callout_policy_response.dart';

/// Result data returned by listClusterCalloutPolicies.
class ListClusterCalloutPoliciesResult {
  final String? nextLink;
  /// A list of the service's callout policies.
  final List<CalloutPolicyResponse>? value;

  /// Creates a new [ListClusterCalloutPoliciesResult].
  /// [nextLink] Optional.
  /// [value] A list of the service's callout policies.
  const ListClusterCalloutPoliciesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<CalloutPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListClusterCalloutPoliciesResult.fromMap(Map<String, dynamic> map) {
    return ListClusterCalloutPoliciesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CalloutPolicyResponse>(guardedValue, (value) => CalloutPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
