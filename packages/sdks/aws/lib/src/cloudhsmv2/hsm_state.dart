// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Hsm resources.
class HsmState {
  /// The IDs of AZ in which HSM module will be located. Conflicts with `subnet_id`.
  final pulumi.Input<String>? availabilityZone;
  /// The ID of Cloud HSM v2 cluster to which HSM will be added.
  final pulumi.Input<String>? clusterId;
  /// The id of the ENI interface allocated for HSM module.
  final pulumi.Input<String>? hsmEniId;
  /// The id of the HSM module.
  final pulumi.Input<String>? hsmId;
  /// The state of the HSM module.
  final pulumi.Input<String>? hsmState;
  /// The IP address of HSM module. Must be within the CIDR of selected subnet.
  ///
  /// &gt; **NOTE:** Either `subnet_id` or `availability_zone` must be specified.
  final pulumi.Input<String>? ipAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of subnet in which HSM module will be located. Conflicts with `availability_zone`.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [HsmState].
  /// [availabilityZone] The IDs of AZ in which HSM module will be located. Conflicts with `subnet_id`.
  /// [clusterId] The ID of Cloud HSM v2 cluster to which HSM will be added.
  /// [hsmEniId] The id of the ENI interface allocated for HSM module.
  /// [hsmId] The id of the HSM module.
  /// [hsmState] The state of the HSM module.
  /// [ipAddress] The IP address of HSM module. Must be within the CIDR of selected subnet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of subnet in which HSM module will be located. Conflicts with `availability_zone`.
  const HsmState({
    this.availabilityZone,
    this.clusterId,
    this.hsmEniId,
    this.hsmId,
    this.hsmState,
    this.ipAddress,
    this.region,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'clusterId': ?clusterId,
      'hsmEniId': ?hsmEniId,
      'hsmId': ?hsmId,
      'hsmState': ?hsmState,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'subnetId': ?subnetId,
    };
  }

  factory HsmState.fromMap(Map<String, dynamic> map) {
    return HsmState(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hsmEniId: (() { final guardedValue = map['hsmEniId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hsmId: (() { final guardedValue = map['hsmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hsmState: (() { final guardedValue = map['hsmState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

