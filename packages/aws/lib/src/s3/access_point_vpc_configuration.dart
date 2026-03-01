// ignore_for_file: unused_element, unnecessary_cast

class AccessPointVpcConfiguration {
  /// This access point will only allow connections from the specified VPC ID.
  final String vpcId;

  /// Creates a new [AccessPointVpcConfiguration].
  /// [vpcId] This access point will only allow connections from the specified VPC ID.
  AccessPointVpcConfiguration({required this.vpcId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vpcId': vpcId};
  }

  factory AccessPointVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessPointVpcConfiguration(vpcId: map['vpcId'] as String);
  }
}
