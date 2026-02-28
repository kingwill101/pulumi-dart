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
    required String vpcId,
    String? vpcRegion,
    required String zoneId,
  })  : vpcId = pulumi.Input.asInput<String>(vpcId),
        vpcRegion = pulumi.Input.asOptionalInput<String>(vpcRegion),
        zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpcId'] = vpcId;
    final vpcRegionValue = vpcRegion;
    if (vpcRegionValue != null) {
      map['vpcRegion'] = vpcRegionValue;
    }
    map['zoneId'] = zoneId;
    return map;
  }

  factory ZoneAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ZoneAssociationArgs(
      vpcId: map['vpcId'] as String,
      vpcRegion: map['vpcRegion'] == null ? null : map['vpcRegion'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}
