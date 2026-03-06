// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute {
  final pulumi.Input<String>? attachmentId;
  final pulumi.Input<String>? destinationCidr;
  final pulumi.Input<String>? prefixListId;
  final pulumi.Input<String>? resourceId;
  final pulumi.Input<String>? resourceType;
  final pulumi.Input<String>? routeOrigin;
  final pulumi.Input<String>? state;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute].
  /// [attachmentId] Optional.
  /// [destinationCidr] Optional.
  /// [prefixListId] Optional.
  /// [resourceId] Optional.
  /// [resourceType] Optional.
  /// [routeOrigin] Optional.
  /// [state] Optional.
  const NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute({
    this.attachmentId,
    this.destinationCidr,
    this.prefixListId,
    this.resourceId,
    this.resourceType,
    this.routeOrigin,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'destinationCidr': ?destinationCidr,
      'prefixListId': ?prefixListId,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'routeOrigin': ?routeOrigin,
      'state': ?state,
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute(
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationCidr: (() { final guardedValue = map['destinationCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeOrigin: (() { final guardedValue = map['routeOrigin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

