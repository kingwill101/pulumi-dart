// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eflo_subnet_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_eflo_subnet_subnet_args_doc}
class SubnetArgs {
  /// CIDR network segment.
  final pulumi.Input<String> cidr;
  /// The Subnet name.
  final pulumi.Input<String> subnetName;
  /// Eflo subnet usage type. optional value:
  /// - General type is not filled in
  /// - OOB:OOB type
  /// - LB: LB type
  final pulumi.Input<String>? type;
  /// The Eflo VPD ID.
  final pulumi.Input<String> vpdId;
  /// The zone ID  of the resource.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SubnetArgs].
  /// [cidr] CIDR network segment.
  /// [subnetName] The Subnet name.
  /// [type] Eflo subnet usage type. optional value:
  /// [vpdId] The Eflo VPD ID.
  /// [zoneId] The zone ID  of the resource.
  SubnetArgs({
    required pulumi.Output<String> cidr,
    required pulumi.Output<String> subnetName,
    pulumi.Output<String>? type,
    required pulumi.Output<String> vpdId,
    required pulumi.Output<String> zoneId,
  }) :
      cidr = pulumi.Input.asInput<String>(cidr),
      subnetName = pulumi.Input.asInput<String>(subnetName),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpdId = pulumi.Input.asInput<String>(vpdId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'subnetName': subnetName,
      'type': ?type,
      'vpdId': vpdId,
      'zoneId': zoneId,
    };
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      cidr: pulumi.Output.create<String>(map['cidr'] as String),
      subnetName: pulumi.Output.create<String>(map['subnetName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpdId: pulumi.Output.create<String>(map['vpdId'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

