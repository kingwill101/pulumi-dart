// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_route_response.dart';

/// Networking configuration for the pipeline group instance.
class NetworkingConfigurationResponse {
  /// External networking mode.
  final String externalNetworkingMode;
  /// The address exposed on the cluster. Example: azuremonitorpipeline.contoso.com.
  final String? host;
  /// Networking routes configuration.
  final List<NetworkingRouteResponse> routes;

  /// Creates a new [NetworkingConfigurationResponse].
  /// [externalNetworkingMode] External networking mode.
  /// [host] The address exposed on the cluster. Example: azuremonitorpipeline.contoso.com.
  /// [routes] Networking routes configuration.
  NetworkingConfigurationResponse({
    required this.externalNetworkingMode,
    this.host,
    required this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalNetworkingMode': externalNetworkingMode,
      'host': ?host,
      'routes': pulumi.Input.encodeList<NetworkingRouteResponse, Map<String, dynamic>>(routes, (value) => value.toMap()),
    };
  }

  factory NetworkingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkingConfigurationResponse(
      externalNetworkingMode: map['externalNetworkingMode'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      routes: pulumi.Input.decodeList<NetworkingRouteResponse>(map['routes'], (value) => NetworkingRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

