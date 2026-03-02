// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_private_link_ip_configuration.dart';

/// Private Link Configuration on an application gateway.
class ApplicationGatewayPrivateLinkConfiguration {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of application gateway private link ip configurations.
  final pulumi.Input<List<ApplicationGatewayPrivateLinkIpConfiguration>>? ipConfigurations;
  /// Name of the private link configuration that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// Creates a new [ApplicationGatewayPrivateLinkConfiguration].
  /// [id] Resource ID.
  /// [ipConfigurations] An array of application gateway private link ip configurations.
  /// [name] Name of the private link configuration that is unique within an Application Gateway.
  ApplicationGatewayPrivateLinkConfiguration({
    this.id,
    this.ipConfigurations,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayPrivateLinkIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayPrivateLinkIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory ApplicationGatewayPrivateLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateLinkConfiguration(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayPrivateLinkIpConfiguration>(map['ipConfigurations']!, (value) => ApplicationGatewayPrivateLinkIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

