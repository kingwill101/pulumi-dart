// ignore_for_file: unused_element, unnecessary_cast

class GetAccessPointsAccessPointVpcConfiguration {
  /// Access point will only allow connections from this VPC.
  final String vpcId;

  /// Creates a new [GetAccessPointsAccessPointVpcConfiguration].
  /// [vpcId] Access point will only allow connections from this VPC.
  GetAccessPointsAccessPointVpcConfiguration({
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetAccessPointsAccessPointVpcConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetAccessPointsAccessPointVpcConfiguration(
      vpcId: map['vpcId'] as String,
    );
  }
}
