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
  ListClusterCalloutPoliciesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<CalloutPolicyResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListClusterCalloutPoliciesResult.fromMap(Map<String, dynamic> map) {
    return ListClusterCalloutPoliciesResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<CalloutPolicyResponse>(map['value'], (value) => CalloutPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

