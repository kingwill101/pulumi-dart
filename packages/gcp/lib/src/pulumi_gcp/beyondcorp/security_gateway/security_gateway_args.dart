// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../security_gateway_hub/security_gateway_hub.dart';
import '../security_gateway_proxy_protocol_config/security_gateway_proxy_protocol_config.dart';
import '../security_gateway_service_discovery/security_gateway_service_discovery.dart';

/// The set of arguments for SecurityGateway.
class SecurityGatewayArgs {
  /// Optional. An arbitrary user-provided name for the SecurityGateway.
  /// Cannot exceed 64 characters.
  final Input<String>? displayName;

  /// Optional. Map of Hubs that represents regional data path deployment with GCP region
  /// as a key.
  /// Structure is documented below.
  final Input<List<SecurityGatewayHub>>? hubs;

  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`.
  ///
  /// > **Warning:** `location` is deprecated and will be removed in a future major release.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Shared proxy configuration for all apps.
  /// Structure is documented below.
  final Input<SecurityGatewayProxyProtocolConfig>? proxyProtocolConfig;

  /// Optional. User-settable SecurityGateway resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  final Input<String> securityGatewayId;

  /// Settings related to the Service Discovery.
  /// Structure is documented below.
  final Input<SecurityGatewayServiceDiscovery>? serviceDiscovery;

  SecurityGatewayArgs({
    this.displayName,
    this.hubs,
    this.location,
    this.project,
    this.proxyProtocolConfig,
    required this.securityGatewayId,
    this.serviceDiscovery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final hubsValue = hubs;
    if (hubsValue != null) {
      map['hubs'] = Input.mapOptionalInputValue<List<SecurityGatewayHub>,
              List<Map<String, dynamic>>>(
          hubsValue,
          (value) => Input.encodeList<SecurityGatewayHub, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyProtocolConfigValue = proxyProtocolConfig;
    if (proxyProtocolConfigValue != null) {
      map['proxyProtocolConfig'] = Input.mapOptionalInputValue<
              SecurityGatewayProxyProtocolConfig, Map<String, dynamic>>(
          proxyProtocolConfigValue, (value) => value.toMap());
    }
    map['securityGatewayId'] = securityGatewayId;
    final serviceDiscoveryValue = serviceDiscovery;
    if (serviceDiscoveryValue != null) {
      map['serviceDiscovery'] = Input.mapOptionalInputValue<
              SecurityGatewayServiceDiscovery, Map<String, dynamic>>(
          serviceDiscoveryValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityGatewayArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      hubs: Input.asOptionalInput<List<SecurityGatewayHub>>(map['hubs']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      proxyProtocolConfig:
          Input.asOptionalInput<SecurityGatewayProxyProtocolConfig>(
              map['proxyProtocolConfig']),
      securityGatewayId: Input.asInput<String>(map['securityGatewayId']),
      serviceDiscovery: Input.asOptionalInput<SecurityGatewayServiceDiscovery>(
          map['serviceDiscovery']),
    );
  }
}
