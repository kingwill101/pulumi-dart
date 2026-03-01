// ignore_for_file: unused_element, unnecessary_cast


class AccessPointVpcConfiguration {
  /// The vpc ID is required only when the value of NetworkOrigin is VPC.
  final String? vpcId;

  /// Creates a new [AccessPointVpcConfiguration].
  /// [vpcId] The vpc ID is required only when the value of NetworkOrigin is VPC.
  AccessPointVpcConfiguration({
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
    };
  }

  factory AccessPointVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessPointVpcConfiguration(
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

