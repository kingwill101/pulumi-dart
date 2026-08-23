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
  const SubnetCidrReservationState({
    this.cidrBlock,
    this.description,
    this.ownerId,
    this.region,
    this.reservationType,
    this.subnetId,
  });

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
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationType: (() { final guardedValue = map['reservationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
