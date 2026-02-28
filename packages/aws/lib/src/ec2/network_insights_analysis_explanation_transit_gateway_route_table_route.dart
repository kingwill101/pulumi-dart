// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute {
  final String? attachmentId;
  final String? destinationCidr;
  final String? prefixListId;
  final String? resourceId;
  final String? resourceType;
  final String? routeOrigin;
  final String? state;

  /// Creates a new [NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute].
  /// [attachmentId] Optional.
  /// [destinationCidr] Optional.
  /// [prefixListId] Optional.
  /// [resourceId] Optional.
  /// [resourceType] Optional.
  /// [routeOrigin] Optional.
  /// [state] Optional.
  NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute({
    this.attachmentId,
    this.destinationCidr,
    this.prefixListId,
    this.resourceId,
    this.resourceType,
    this.routeOrigin,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentIdValue = attachmentId;
    if (attachmentIdValue != null) {
      map['attachmentId'] = attachmentIdValue;
    }
    final destinationCidrValue = destinationCidr;
    if (destinationCidrValue != null) {
      map['destinationCidr'] = destinationCidrValue;
    }
    final prefixListIdValue = prefixListId;
    if (prefixListIdValue != null) {
      map['prefixListId'] = prefixListIdValue;
    }
    final resourceIdValue = resourceId;
    if (resourceIdValue != null) {
      map['resourceId'] = resourceIdValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    final routeOriginValue = routeOrigin;
    if (routeOriginValue != null) {
      map['routeOrigin'] = routeOriginValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute(
      attachmentId:
          map['attachmentId'] == null ? null : map['attachmentId'] as String,
      destinationCidr: map['destinationCidr'] == null
          ? null
          : map['destinationCidr'] as String,
      prefixListId:
          map['prefixListId'] == null ? null : map['prefixListId'] as String,
      resourceId:
          map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
      routeOrigin:
          map['routeOrigin'] == null ? null : map['routeOrigin'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
