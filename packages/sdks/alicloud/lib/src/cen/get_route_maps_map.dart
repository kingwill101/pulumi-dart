// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteMapsMap {
  /// A match statement. It indicates the mode in which the as-path attribute is matched.
  final pulumi.Input<String> asPathMatchMode;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The ID of the region to which the CEN instance belongs.
  final pulumi.Input<String> cenRegionId;
  /// A match statement. It indicates the mode in which the prefix attribute is matched.
  final pulumi.Input<String> cidrMatchMode;
  /// A match statement. It indicates the mode in which the community attribute is matched.
  final pulumi.Input<String> communityMatchMode;
  /// An action statement. It indicates the mode in which the community attribute is operated.
  final pulumi.Input<String> communityOperateMode;
  /// The description of the route map.
  final pulumi.Input<String> description;
  /// A match statement that indicates the list of IDs of the destination instances.
  final pulumi.Input<List<String>> destinationChildInstanceTypes;
  /// A match statement that indicates the prefix list.
  final pulumi.Input<List<String>> destinationCidrBlocks;
  /// A match statement that indicates the list of IDs of the destination instances.
  final pulumi.Input<List<String>> destinationInstanceIds;
  /// Indicates whether to enable the reverse match method of the DestinationInstanceIds match condition.
  final pulumi.Input<bool> destinationInstanceIdsReverseMatch;
  /// A match statement that indicates the list of IDs of the destination route tables.
  final pulumi.Input<List<String>> destinationRouteTableIds;
  /// The ID of the route map. It formats as `&lt;cen_id&gt;:&lt;route_map_id&gt;`. Before 1.161.0, it is `route_map_id`.
  final pulumi.Input<String> id;
  /// The action that is performed to a route if the route meets all the match conditions.
  final pulumi.Input<String> mapResult;
  /// A match statement that indicates the As path list.
  final pulumi.Input<List<String>> matchAsns;
  /// A match statement that indicates the community set.
  final pulumi.Input<List<String>> matchCommunitySets;
  /// The priority of the next route map that is associated with the current route map.
  final pulumi.Input<int> nextPriority;
  /// An action statement that operates the community attribute.
  final pulumi.Input<List<String>> operateCommunitySets;
  /// An action statement that modifies the preference of the route.
  final pulumi.Input<int> preference;
  /// Indicates AS Path prepending when a regional gateway receives or publishes a route.
  final pulumi.Input<List<String>> prependAsPaths;
  /// The priority of the route map.
  final pulumi.Input<int> priority;
  /// The ID of the route map.
  final pulumi.Input<String> routeMapId;
  /// A match statement that indicates the list of route types.
  final pulumi.Input<List<String>> routeTypes;
  /// A match statement that indicates the list of IDs of the source instances.
  final pulumi.Input<List<String>> sourceChildInstanceTypes;
  /// A match statement that indicates the list of IDs of the source instances.
  final pulumi.Input<List<String>> sourceInstanceIds;
  /// Indicates whether to enable the reverse match method of the SourceInstanceIds match condition.
  final pulumi.Input<bool> sourceInstanceIdsReverseMatch;
  /// A match statement that indicates the list of IDs of the source regions.
  final pulumi.Input<List<String>> sourceRegionIds;
  /// A match statement that indicates the list of IDs of the source route tables.
  final pulumi.Input<List<String>> sourceRouteTableIds;
  /// The status of the route map, including `Creating`, `Active` and `Deleting`.
  final pulumi.Input<String> status;
  /// The direction in which the route map is applied, including `RegionIn` and `RegionOut`.
  final pulumi.Input<String> transmitDirection;

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
  /// [id] The ID of the route map. It formats as `&lt;cen_id&gt;:&lt;route_map_id&gt;`. Before 1.161.0, it is `route_map_id`.
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
      asPathMatchMode: pulumi.Input.fromValue(map['asPathMatchMode'] as String),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      cenRegionId: pulumi.Input.fromValue(map['cenRegionId'] as String),
      cidrMatchMode: pulumi.Input.fromValue(map['cidrMatchMode'] as String),
      communityMatchMode: pulumi.Input.fromValue(map['communityMatchMode'] as String),
      communityOperateMode: pulumi.Input.fromValue(map['communityOperateMode'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      destinationChildInstanceTypes: pulumi.Input.fromValue((map['destinationChildInstanceTypes'] as List).cast<String>()),
      destinationCidrBlocks: pulumi.Input.fromValue((map['destinationCidrBlocks'] as List).cast<String>()),
      destinationInstanceIds: pulumi.Input.fromValue((map['destinationInstanceIds'] as List).cast<String>()),
      destinationInstanceIdsReverseMatch: pulumi.Input.fromValue(map['destinationInstanceIdsReverseMatch'] as bool),
      destinationRouteTableIds: pulumi.Input.fromValue((map['destinationRouteTableIds'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      mapResult: pulumi.Input.fromValue(map['mapResult'] as String),
      matchAsns: pulumi.Input.fromValue((map['matchAsns'] as List).cast<String>()),
      matchCommunitySets: pulumi.Input.fromValue((map['matchCommunitySets'] as List).cast<String>()),
      nextPriority: pulumi.Input.fromValue(map['nextPriority'] as int),
      operateCommunitySets: pulumi.Input.fromValue((map['operateCommunitySets'] as List).cast<String>()),
      preference: pulumi.Input.fromValue(map['preference'] as int),
      prependAsPaths: pulumi.Input.fromValue((map['prependAsPaths'] as List).cast<String>()),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      routeMapId: pulumi.Input.fromValue(map['routeMapId'] as String),
      routeTypes: pulumi.Input.fromValue((map['routeTypes'] as List).cast<String>()),
      sourceChildInstanceTypes: pulumi.Input.fromValue((map['sourceChildInstanceTypes'] as List).cast<String>()),
      sourceInstanceIds: pulumi.Input.fromValue((map['sourceInstanceIds'] as List).cast<String>()),
      sourceInstanceIdsReverseMatch: pulumi.Input.fromValue(map['sourceInstanceIdsReverseMatch'] as bool),
      sourceRegionIds: pulumi.Input.fromValue((map['sourceRegionIds'] as List).cast<String>()),
      sourceRouteTableIds: pulumi.Input.fromValue((map['sourceRouteTableIds'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      transmitDirection: pulumi.Input.fromValue(map['transmitDirection'] as String),
    );
  }
}

