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
  /// > **NOTE:** Either `subnet_id` or `availability_zone` must be specified.
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
  HsmState({
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
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      hsmEniId: map['hsmEniId'] == null ? null : (map['hsmEniId'] as String).input(),
      hsmId: map['hsmId'] == null ? null : (map['hsmId'] as String).input(),
      hsmState: map['hsmState'] == null ? null : (map['hsmState'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

