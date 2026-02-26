// ignore_for_file: unused_element, unnecessary_cast

class GetAccessPointVpcConfiguration {
  /// Access point will only allow connections from this VPC.
  final String vpcId;

  GetAccessPointVpcConfiguration({
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetAccessPointVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessPointVpcConfiguration(
      vpcId: map['vpcId'] as String,
    );
  }
}
