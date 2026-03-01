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
    pulumi.Output<String>? cidrReservationCidr,
    pulumi.Output<String>? cidrReservationDescription,
    pulumi.Output<String>? cidrReservationMask,
    pulumi.Output<String>? cidrReservationType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchCidrReservationId,
    pulumi.Output<String>? vswitchCidrReservationName,
    pulumi.Output<String>? vswitchId,
  }) :
      cidrReservationCidr = pulumi.Input.asOptionalInput<String>(cidrReservationCidr),
      cidrReservationDescription = pulumi.Input.asOptionalInput<String>(cidrReservationDescription),
      cidrReservationMask = pulumi.Input.asOptionalInput<String>(cidrReservationMask),
      cidrReservationType = pulumi.Input.asOptionalInput<String>(cidrReservationType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchCidrReservationId = pulumi.Input.asOptionalInput<String>(vswitchCidrReservationId),
      vswitchCidrReservationName = pulumi.Input.asOptionalInput<String>(vswitchCidrReservationName),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      cidrReservationCidr: map['cidrReservationCidr'] == null ? null : pulumi.Output.create<String>(map['cidrReservationCidr'] as String),
      cidrReservationDescription: map['cidrReservationDescription'] == null ? null : pulumi.Output.create<String>(map['cidrReservationDescription'] as String),
      cidrReservationMask: map['cidrReservationMask'] == null ? null : pulumi.Output.create<String>(map['cidrReservationMask'] as String),
      cidrReservationType: map['cidrReservationType'] == null ? null : pulumi.Output.create<String>(map['cidrReservationType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchCidrReservationId: map['vswitchCidrReservationId'] == null ? null : pulumi.Output.create<String>(map['vswitchCidrReservationId'] as String),
      vswitchCidrReservationName: map['vswitchCidrReservationName'] == null ? null : pulumi.Output.create<String>(map['vswitchCidrReservationName'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

