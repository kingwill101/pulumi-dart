// ignore_for_file: unused_element, unnecessary_cast

import '../resiliency_policy_policy_az/resiliency_policy_policy_az.dart';
import '../resiliency_policy_policy_hardware/resiliency_policy_policy_hardware.dart';
import '../resiliency_policy_policy_region/resiliency_policy_policy_region.dart';
import '../resiliency_policy_policy_software/resiliency_policy_policy_software.dart';

class ResiliencyPolicyPolicy {
  /// Specifies Availability Zone failure policy. See `policy.az`
  final ResiliencyPolicyPolicyAz? az;

  /// Specifies Infrastructure failure policy. See `policy.hardware`
  final ResiliencyPolicyPolicyHardware? hardware;

  /// Specifies Region failure policy. `policy.region`
  final ResiliencyPolicyPolicyRegion? region;

  /// Specifies Application failure policy. See `policy.software`
  ///
  /// The following arguments are optional:
  final ResiliencyPolicyPolicySoftware? software;

  ResiliencyPolicyPolicy({
    this.az,
    this.hardware,
    this.region,
    this.software,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final azValue = az;
    if (azValue != null) {
      map['az'] = azValue.toMap();
    }
    final hardwareValue = hardware;
    if (hardwareValue != null) {
      map['hardware'] = hardwareValue.toMap();
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue.toMap();
    }
    final softwareValue = software;
    if (softwareValue != null) {
      map['software'] = softwareValue.toMap();
    }
    return map;
  }

  factory ResiliencyPolicyPolicy.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicy(
      az: map['az'] == null
          ? null
          : ResiliencyPolicyPolicyAz.fromMap(
              (map['az'] as Map).cast<String, dynamic>()),
      hardware: map['hardware'] == null
          ? null
          : ResiliencyPolicyPolicyHardware.fromMap(
              (map['hardware'] as Map).cast<String, dynamic>()),
      region: map['region'] == null
          ? null
          : ResiliencyPolicyPolicyRegion.fromMap(
              (map['region'] as Map).cast<String, dynamic>()),
      software: map['software'] == null
          ? null
          : ResiliencyPolicyPolicySoftware.fromMap(
              (map['software'] as Map).cast<String, dynamic>()),
    );
  }
}
