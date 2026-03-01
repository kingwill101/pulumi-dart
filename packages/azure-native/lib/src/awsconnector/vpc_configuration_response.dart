// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VpcConfiguration
class VpcConfigurationResponse {
  /// If this field is specified, this access point will only allow connections from the specified VPC ID.
  final String? vpcId;

  /// Creates a new [VpcConfigurationResponse].
  /// [vpcId] If this field is specified, this access point will only allow connections from the specified VPC ID.
  VpcConfigurationResponse({
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
    };
  }

  factory VpcConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VpcConfigurationResponse(
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

