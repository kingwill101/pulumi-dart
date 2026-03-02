// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_subnet_cidr_reservation_subnet_cidr_reservation_args_doc}
/// The set of arguments for SubnetCidrReservation.
/// {@endtemplate}
/// {@macro pulumi_ec2_subnet_cidr_reservation_subnet_cidr_reservation_args_doc}
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

  /// Creates a new [SubnetCidrReservationArgs].
  /// [cidrBlock] The CIDR block for the reservation.
  /// [description] A brief description of the reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationType] The type of reservation to create. Valid values: `explicit`, `prefix`
  /// [subnetId] The ID of the subnet to create the reservation for.
  SubnetCidrReservationArgs({
    required this.cidrBlock,
    this.description,
    this.region,
    required this.reservationType,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'description': ?description,
      'region': ?region,
      'reservationType': reservationType,
      'subnetId': subnetId,
    };
  }

  factory SubnetCidrReservationArgs.fromMap(Map<String, dynamic> map) {
    return SubnetCidrReservationArgs(
      cidrBlock: (map['cidrBlock'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      reservationType: (map['reservationType'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

