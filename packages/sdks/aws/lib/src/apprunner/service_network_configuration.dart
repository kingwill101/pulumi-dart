// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_configuration_egress_configuration.dart';
import 'service_network_configuration_ingress_configuration.dart';

class ServiceNetworkConfiguration {
  /// Network configuration settings for outbound message traffic. See Egress Configuration below for more details.
  final pulumi.Input<ServiceNetworkConfigurationEgressConfiguration>? egressConfiguration;
  /// Network configuration settings for inbound network traffic. See Ingress Configuration below for more details.
  final pulumi.Input<ServiceNetworkConfigurationIngressConfiguration>? ingressConfiguration;
  /// App Runner provides you with the option to choose between Internet Protocol version 4 (IPv4) and dual stack (IPv4 and IPv6) for your incoming public network configuration. Valid values: `IPV4`, `DUAL_STACK`. Default: `IPV4`.
  final pulumi.Input<String>? ipAddressType;

  /// Creates a new [ServiceNetworkConfiguration].
  /// [egressConfiguration] Network configuration settings for outbound message traffic. See Egress Configuration below for more details.
  /// [ingressConfiguration] Network configuration settings for inbound network traffic. See Ingress Configuration below for more details.
  /// [ipAddressType] App Runner provides you with the option to choose between Internet Protocol version 4 (IPv4) and dual stack (IPv4 and IPv6) for your incoming public network configuration. Valid values: `IPV4`, `DUAL_STACK`. Default: `IPV4`.
  ServiceNetworkConfiguration({
    this.egressConfiguration,
    this.ingressConfiguration,
    this.ipAddressType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkConfigurationEgressConfiguration, Map<String, dynamic>>(egressConfiguration, (value) => value.toMap()),
      'ingressConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkConfigurationIngressConfiguration, Map<String, dynamic>>(ingressConfiguration, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
    };
  }

  factory ServiceNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkConfiguration(
      egressConfiguration: map['egressConfiguration'] == null ? null : ((ServiceNetworkConfigurationEgressConfiguration.fromMap((map['egressConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      ingressConfiguration: map['ingressConfiguration'] == null ? null : ((ServiceNetworkConfigurationIngressConfiguration.fromMap((map['ingressConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      ipAddressType: map['ipAddressType'] == null ? null : ((map['ipAddressType'] as String).input()).input(),
    );
  }
}

