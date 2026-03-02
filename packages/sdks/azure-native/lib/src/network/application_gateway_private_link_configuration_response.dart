// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_private_link_ip_configuration_response.dart';

/// Private Link Configuration on an application gateway.
class ApplicationGatewayPrivateLinkConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of application gateway private link ip configurations.
  final pulumi.Input<List<ApplicationGatewayPrivateLinkIpConfigurationResponse>>? ipConfigurations;
  /// Name of the private link configuration that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// The provisioning state of the application gateway private link configuration.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayPrivateLinkIpConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayPrivateLinkIpConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayPrivateLinkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateLinkConfigurationResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayPrivateLinkIpConfigurationResponse>(map['ipConfigurations']!, (value) => ApplicationGatewayPrivateLinkIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

