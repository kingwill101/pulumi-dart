// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ZoneAssociation.
class ZoneAssociationArgs {
  /// The VPC to associate with the private hosted zone.
  final pulumi.Input<String> vpcId;

  /// The VPC's region. Defaults to the region of the AWS provider.
  final pulumi.Input<String>? vpcRegion;

  /// The private hosted zone to associate.
  final pulumi.Input<String> zoneId;

  ZoneAssociationArgs({
    required this.vpcId,
    this.vpcRegion,
    required this.zoneId,
  });

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
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
      vpcRegion: pulumi.Input.asOptionalInput<String>(map['vpcRegion']),
      zoneId: pulumi.Input.asInput<String>(map['zoneId']),
    );
  }
}
