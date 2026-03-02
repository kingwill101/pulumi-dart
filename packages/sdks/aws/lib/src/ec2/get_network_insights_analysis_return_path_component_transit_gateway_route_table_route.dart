// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> destinationCidr;
  final pulumi.Input<String> prefixListId;
  final pulumi.Input<String> resourceId;
  final pulumi.Input<String> resourceType;
  final pulumi.Input<String> routeOrigin;
  final pulumi.Input<String> state;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute].
  /// [attachmentId] Required.
  /// [destinationCidr] Required.
  /// [prefixListId] Required.
  /// [resourceId] Required.
  /// [resourceType] Required.
  /// [routeOrigin] Required.
  /// [state] Required.
  GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute({
    required this.attachmentId,
    required this.destinationCidr,
    required this.prefixListId,
    required this.resourceId,
    required this.resourceType,
    required this.routeOrigin,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'destinationCidr': destinationCidr,
      'prefixListId': prefixListId,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'routeOrigin': routeOrigin,
      'state': state,
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute(
      attachmentId: (map['attachmentId'] as String).input(),
      destinationCidr: (map['destinationCidr'] as String).input(),
      prefixListId: (map['prefixListId'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      routeOrigin: (map['routeOrigin'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

