// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute {
  final String attachmentId;
  final String destinationCidr;
  final String prefixListId;
  final String resourceId;
  final String resourceType;
  final String routeOrigin;
  final String state;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute].
  /// [attachmentId] Required.
  /// [destinationCidr] Required.
  /// [prefixListId] Required.
  /// [resourceId] Required.
  /// [resourceType] Required.
  /// [routeOrigin] Required.
  /// [state] Required.
  GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute({
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

  factory GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisForwardPathComponentTransitGatewayRouteTableRoute(
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
