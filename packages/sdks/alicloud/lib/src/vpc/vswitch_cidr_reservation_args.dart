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
  const VswitchCidrReservationArgs({
    this.cidrReservationCidr,
    this.cidrReservationDescription,
    this.cidrReservationMask,
    this.cidrReservationType,
    this.ipVersion,
    this.vswitchCidrReservationName,
    required this.vswitchId,
  });

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
      cidrReservationCidr: (() { final guardedValue = map['cidrReservationCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrReservationDescription: (() { final guardedValue = map['cidrReservationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrReservationMask: (() { final guardedValue = map['cidrReservationMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrReservationType: (() { final guardedValue = map['cidrReservationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchCidrReservationName: (() { final guardedValue = map['vswitchCidrReservationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

