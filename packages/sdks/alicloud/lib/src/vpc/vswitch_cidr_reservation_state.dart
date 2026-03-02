// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VswitchCidrReservation resources.
class VswitchCidrReservationState {
  /// Reserved network segment CIdrBlock.
  final pulumi.Input<String>? cidrReservationCidr;
  /// The description of the reserved CIDR block.
  final pulumi.Input<String>? cidrReservationDescription;
  /// Reserved segment mask.
  final pulumi.Input<String>? cidrReservationMask;
  /// Reserved CIDR Block Type.Valid values: `Prefix`. Default value: Prefix.
  final pulumi.Input<String>? cidrReservationType;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Reserved ip version of network segment, valid values: `IPv4`, `IPv6`, default IPv4.
  final pulumi.Input<String>? ipVersion;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The id of the vpc instance to which the reserved CIDR block belongs.
  final pulumi.Input<String>? vpcId;
  /// The resource attribute field of the resource ID.
  final pulumi.Input<String>? vswitchCidrReservationId;
  /// The name of the resource.
  final pulumi.Input<String>? vswitchCidrReservationName;
  /// The Id of the switch instance.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [VswitchCidrReservationState].
  /// [cidrReservationCidr] Reserved network segment CIdrBlock.
  /// [cidrReservationDescription] The description of the reserved CIDR block.
  /// [cidrReservationMask] Reserved segment mask.
  /// [cidrReservationType] Reserved CIDR Block Type.Valid values: `Prefix`. Default value: Prefix.
  /// [createTime] The creation time of the resource.
  /// [ipVersion] Reserved ip version of network segment, valid values: `IPv4`, `IPv6`, default IPv4.
  /// [status] The status of the resource.
  /// [vpcId] The id of the vpc instance to which the reserved CIDR block belongs.
  /// [vswitchCidrReservationId] The resource attribute field of the resource ID.
  /// [vswitchCidrReservationName] The name of the resource.
  /// [vswitchId] The Id of the switch instance.
  VswitchCidrReservationState({
    this.cidrReservationCidr,
    this.cidrReservationDescription,
    this.cidrReservationMask,
    this.cidrReservationType,
    this.createTime,
    this.ipVersion,
    this.status,
    this.vpcId,
    this.vswitchCidrReservationId,
    this.vswitchCidrReservationName,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrReservationCidr': ?cidrReservationCidr,
      'cidrReservationDescription': ?cidrReservationDescription,
      'cidrReservationMask': ?cidrReservationMask,
      'cidrReservationType': ?cidrReservationType,
      'createTime': ?createTime,
      'ipVersion': ?ipVersion,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchCidrReservationId': ?vswitchCidrReservationId,
      'vswitchCidrReservationName': ?vswitchCidrReservationName,
      'vswitchId': ?vswitchId,
    };
  }

  factory VswitchCidrReservationState.fromMap(Map<String, dynamic> map) {
    return VswitchCidrReservationState(
      cidrReservationCidr: map['cidrReservationCidr'] == null ? null : (map['cidrReservationCidr']! as String).input(),
      cidrReservationDescription: map['cidrReservationDescription'] == null ? null : (map['cidrReservationDescription']! as String).input(),
      cidrReservationMask: map['cidrReservationMask'] == null ? null : (map['cidrReservationMask']! as String).input(),
      cidrReservationType: map['cidrReservationType'] == null ? null : (map['cidrReservationType']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchCidrReservationId: map['vswitchCidrReservationId'] == null ? null : (map['vswitchCidrReservationId']! as String).input(),
      vswitchCidrReservationName: map['vswitchCidrReservationName'] == null ? null : (map['vswitchCidrReservationName']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

