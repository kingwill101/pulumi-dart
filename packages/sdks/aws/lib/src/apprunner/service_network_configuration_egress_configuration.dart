// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkConfigurationEgressConfiguration {
  /// The type of egress configuration. Valid values are: `DEFAULT` and `VPC`.
  final pulumi.Input<String>? egressType;
  /// The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when `EgressType = VPC`.
  final pulumi.Input<String>? vpcConnectorArn;

  /// Creates a new [ServiceNetworkConfigurationEgressConfiguration].
  /// [egressType] The type of egress configuration. Valid values are: `DEFAULT` and `VPC`.
  /// [vpcConnectorArn] The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when `EgressType = VPC`.
  const ServiceNetworkConfigurationEgressConfiguration({
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
      egressType: (() { final guardedValue = map['egressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConnectorArn: (() { final guardedValue = map['vpcConnectorArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

