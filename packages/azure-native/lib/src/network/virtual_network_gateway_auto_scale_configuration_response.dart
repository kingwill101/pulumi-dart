// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_network_gateway_auto_scale_bounds_response.dart';

/// Virtual Network Gateway Autoscale Configuration details
class VirtualNetworkGatewayAutoScaleConfigurationResponse {
  /// The bounds of the autoscale configuration
  final VirtualNetworkGatewayAutoScaleBoundsResponse? bounds;

  /// Creates a new [VirtualNetworkGatewayAutoScaleConfigurationResponse].
  /// [bounds] The bounds of the autoscale configuration
  VirtualNetworkGatewayAutoScaleConfigurationResponse({
    this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': ?bounds == null ? null : bounds!.toMap(),
    };
  }

  factory VirtualNetworkGatewayAutoScaleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayAutoScaleConfigurationResponse(
      bounds: map['bounds'] == null ? null : VirtualNetworkGatewayAutoScaleBoundsResponse.fromMap((map['bounds'] as Map).cast<String, dynamic>()),
    );
  }
}

