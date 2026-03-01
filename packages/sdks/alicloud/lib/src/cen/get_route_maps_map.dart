// ignore_for_file: unused_element, unnecessary_cast


class GetRouteMapsMap {
  /// A match statement. It indicates the mode in which the as-path attribute is matched.
  final String asPathMatchMode;
  /// The ID of the CEN instance.
  final String cenId;
  /// The ID of the region to which the CEN instance belongs.
  final String cenRegionId;
  /// A match statement. It indicates the mode in which the prefix attribute is matched.
  final String cidrMatchMode;
  /// A match statement. It indicates the mode in which the community attribute is matched.
  final String communityMatchMode;
  /// An action statement. It indicates the mode in which the community attribute is operated.
  final String communityOperateMode;
  /// The description of the route map.
  final String description;
  /// A match statement that indicates the list of IDs of the destination instances.
  final List<String> destinationChildInstanceTypes;
  /// A match statement that indicates the prefix list.
  final List<String> destinationCidrBlocks;
  /// A match statement that indicates the list of IDs of the destination instances.
  final List<String> destinationInstanceIds;
  /// Indicates whether to enable the reverse match method of the DestinationInstanceIds match condition.
  final bool destinationInstanceIdsReverseMatch;
  /// A match statement that indicates the list of IDs of the destination route tables.
  final List<String> destinationRouteTableIds;
  /// The ID of the route map. It formats as `<cen_id>:<route_map_id>`. Before 1.161.0, it is `route_map_id`.
  final String id;
  /// The action that is performed to a route if the route meets all the match conditions.
  final String mapResult;
  /// A match statement that indicates the As path list.
  final List<String> matchAsns;
  /// A match statement that indicates the community set.
  final List<String> matchCommunitySets;
  /// The priority of the next route map that is associated with the current route map.
  final int nextPriority;
  /// An action statement that operates the community attribute.
  final List<String> operateCommunitySets;
  /// An action statement that modifies the preference of the route.
  final int preference;
  /// Indicates AS Path prepending when a regional gateway receives or publishes a route.
  final List<String> prependAsPaths;
  /// The priority of the route map.
  final int priority;
  /// The ID of the route map.
  final String routeMapId;
  /// A match statement that indicates the list of route types.
  final List<String> routeTypes;
  /// A match statement that indicates the list of IDs of the source instances.
  final List<String> sourceChildInstanceTypes;
  /// A match statement that indicates the list of IDs of the source instances.
  final List<String> sourceInstanceIds;
  /// Indicates whether to enable the reverse match method of the SourceInstanceIds match condition.
  final bool sourceInstanceIdsReverseMatch;
  /// A match statement that indicates the list of IDs of the source regions.
  final List<String> sourceRegionIds;
  /// A match statement that indicates the list of IDs of the source route tables.
  final List<String> sourceRouteTableIds;
  /// The status of the route map, including `Creating`, `Active` and `Deleting`.
  final String status;
  /// The direction in which the route map is applied, including `RegionIn` and `RegionOut`.
  final String transmitDirection;

