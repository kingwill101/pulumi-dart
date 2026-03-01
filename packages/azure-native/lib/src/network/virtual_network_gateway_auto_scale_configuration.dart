// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_network_gateway_auto_scale_bounds.dart';

/// Virtual Network Gateway Autoscale Configuration details
class VirtualNetworkGatewayAutoScaleConfiguration {
  /// The bounds of the autoscale configuration
  final VirtualNetworkGatewayAutoScaleBounds? bounds;

  /// Creates a new [VirtualNetworkGatewayAutoScaleConfiguration].
  /// [bounds] The bounds of the autoscale configuration
  VirtualNetworkGatewayAutoScaleConfiguration({
    this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': ?bounds == null ? null : bounds!.toMap(),
    };
  }

  factory VirtualNetworkGatewayAutoScaleConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayAutoScaleConfiguration(
      bounds: map['bounds'] == null ? null : VirtualNetworkGatewayAutoScaleBounds.fromMap((map['bounds'] as Map).cast<String, dynamic>()),
    );
  }
}

