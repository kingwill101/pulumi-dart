// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_vswitch_cidr_reservation_vswitch_cidr_reservation_args_doc}
/// The set of arguments for VswitchCidrReservation.
/// {@endtemplate}
/// {@macro pulumi_vpc_vswitch_cidr_reservation_vswitch_cidr_reservation_args_doc}
class VswitchCidrReservationArgs {
  /// Reserved network segment CIdrBlock.
  final pulumi.Input<String>? cidrReservationCidr;
  /// The description of the reserved CIDR block.
  final pulumi.Input<String>? cidrReservationDescription;
  /// Reserved segment mask.
  final pulumi.Input<String>? cidrReservationMask;
  /// Reserved CIDR Block Type.Valid values: `Prefix`. Default value: Prefix.
  final pulumi.Input<String>? cidrReservationType;
  /// Reserved ip version of network segment, valid values: `IPv4`, `IPv6`, default IPv4.
  final pulumi.Input<String>? ipVersion;
  /// The name of the resource.
  final pulumi.Input<String>? vswitchCidrReservationName;
  /// The Id of the switch instance.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [VswitchCidrReservationArgs].
  /// [cidrReservationCidr] Reserved network segment CIdrBlock.
  /// [cidrReservationDescription] The description of the reserved CIDR block.
  /// [cidrReservationMask] Reserved segment mask.
  /// [cidrReservationType] Reserved CIDR Block Type.Valid values: `Prefix`. Default value: Prefix.
  /// [ipVersion] Reserved ip version of network segment, valid values: `IPv4`, `IPv6`, default IPv4.
  /// [vswitchCidrReservationName] The name of the resource.
  /// [vswitchId] The Id of the switch instance.
  VswitchCidrReservationArgs({
    String? cidrReservationCidr,
    String? cidrReservationDescription,
    String? cidrReservationMask,
    String? cidrReservationType,
    String? ipVersion,
    String? vswitchCidrReservationName,
    required String vswitchId,
  }) :
      cidrReservationCidr = pulumi.Input.asOptionalInput<String>(cidrReservationCidr),
      cidrReservationDescription = pulumi.Input.asOptionalInput<String>(cidrReservationDescription),
      cidrReservationMask = pulumi.Input.asOptionalInput<String>(cidrReservationMask),
      cidrReservationType = pulumi.Input.asOptionalInput<String>(cidrReservationType),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      vswitchCidrReservationName = pulumi.Input.asOptionalInput<String>(vswitchCidrReservationName),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrReservationCidr': ?cidrReservationCidr,
      'cidrReservationDescription': ?cidrReservationDescription,
      'cidrReservationMask': ?cidrReservationMask,
      'cidrReservationType': ?cidrReservationType,
      'ipVersion': ?ipVersion,
      'vswitchCidrReservationName': ?vswitchCidrReservationName,
      'vswitchId': vswitchId,
    };
  }

  factory VswitchCidrReservationArgs.fromMap(Map<String, dynamic> map) {
    return VswitchCidrReservationArgs(
      cidrReservationCidr: map['cidrReservationCidr'] == null ? null : map['cidrReservationCidr'] as String,
      cidrReservationDescription: map['cidrReservationDescription'] == null ? null : map['cidrReservationDescription'] as String,
      cidrReservationMask: map['cidrReservationMask'] == null ? null : map['cidrReservationMask'] as String,
      cidrReservationType: map['cidrReservationType'] == null ? null : map['cidrReservationType'] as String,
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as String,
      vswitchCidrReservationName: map['vswitchCidrReservationName'] == null ? null : map['vswitchCidrReservationName'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

