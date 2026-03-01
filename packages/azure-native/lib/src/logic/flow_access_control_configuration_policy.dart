// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_range.dart';
import 'open_authentication_access_policies.dart';

/// The access control configuration policy.
class FlowAccessControlConfigurationPolicy {
  /// The allowed caller IP address ranges.
  final List<IpAddressRange>? allowedCallerIpAddresses;
  /// The authentication policies for workflow.
  final OpenAuthenticationAccessPolicies? openAuthenticationPolicies;

  /// Creates a new [FlowAccessControlConfigurationPolicy].
  /// [allowedCallerIpAddresses] The allowed caller IP address ranges.
  /// [openAuthenticationPolicies] The authentication policies for workflow.
  FlowAccessControlConfigurationPolicy({
    this.allowedCallerIpAddresses,
    this.openAuthenticationPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddresses': ?allowedCallerIpAddresses == null ? null : pulumi.Input.encodeList<IpAddressRange, Map<String, dynamic>>(allowedCallerIpAddresses!, (value) => value.toMap()),
      'openAuthenticationPolicies': ?openAuthenticationPolicies == null ? null : openAuthenticationPolicies!.toMap(),
    };
  }

  factory FlowAccessControlConfigurationPolicy.fromMap(Map<String, dynamic> map) {
    return FlowAccessControlConfigurationPolicy(
      allowedCallerIpAddresses: map['allowedCallerIpAddresses'] == null ? null : pulumi.Input.decodeList<IpAddressRange>(map['allowedCallerIpAddresses'], (value) => IpAddressRange.fromMap((value as Map).cast<String, dynamic>())),
      openAuthenticationPolicies: map['openAuthenticationPolicies'] == null ? null : OpenAuthenticationAccessPolicies.fromMap((map['openAuthenticationPolicies'] as Map).cast<String, dynamic>()),
    );
  }
}

