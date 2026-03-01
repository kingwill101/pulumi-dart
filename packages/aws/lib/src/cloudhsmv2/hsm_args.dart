// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhsmv2_hsm_hsm_args_doc}
/// The set of arguments for Hsm.
/// {@endtemplate}
/// {@macro pulumi_cloudhsmv2_hsm_hsm_args_doc}
class HsmArgs {
  /// The IDs of AZ in which HSM module will be located. Conflicts with `subnet_id`.
  final pulumi.Input<String>? availabilityZone;

  /// The ID of Cloud HSM v2 cluster to which HSM will be added.
  final pulumi.Input<String> clusterId;

  /// The IP address of HSM module. Must be within the CIDR of selected subnet.
  ///
  /// > **NOTE:** Either `subnet_id` or `availability_zone` must be specified.
  final pulumi.Input<String>? ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of subnet in which HSM module will be located. Conflicts with `availability_zone`.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [HsmArgs].
  /// [availabilityZone] The IDs of AZ in which HSM module will be located. Conflicts with `subnet_id`.
  /// [clusterId] The ID of Cloud HSM v2 cluster to which HSM will be added.
  /// [ipAddress] The IP address of HSM module. Must be within the CIDR of selected subnet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of subnet in which HSM module will be located. Conflicts with `availability_zone`.
  HsmArgs({
    String? availabilityZone,
    required String clusterId,
    String? ipAddress,
    String? region,
    String? subnetId,
  }) : availabilityZone = pulumi.Input.asOptionalInput<String>(
         availabilityZone,
       ),
       clusterId = pulumi.Input.asInput<String>(clusterId),
       ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
       region = pulumi.Input.asOptionalInput<String>(region),
       subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'clusterId': clusterId,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'subnetId': ?subnetId,
    };
  }

  factory HsmArgs.fromMap(Map<String, dynamic> map) {
    return HsmArgs(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      clusterId: map['clusterId'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}
