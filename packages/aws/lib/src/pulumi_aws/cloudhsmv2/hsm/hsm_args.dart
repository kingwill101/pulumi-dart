// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Hsm.
class HsmArgs {
  /// The IDs of AZ in which HSM module will be located. Conflicts with `subnet_id`.
  final Input<String>? availabilityZone;

  /// The ID of Cloud HSM v2 cluster to which HSM will be added.
  final Input<String> clusterId;

  /// The IP address of HSM module. Must be within the CIDR of selected subnet.
  ///
  /// > **NOTE:** Either `subnet_id` or `availability_zone` must be specified.
  final Input<String>? ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of subnet in which HSM module will be located. Conflicts with `availability_zone`.
  final Input<String>? subnetId;

  HsmArgs({
    this.availabilityZone,
    required this.clusterId,
    this.ipAddress,
    this.region,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    map['clusterId'] = clusterId;
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    return map;
  }

  factory HsmArgs.fromMap(Map<String, dynamic> map) {
    return HsmArgs(
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      clusterId: Input.asInput<String>(map['clusterId']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetId: Input.asOptionalInput<String>(map['subnetId']),
    );
  }
}
