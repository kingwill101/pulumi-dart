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
  NetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute({
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
      attachmentId: map['attachmentId'] == null ? null : ((map['attachmentId'] as String).input()).input(),
      destinationCidr: map['destinationCidr'] == null ? null : ((map['destinationCidr'] as String).input()).input(),
      prefixListId: map['prefixListId'] == null ? null : ((map['prefixListId'] as String).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
      routeOrigin: map['routeOrigin'] == null ? null : ((map['routeOrigin'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
    );
  }
}

