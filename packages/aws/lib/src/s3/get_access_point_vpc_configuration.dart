// ignore_for_file: unused_element, unnecessary_cast


class GetAccessPointVpcConfiguration {
  /// Access point will only allow connections from this VPC.
  final String vpcId;

  /// Creates a new [GetAccessPointVpcConfiguration].
  /// [vpcId] Access point will only allow connections from this VPC.
  GetAccessPointVpcConfiguration({
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': vpcId,
    };
  }

  factory GetAccessPointVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessPointVpcConfiguration(
      vpcId: map['vpcId'] as String,
    );
  }
}

