// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_range_response.dart';
import 'open_authentication_access_policies_response.dart';

/// The access control configuration policy.
class FlowAccessControlConfigurationPolicyResponse {
  /// The allowed caller IP address ranges.
  final List<IpAddressRangeResponse>? allowedCallerIpAddresses;
  /// The authentication policies for workflow.
  final OpenAuthenticationAccessPoliciesResponse? openAuthenticationPolicies;

  /// Creates a new [FlowAccessControlConfigurationPolicyResponse].
  /// [allowedCallerIpAddresses] The allowed caller IP address ranges.
  /// [openAuthenticationPolicies] The authentication policies for workflow.
  FlowAccessControlConfigurationPolicyResponse({
    this.allowedCallerIpAddresses,
    this.openAuthenticationPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddresses': ?allowedCallerIpAddresses == null ? null : pulumi.Input.encodeList<IpAddressRangeResponse, Map<String, dynamic>>(allowedCallerIpAddresses!, (value) => value.toMap()),
      'openAuthenticationPolicies': ?openAuthenticationPolicies == null ? null : openAuthenticationPolicies!.toMap(),
    };
  }

  factory FlowAccessControlConfigurationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return FlowAccessControlConfigurationPolicyResponse(
      allowedCallerIpAddresses: map['allowedCallerIpAddresses'] == null ? null : pulumi.Input.decodeList<IpAddressRangeResponse>(map['allowedCallerIpAddresses'], (value) => IpAddressRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      openAuthenticationPolicies: map['openAuthenticationPolicies'] == null ? null : OpenAuthenticationAccessPoliciesResponse.fromMap((map['openAuthenticationPolicies'] as Map).cast<String, dynamic>()),
    );
  }
}

