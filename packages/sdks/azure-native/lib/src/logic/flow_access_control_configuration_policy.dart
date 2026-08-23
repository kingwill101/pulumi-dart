// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_range.dart';
import 'open_authentication_access_policies.dart';

/// The access control configuration policy.
class FlowAccessControlConfigurationPolicy {
  /// The allowed caller IP address ranges.
  final pulumi.Input<List<IpAddressRange>>? allowedCallerIpAddresses;
  /// The authentication policies for workflow.
  final pulumi.Input<OpenAuthenticationAccessPolicies>? openAuthenticationPolicies;

  /// Creates a new [FlowAccessControlConfigurationPolicy].
  /// [allowedCallerIpAddresses] The allowed caller IP address ranges.
  /// [openAuthenticationPolicies] The authentication policies for workflow.
  const FlowAccessControlConfigurationPolicy({
    this.allowedCallerIpAddresses,
    this.openAuthenticationPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<IpAddressRange>, List<Map<String, dynamic>>>(allowedCallerIpAddresses, (value) => pulumi.Input.encodeList<IpAddressRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAuthenticationPolicies': ?pulumi.Input.mapOptionalInputValue<OpenAuthenticationAccessPolicies, Map<String, dynamic>>(openAuthenticationPolicies, (value) => value.toMap()),
    };
  }

  factory FlowAccessControlConfigurationPolicy.fromMap(Map<String, dynamic> map) {
    return FlowAccessControlConfigurationPolicy(
      allowedCallerIpAddresses: (() { final guardedValue = map['allowedCallerIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpAddressRange>(guardedValue, (value) => IpAddressRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      openAuthenticationPolicies: (() { final guardedValue = map['openAuthenticationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenAuthenticationAccessPolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
