// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_point_network_configuration_private_network_configuration.dart';
import 'ingress_point_network_configuration_public_network_configuration.dart';

class IngressPointNetworkConfiguration {
  /// Configuration for a private ingress point that uses a VPC endpoint. See `privateNetworkConfiguration` Block for details.
  final pulumi.Input<IngressPointNetworkConfigurationPrivateNetworkConfiguration>? privateNetworkConfiguration;
  /// Configuration for a public ingress point. See `publicNetworkConfiguration` Block for details.
  final pulumi.Input<IngressPointNetworkConfigurationPublicNetworkConfiguration>? publicNetworkConfiguration;

  /// Creates a new [IngressPointNetworkConfiguration].
  /// [privateNetworkConfiguration] Configuration for a private ingress point that uses a VPC endpoint. See `privateNetworkConfiguration` Block for details.
  /// [publicNetworkConfiguration] Configuration for a public ingress point. See `publicNetworkConfiguration` Block for details.
  const IngressPointNetworkConfiguration({
    this.privateNetworkConfiguration,
    this.publicNetworkConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<IngressPointNetworkConfigurationPrivateNetworkConfiguration, Map<String, dynamic>>(privateNetworkConfiguration, (value) => value.toMap()),
      'publicNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<IngressPointNetworkConfigurationPublicNetworkConfiguration, Map<String, dynamic>>(publicNetworkConfiguration, (value) => value.toMap()),
    };
  }

  factory IngressPointNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return IngressPointNetworkConfiguration(
      privateNetworkConfiguration: (() { final guardedValue = map['privateNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointNetworkConfigurationPrivateNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkConfiguration: (() { final guardedValue = map['publicNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressPointNetworkConfigurationPublicNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
