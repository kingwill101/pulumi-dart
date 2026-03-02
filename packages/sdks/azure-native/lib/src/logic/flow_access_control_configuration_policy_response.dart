// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_range_response.dart';
import 'open_authentication_access_policies_response.dart';

/// The access control configuration policy.
class FlowAccessControlConfigurationPolicyResponse {
  /// The allowed caller IP address ranges.
  final pulumi.Input<List<IpAddressRangeResponse>>? allowedCallerIpAddresses;
  /// The authentication policies for workflow.
  final pulumi.Input<OpenAuthenticationAccessPoliciesResponse>? openAuthenticationPolicies;

  /// Creates a new [FlowAccessControlConfigurationPolicyResponse].
  /// [allowedCallerIpAddresses] The allowed caller IP address ranges.
  /// [openAuthenticationPolicies] The authentication policies for workflow.
  FlowAccessControlConfigurationPolicyResponse({
    this.allowedCallerIpAddresses,
    this.openAuthenticationPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<IpAddressRangeResponse>, List<Map<String, dynamic>>>(allowedCallerIpAddresses, (value) => pulumi.Input.encodeList<IpAddressRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAuthenticationPolicies': ?pulumi.Input.mapOptionalInputValue<OpenAuthenticationAccessPoliciesResponse, Map<String, dynamic>>(openAuthenticationPolicies, (value) => value.toMap()),
    };
  }

  factory FlowAccessControlConfigurationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return FlowAccessControlConfigurationPolicyResponse(
      allowedCallerIpAddresses: map['allowedCallerIpAddresses'] == null ? null : (pulumi.Input.decodeList<IpAddressRangeResponse>(map['allowedCallerIpAddresses']!, (value) => IpAddressRangeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      openAuthenticationPolicies: map['openAuthenticationPolicies'] == null ? null : (OpenAuthenticationAccessPoliciesResponse.fromMap((map['openAuthenticationPolicies']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

