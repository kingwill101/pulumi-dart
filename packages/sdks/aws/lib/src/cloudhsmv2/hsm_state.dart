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
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? hsmEniId,
    pulumi.Output<String>? hsmId,
    pulumi.Output<String>? hsmState,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subnetId,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      hsmEniId = pulumi.Input.asOptionalInput<String>(hsmEniId),
      hsmId = pulumi.Input.asOptionalInput<String>(hsmId),
      hsmState = pulumi.Input.asOptionalInput<String>(hsmState),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

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
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      hsmEniId: map['hsmEniId'] == null ? null : pulumi.Output.create<String>(map['hsmEniId'] as String),
      hsmId: map['hsmId'] == null ? null : pulumi.Output.create<String>(map['hsmId'] as String),
      hsmState: map['hsmState'] == null ? null : pulumi.Output.create<String>(map['hsmState'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

