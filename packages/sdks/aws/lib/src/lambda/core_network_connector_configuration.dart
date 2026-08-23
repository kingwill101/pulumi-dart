// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'core_network_connector_configuration_vpc_egress_configuration.dart';

class CoreNetworkConnectorConfiguration {
  /// Configuration for routing egress traffic through a VPC. See `vpcEgressConfiguration` Block below.
  final pulumi.Input<CoreNetworkConnectorConfigurationVpcEgressConfiguration>? vpcEgressConfiguration;

  /// Creates a new [CoreNetworkConnectorConfiguration].
  /// [vpcEgressConfiguration] Configuration for routing egress traffic through a VPC. See `vpcEgressConfiguration` Block below.
  const CoreNetworkConnectorConfiguration({
    this.vpcEgressConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcEgressConfiguration': ?pulumi.Input.mapOptionalInputValue<CoreNetworkConnectorConfigurationVpcEgressConfiguration, Map<String, dynamic>>(vpcEgressConfiguration, (value) => value.toMap()),
    };
  }

  factory CoreNetworkConnectorConfiguration.fromMap(Map<String, dynamic> map) {
    return CoreNetworkConnectorConfiguration(
      vpcEgressConfiguration: (() { final guardedValue = map['vpcEgressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CoreNetworkConnectorConfigurationVpcEgressConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
