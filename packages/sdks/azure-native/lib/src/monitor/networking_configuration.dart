// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_route.dart';

/// Networking configuration for the pipeline group instance.
class NetworkingConfiguration {
  /// External networking mode.
  final pulumi.Input<String> externalNetworkingMode;
  /// The address exposed on the cluster. Example: azuremonitorpipeline.contoso.com.
  final pulumi.Input<String>? host;
  /// Networking routes configuration.
  final pulumi.Input<List<NetworkingRoute>> routes;

  /// Creates a new [NetworkingConfiguration].
  /// [externalNetworkingMode] External networking mode.
  /// [host] The address exposed on the cluster. Example: azuremonitorpipeline.contoso.com.
  /// [routes] Networking routes configuration.
  NetworkingConfiguration({
    required this.externalNetworkingMode,
    this.host,
    required this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalNetworkingMode': externalNetworkingMode,
      'host': ?host,
      'routes': pulumi.Input.mapInputValue<List<NetworkingRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<NetworkingRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkingConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkingConfiguration(
      externalNetworkingMode: (map['externalNetworkingMode'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      routes: (pulumi.Input.decodeList<NetworkingRoute>(map['routes'], (value) => NetworkingRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

