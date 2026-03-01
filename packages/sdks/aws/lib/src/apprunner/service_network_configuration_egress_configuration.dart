// ignore_for_file: unused_element, unnecessary_cast


class ServiceNetworkConfigurationEgressConfiguration {
  /// The type of egress configuration. Valid values are: `DEFAULT` and `VPC`.
  final String? egressType;
  /// The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when `EgressType = VPC`.
  final String? vpcConnectorArn;

  /// Creates a new [ServiceNetworkConfigurationEgressConfiguration].
  /// [egressType] The type of egress configuration. Valid values are: `DEFAULT` and `VPC`.
  /// [vpcConnectorArn] The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when `EgressType = VPC`.
  ServiceNetworkConfigurationEgressConfiguration({
    this.egressType,
    this.vpcConnectorArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressType': ?egressType,
      'vpcConnectorArn': ?vpcConnectorArn,
    };
  }

  factory ServiceNetworkConfigurationEgressConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkConfigurationEgressConfiguration(
      egressType: map['egressType'] == null ? null : map['egressType'] as String,
      vpcConnectorArn: map['vpcConnectorArn'] == null ? null : map['vpcConnectorArn'] as String,
    );
  }
}

