// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubnetCidrReservation resources.
class SubnetCidrReservationState {
  /// The CIDR block for the reservation.
  final pulumi.Input<String>? cidrBlock;
  /// A brief description of the reservation.
  final pulumi.Input<String>? description;
  /// ID of the AWS account that owns this CIDR reservation.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The type of reservation to create. Valid values: `explicit`, `prefix`
  final pulumi.Input<String>? reservationType;
  /// The ID of the subnet to create the reservation for.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [SubnetCidrReservationState].
  /// [cidrBlock] The CIDR block for the reservation.
  /// [description] A brief description of the reservation.
  /// [ownerId] ID of the AWS account that owns this CIDR reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationType] The type of reservation to create. Valid values: `explicit`, `prefix`
  /// [subnetId] The ID of the subnet to create the reservation for.
  SubnetCidrReservationState({
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? reservationType,
    pulumi.Output<String>? subnetId,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      description = pulumi.Input.asOptionalInput<String>(description),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservationType = pulumi.Input.asOptionalInput<String>(reservationType),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'description': ?description,
      'ownerId': ?ownerId,
      'region': ?region,
      'reservationType': ?reservationType,
      'subnetId': ?subnetId,
    };
  }

  factory SubnetCidrReservationState.fromMap(Map<String, dynamic> map) {
    return SubnetCidrReservationState(
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservationType: map['reservationType'] == null ? null : pulumi.Output.create<String>(map['reservationType'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

