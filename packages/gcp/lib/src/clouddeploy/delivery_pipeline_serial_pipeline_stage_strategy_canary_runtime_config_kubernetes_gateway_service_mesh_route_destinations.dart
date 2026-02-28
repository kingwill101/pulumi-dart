// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations {
  /// Required. The clusters where the Gateway API HTTPRoute resource will be deployed to. Valid entries include the associated entities IDs configured in the Target resource and "@self" to include the Target cluster.
  final List<String> destinationIds;

  /// Optional. Whether to propagate the Kubernetes Service to the route destination clusters. The Service will always be deployed to the Target cluster even if the HTTPRoute is not. This option may be used to facilitiate successful DNS lookup in the route destination clusters. Can only be set to true if destinations are specified.
  final bool? propagateService;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations].
  /// [destinationIds] Required. The clusters where the Gateway API HTTPRoute resource will be deployed to. Valid entries include the associated entities IDs configured in the Target resource and "@self" to include the Target cluster.
  /// [propagateService] Optional. Whether to propagate the Kubernetes Service to the route destination clusters. The Service will always be deployed to the Target cluster even if the HTTPRoute is not. This option may be used to facilitiate successful DNS lookup in the route destination clusters. Can only be set to true if destinations are specified.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations({
    required this.destinationIds,
    this.propagateService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationIds'] = destinationIds;
    final propagateServiceValue = propagateService;
    if (propagateServiceValue != null) {
      map['propagateService'] = propagateServiceValue;
    }
    return map;
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations(
      destinationIds: (map['destinationIds'] as List).cast<String>(),
      propagateService: map['propagateService'] == null
          ? null
          : map['propagateService'] as bool,
    );
  }
}
