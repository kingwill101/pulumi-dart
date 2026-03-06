// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneVpc {
  /// ID of the VPC to associate.
  final pulumi.Input<String> vpcId;
  /// Region of the VPC to associate. Defaults to AWS provider region.
  final pulumi.Input<String>? vpcRegion;

  /// Creates a new [ZoneVpc].
  /// [vpcId] ID of the VPC to associate.
  /// [vpcRegion] Region of the VPC to associate. Defaults to AWS provider region.
  const ZoneVpc({
    required this.vpcId,
    this.vpcRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': vpcId,
      'vpcRegion': ?vpcRegion,
    };
  }

  factory ZoneVpc.fromMap(Map<String, dynamic> map) {
    return ZoneVpc(
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcRegion: (() { final guardedValue = map['vpcRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

