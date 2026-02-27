// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SubnetCidrReservation.
class SubnetCidrReservationArgs {
  /// The CIDR block for the reservation.
  final Input<String> cidrBlock;

  /// A brief description of the reservation.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The type of reservation to create. Valid values: `explicit`, `prefix`
  final Input<String> reservationType;

  /// The ID of the subnet to create the reservation for.
  final Input<String> subnetId;

  SubnetCidrReservationArgs({
    required this.cidrBlock,
    this.description,
    this.region,
    required this.reservationType,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlock'] = cidrBlock;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['reservationType'] = reservationType;
    map['subnetId'] = subnetId;
    return map;
  }

  factory SubnetCidrReservationArgs.fromMap(Map<String, dynamic> map) {
    return SubnetCidrReservationArgs(
      cidrBlock: Input.asInput<String>(map['cidrBlock']),
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
      reservationType: Input.asInput<String>(map['reservationType']),
      subnetId: Input.asInput<String>(map['subnetId']),
    );
  }
}
