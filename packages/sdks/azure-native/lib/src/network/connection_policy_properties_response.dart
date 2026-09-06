// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_configuration_response.dart';

/// Properties of the ConnectionPolicy resource.
class ConnectionPolicyPropertiesResponse {
  /// List of connection names (e.g. VpnConnection, HubVirtualNetworkConnection) associated with this ConnectionPolicy. These are resource names, not Azure resource IDs, consistent with the established VirtualWAN pattern used by HubRouteTable.associatedConnections.
  final pulumi.Input<List<String>> associatedConnections;
  /// Enable internet security.
  final pulumi.Input<bool?>? enableInternetSecurity;
  /// The provisioning state of the ConnectionPolicy resource.
  final pulumi.Input<String> provisioningState;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfigurationResponse?>? routingConfiguration;

  /// Creates a new [ConnectionPolicyPropertiesResponse].
  /// [associatedConnections] List of connection names (e.g. VpnConnection, HubVirtualNetworkConnection) associated with this ConnectionPolicy. These are resource names, not Azure resource IDs, consistent with the established VirtualWAN pattern used by HubRouteTable.associatedConnections.
  /// [enableInternetSecurity] Enable internet security.
  /// [provisioningState] The provisioning state of the ConnectionPolicy resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  const ConnectionPolicyPropertiesResponse({
    required this.associatedConnections,
    this.enableInternetSecurity,
    required this.provisioningState,
    this.routingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedConnections': associatedConnections,
      'enableInternetSecurity': ?enableInternetSecurity,
      'provisioningState': provisioningState,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfigurationResponse, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
    };
  }

  factory ConnectionPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionPolicyPropertiesResponse(
      associatedConnections: pulumi.Input.fromValue((map['associatedConnections'] as List).cast<String>()),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
