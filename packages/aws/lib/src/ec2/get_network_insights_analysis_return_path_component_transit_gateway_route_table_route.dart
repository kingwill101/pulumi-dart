// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute {
  final String attachmentId;
  final String destinationCidr;
  final String prefixListId;
  final String resourceId;
  final String resourceType;
  final String routeOrigin;
  final String state;

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
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['destinationCidr'] = destinationCidr;
    map['prefixListId'] = prefixListId;
    map['resourceId'] = resourceId;
    map['resourceType'] = resourceType;
    map['routeOrigin'] = routeOrigin;
    map['state'] = state;
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentTransitGatewayRouteTableRoute(
      attachmentId: map['attachmentId'] as String,
      destinationCidr: map['destinationCidr'] as String,
      prefixListId: map['prefixListId'] as String,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      routeOrigin: map['routeOrigin'] as String,
      state: map['state'] as String,
    );
  }
}
