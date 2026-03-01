// ignore_for_file: unused_element, unnecessary_cast

class ZoneVpc {
  /// ID of the VPC to associate.
  final String vpcId;

  /// Region of the VPC to associate. Defaults to AWS provider region.
  final String? vpcRegion;

  /// Creates a new [ZoneVpc].
  /// [vpcId] ID of the VPC to associate.
  /// [vpcRegion] Region of the VPC to associate. Defaults to AWS provider region.
  ZoneVpc({required this.vpcId, this.vpcRegion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vpcId': vpcId, 'vpcRegion': ?vpcRegion};
  }

  factory ZoneVpc.fromMap(Map<String, dynamic> map) {
    return ZoneVpc(
      vpcId: map['vpcId'] as String,
      vpcRegion: map['vpcRegion'] == null ? null : map['vpcRegion'] as String,
    );
  }
}
