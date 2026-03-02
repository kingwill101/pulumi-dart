// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resiliency_policy_policy_az.dart';
import 'resiliency_policy_policy_hardware.dart';
import 'resiliency_policy_policy_region.dart';
import 'resiliency_policy_policy_software.dart';

class ResiliencyPolicyPolicy {
  /// Specifies Availability Zone failure policy. See `policy.az`
  final pulumi.Input<ResiliencyPolicyPolicyAz>? az;
  /// Specifies Infrastructure failure policy. See `policy.hardware`
  final pulumi.Input<ResiliencyPolicyPolicyHardware>? hardware;
  /// Specifies Region failure policy. `policy.region`
  final pulumi.Input<ResiliencyPolicyPolicyRegion>? region;
  /// Specifies Application failure policy. See `policy.software`
  ///
  /// The following arguments are optional:
  final pulumi.Input<ResiliencyPolicyPolicySoftware>? software;

  /// Creates a new [ResiliencyPolicyPolicy].
  /// [az] Specifies Availability Zone failure policy. See `policy.az`
  /// [hardware] Specifies Infrastructure failure policy. See `policy.hardware`
  /// [region] Specifies Region failure policy. `policy.region`
  /// [software] Specifies Application failure policy. See `policy.software`
  ResiliencyPolicyPolicy({
    this.az,
    this.hardware,
    this.region,
    this.software,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'az': ?pulumi.Input.mapOptionalInputValue<ResiliencyPolicyPolicyAz, Map<String, dynamic>>(az, (value) => value.toMap()),
      'hardware': ?pulumi.Input.mapOptionalInputValue<ResiliencyPolicyPolicyHardware, Map<String, dynamic>>(hardware, (value) => value.toMap()),
      'region': ?pulumi.Input.mapOptionalInputValue<ResiliencyPolicyPolicyRegion, Map<String, dynamic>>(region, (value) => value.toMap()),
      'software': ?pulumi.Input.mapOptionalInputValue<ResiliencyPolicyPolicySoftware, Map<String, dynamic>>(software, (value) => value.toMap()),
    };
  }

  factory ResiliencyPolicyPolicy.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyPolicy(
      az: map['az'] == null ? null : (ResiliencyPolicyPolicyAz.fromMap((map['az'] as Map).cast<String, dynamic>())).input(),
      hardware: map['hardware'] == null ? null : (ResiliencyPolicyPolicyHardware.fromMap((map['hardware'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (ResiliencyPolicyPolicyRegion.fromMap((map['region'] as Map).cast<String, dynamic>())).input(),
      software: map['software'] == null ? null : (ResiliencyPolicyPolicySoftware.fromMap((map['software'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

