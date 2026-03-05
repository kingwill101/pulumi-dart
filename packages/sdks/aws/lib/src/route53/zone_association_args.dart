// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_zone_association_zone_association_args_doc}
/// The set of arguments for ZoneAssociation.
/// {@endtemplate}
/// {@macro pulumi_route53_zone_association_zone_association_args_doc}
class ZoneAssociationArgs {
  /// The VPC to associate with the private hosted zone.
  final pulumi.Input<String> vpcId;
  /// The VPC's region. Defaults to the region of the AWS provider.
  final pulumi.Input<String>? vpcRegion;
  /// The private hosted zone to associate.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneAssociationArgs].
  /// [vpcId] The VPC to associate with the private hosted zone.
  /// [vpcRegion] The VPC's region. Defaults to the region of the AWS provider.
  /// [zoneId] The private hosted zone to associate.
  ZoneAssociationArgs({
    required this.vpcId,
    this.vpcRegion,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': vpcId,
      'vpcRegion': ?vpcRegion,
      'zoneId': zoneId,
    };
  }

  factory ZoneAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ZoneAssociationArgs(
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcRegion: (() { final guardedValue = map['vpcRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

