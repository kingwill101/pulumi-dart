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
    required pulumi.Output<String> cidrBlock,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    required pulumi.Output<String> reservationType,
    required pulumi.Output<String> subnetId,
  }) :
      cidrBlock = pulumi.Input.asInput<String>(cidrBlock),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservationType = pulumi.Input.asInput<String>(reservationType),
      subnetId = pulumi.Input.asInput<String>(subnetId);

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
      cidrBlock: pulumi.Output.create<String>(map['cidrBlock'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservationType: pulumi.Output.create<String>(map['reservationType'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

