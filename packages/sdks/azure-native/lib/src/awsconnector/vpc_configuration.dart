// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VpcConfiguration
class VpcConfiguration {
  /// If this field is specified, this access point will only allow connections from the specified VPC ID.
  final String? vpcId;

  /// Creates a new [VpcConfiguration].
  /// [vpcId] If this field is specified, this access point will only allow connections from the specified VPC ID.
  VpcConfiguration({
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
    };
  }

  factory VpcConfiguration.fromMap(Map<String, dynamic> map) {
    return VpcConfiguration(
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

