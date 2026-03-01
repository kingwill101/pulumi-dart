// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_private_link_configuration_ip_configuration.dart';

class GetApplicationGatewayPrivateLinkConfiguration {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// One or more `ip_configuration` blocks as defined below.
  final List<GetApplicationGatewayPrivateLinkConfigurationIpConfiguration> ipConfigurations;
  /// The name of this Application Gateway.
  final String name;

  /// Creates a new [GetApplicationGatewayPrivateLinkConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [ipConfigurations] One or more `ip_configuration` blocks as defined below.
  /// [name] The name of this Application Gateway.
  GetApplicationGatewayPrivateLinkConfiguration({
    required this.id,
    required this.ipConfigurations,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipConfigurations': pulumi.Input.encodeList<GetApplicationGatewayPrivateLinkConfigurationIpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetApplicationGatewayPrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayPrivateLinkConfiguration(
      id: map['id'] as String,
      ipConfigurations: pulumi.Input.decodeList<GetApplicationGatewayPrivateLinkConfigurationIpConfiguration>(map['ipConfigurations'], (value) => GetApplicationGatewayPrivateLinkConfigurationIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