  /// Creates a new [GetRouteMapsMap].
  /// [asPathMatchMode] A match statement. It indicates the mode in which the as-path attribute is matched.
  /// [cenId] The ID of the CEN instance.
  /// [cenRegionId] The ID of the region to which the CEN instance belongs.
  /// [cidrMatchMode] A match statement. It indicates the mode in which the prefix attribute is matched.
  /// [communityMatchMode] A match statement. It indicates the mode in which the community attribute is matched.
  /// [communityOperateMode] An action statement. It indicates the mode in which the community attribute is operated.
  /// [description] The description of the route map.
  /// [destinationChildInstanceTypes] A match statement that indicates the list of IDs of the destination instances.
  /// [destinationCidrBlocks] A match statement that indicates the prefix list.
  /// [destinationInstanceIds] A match statement that indicates the list of IDs of the destination instances.
  /// [destinationInstanceIdsReverseMatch] Indicates whether to enable the reverse match method of the DestinationInstanceIds match condition.
  /// [destinationRouteTableIds] A match statement that indicates the list of IDs of the destination route tables.
  /// [id] The ID of the route map. It formats as `<cen_id>:<route_map_id>`. Before 1.161.0, it is `route_map_id`.
  /// [mapResult] The action that is performed to a route if the route meets all the match conditions.
  /// [matchAsns] A match statement that indicates the As path list.
  /// [matchCommunitySets] A match statement that indicates the community set.
  /// [nextPriority] The priority of the next route map that is associated with the current route map.
  /// [operateCommunitySets] An action statement that operates the community attribute.
  /// [preference] An action statement that modifies the preference of the route.
  /// [prependAsPaths] Indicates AS Path prepending when a regional gateway receives or publishes a route.
  /// [priority] The priority of the route map.
  /// [routeMapId] The ID of the route map.
  /// [routeTypes] A match statement that indicates the list of route types.
  /// [sourceChildInstanceTypes] A match statement that indicates the list of IDs of the source instances.
  /// [sourceInstanceIds] A match statement that indicates the list of IDs of the source instances.
  /// [sourceInstanceIdsReverseMatch] Indicates whether to enable the reverse match method of the SourceInstanceIds match condition.
  /// [sourceRegionIds] A match statement that indicates the list of IDs of the source regions.
  /// [sourceRouteTableIds] A match statement that indicates the list of IDs of the source route tables.
  /// [status] The status of the route map, including `Creating`, `Active` and `Deleting`.
  /// [transmitDirection] The direction in which the route map is applied, including `RegionIn` and `RegionOut`.
  GetRouteMapsMap({
    required this.asPathMatchMode,
    required this.cenId,
    required this.cenRegionId,
    required this.cidrMatchMode,
    required this.communityMatchMode,
    required this.communityOperateMode,
    required this.description,
    required this.destinationChildInstanceTypes,
    required this.destinationCidrBlocks,
    required this.destinationInstanceIds,
    required this.destinationInstanceIdsReverseMatch,
    required this.destinationRouteTableIds,
    required this.id,
    required this.mapResult,
    required this.matchAsns,
    required this.matchCommunitySets,
    required this.nextPriority,
    required this.operateCommunitySets,
    required this.preference,
    required this.prependAsPaths,
    required this.priority,
    required this.routeMapId,
    required this.routeTypes,
    required this.sourceChildInstanceTypes,
    required this.sourceInstanceIds,
    required this.sourceInstanceIdsReverseMatch,
    required this.sourceRegionIds,
    required this.sourceRouteTableIds,
    required this.status,
    required this.transmitDirection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPathMatchMode': asPathMatchMode,
      'cenId': cenId,
      'cenRegionId': cenRegionId,
      'cidrMatchMode': cidrMatchMode,
      'communityMatchMode': communityMatchMode,
      'communityOperateMode': communityOperateMode,
      'description': description,
      'destinationChildInstanceTypes': destinationChildInstanceTypes,
      'destinationCidrBlocks': destinationCidrBlocks,
      'destinationInstanceIds': destinationInstanceIds,
      'destinationInstanceIdsReverseMatch': destinationInstanceIdsReverseMatch,
      'destinationRouteTableIds': destinationRouteTableIds,
      'id': id,
      'mapResult': mapResult,
      'matchAsns': matchAsns,
      'matchCommunitySets': matchCommunitySets,
      'nextPriority': nextPriority,
      'operateCommunitySets': operateCommunitySets,
      'preference': preference,
      'prependAsPaths': prependAsPaths,
      'priority': priority,
      'routeMapId': routeMapId,
      'routeTypes': routeTypes,
      'sourceChildInstanceTypes': sourceChildInstanceTypes,
      'sourceInstanceIds': sourceInstanceIds,
      'sourceInstanceIdsReverseMatch': sourceInstanceIdsReverseMatch,
      'sourceRegionIds': sourceRegionIds,
      'sourceRouteTableIds': sourceRouteTableIds,
      'status': status,
      'transmitDirection': transmitDirection,
    };
  }

  factory GetRouteMapsMap.fromMap(Map<String, dynamic> map) {
    return GetRouteMapsMap(
      asPathMatchMode: map['asPathMatchMode'] as String,
      cenId: map['cenId'] as String,
      cenRegionId: map['cenRegionId'] as String,
      cidrMatchMode: map['cidrMatchMode'] as String,
      communityMatchMode: map['communityMatchMode'] as String,
      communityOperateMode: map['communityOperateMode'] as String,
      description: map['description'] as String,
      destinationChildInstanceTypes: (map['destinationChildInstanceTypes'] as List).cast<String>(),
      destinationCidrBlocks: (map['destinationCidrBlocks'] as List).cast<String>(),
      destinationInstanceIds: (map['destinationInstanceIds'] as List).cast<String>(),
      destinationInstanceIdsReverseMatch: map['destinationInstanceIdsReverseMatch'] as bool,
      destinationRouteTableIds: (map['destinationRouteTableIds'] as List).cast<String>(),
      id: map['id'] as String,
      mapResult: map['mapResult'] as String,
      matchAsns: (map['matchAsns'] as List).cast<String>(),
      matchCommunitySets: (map['matchCommunitySets'] as List).cast<String>(),
      nextPriority: map['nextPriority'] as int,
      operateCommunitySets: (map['operateCommunitySets'] as List).cast<String>(),
      preference: map['preference'] as int,
      prependAsPaths: (map['prependAsPaths'] as List).cast<String>(),
      priority: map['priority'] as int,
      routeMapId: map['routeMapId'] as String,
      routeTypes: (map['routeTypes'] as List).cast<String>(),
      sourceChildInstanceTypes: (map['sourceChildInstanceTypes'] as List).cast<String>(),
      sourceInstanceIds: (map['sourceInstanceIds'] as List).cast<String>(),
      sourceInstanceIdsReverseMatch: map['sourceInstanceIdsReverseMatch'] as bool,
      sourceRegionIds: (map['sourceRegionIds'] as List).cast<String>(),
      sourceRouteTableIds: (map['sourceRouteTableIds'] as List).cast<String>(),
      status: map['status'] as String,
      transmitDirection: map['transmitDirection'] as String,
    );
  }
}

