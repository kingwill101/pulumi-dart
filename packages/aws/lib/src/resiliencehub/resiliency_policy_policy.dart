// ignore_for_file: unused_element, unnecessary_cast

import 'resiliency_policy_policy_az.dart';
import 'resiliency_policy_policy_hardware.dart';
import 'resiliency_policy_policy_region.dart';
import 'resiliency_policy_policy_software.dart';

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

  /// Creates a new [ResiliencyPolicyPolicy].
  /// [az] Specifies Availability Zone failure policy. See `policy.az`
  /// [hardware] Specifies Infrastructure failure policy. See `policy.hardware`
  /// [region] Specifies Region failure policy. `policy.region`
  /// [software] Specifies Application failure policy. See `policy.software`
  ResiliencyPolicyPolicy({this.az, this.hardware, this.region, this.software});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'az': ?az == null ? null : az!.toMap(),
      'hardware': ?hardware == null ? null : hardware!.toMap(),
      'region': ?region == null ? null : region!.toMap(),
      'software': ?software == null ? null : software!.toMap(),
    };
  }

  factory ResiliencyPolicyPolicy.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicy(
      az: map['az'] == null
          ? null
          : ResiliencyPolicyPolicyAz.fromMap(
              (map['az'] as Map).cast<String, dynamic>(),
            ),
      hardware: map['hardware'] == null
          ? null
          : ResiliencyPolicyPolicyHardware.fromMap(
              (map['hardware'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null
          ? null
          : ResiliencyPolicyPolicyRegion.fromMap(
              (map['region'] as Map).cast<String, dynamic>(),
            ),
      software: map['software'] == null
          ? null
          : ResiliencyPolicyPolicySoftware.fromMap(
              (map['software'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
