// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SubnetCidrReservation.
class SubnetCidrReservationArgs {
  /// The CIDR block for the reservation.
  final pulumi.Input<String> cidrBlock;

  /// A brief description of the reservation.
  final pulumi.Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The type of reservation to create. Valid values: `explicit`, `prefix`
  final pulumi.Input<String> reservationType;

  /// The ID of the subnet to create the reservation for.
  final pulumi.Input<String> subnetId;

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
      cidrBlock: pulumi.Input.asInput<String>(map['cidrBlock']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      reservationType: pulumi.Input.asInput<String>(map['reservationType']),
      subnetId: pulumi.Input.asInput<String>(map['subnetId']),
    );
  }
}
