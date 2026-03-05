// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> destinationCidr;
  final pulumi.Input<String> prefixListId;
  final pulumi.Input<String> resourceId;
  final pulumi.Input<String> resourceType;
  final pulumi.Input<String> routeOrigin;
  final pulumi.Input<String> state;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute].
  /// [attachmentId] Required.
  /// [destinationCidr] Required.
  /// [prefixListId] Required.
  /// [resourceId] Required.
  /// [resourceType] Required.
  /// [routeOrigin] Required.
  /// [state] Required.
  GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute({
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

  factory GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationTransitGatewayRouteTableRoute(
      attachmentId: pulumi.Input.fromValue(map['attachmentId'] as String),
      destinationCidr: pulumi.Input.fromValue(map['destinationCidr'] as String),
      prefixListId: pulumi.Input.fromValue(map['prefixListId'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      routeOrigin: pulumi.Input.fromValue(map['routeOrigin'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

