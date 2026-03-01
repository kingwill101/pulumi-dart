// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_private_link_ip_configuration_response.dart';

/// Private Link Configuration on an application gateway.
class ApplicationGatewayPrivateLinkConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// An array of application gateway private link ip configurations.
  final List<ApplicationGatewayPrivateLinkIpConfigurationResponse>? ipConfigurations;
  /// Name of the private link configuration that is unique within an Application Gateway.
  final String? name;
  /// The provisioning state of the application gateway private link configuration.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayPrivateLinkConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipConfigurations] An array of application gateway private link ip configurations.
  /// [name] Name of the private link configuration that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the application gateway private link configuration.
  /// [type] Type of the resource.
  ApplicationGatewayPrivateLinkConfigurationResponse({
    required this.etag,
    this.id,
    this.ipConfigurations,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayPrivateLinkIpConfigurationResponse, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayPrivateLinkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateLinkConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayPrivateLinkIpConfigurationResponse>(map['ipConfigurations'], (value) => ApplicationGatewayPrivateLinkIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

