// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_route_map_route_map_args_doc}
/// The set of arguments for RouteMap.
/// {@endtemplate}
/// {@macro pulumi_cen_route_map_route_map_args_doc}
class RouteMapArgs {
  /// A match statement. It indicates the mode in which the AS path attribute is matched. Valid values: ["Include", "Complete"].
  final pulumi.Input<String>? asPathMatchMode;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The ID of the region to which the CEN instance belongs.
  final pulumi.Input<String> cenRegionId;
  /// A match statement. It indicates the mode in which the prefix attribute is matched. Valid values: ["Include", "Complete"].
  final pulumi.Input<String>? cidrMatchMode;
  /// A match statement. It indicates the mode in which the community attribute is matched. Valid values: ["Include", "Complete"].
  final pulumi.Input<String>? communityMatchMode;
  /// An action statement. It indicates the mode in which the community attribute is operated. Valid values: ["Additive", "Replace"].
  final pulumi.Input<String>? communityOperateMode;
  /// The description of the route map.
  final pulumi.Input<String>? description;
  /// A match statement that indicates the list of destination instance types. Valid values: ["VPC", "VBR", "CCN", "VPN"].
  final pulumi.Input<List<String>>? destinationChildInstanceTypes;
  /// A match statement that indicates the prefix list. The prefix is in the CIDR format. You can enter a maximum of 32 CIDR blocks.
  final pulumi.Input<List<String>>? destinationCidrBlocks;
  /// A match statement that indicates the list of IDs of the destination instances.
  final pulumi.Input<List<String>>? destinationInstanceIds;
  /// Indicates whether to enable the reverse match method for the DestinationInstanceIds match condition. Valid values: ["false", "true"]. Default to "false".
  final pulumi.Input<bool>? destinationInstanceIdsReverseMatch;
  /// A match statement that indicates the list of IDs of the destination route tables. You can enter a maximum of 32 route table IDs.
  final pulumi.Input<List<String>>? destinationRouteTableIds;
  /// The action that is performed to a route if the route matches all the match conditions. Valid values: ["Permit", "Deny"].
  final pulumi.Input<String> mapResult;
  /// A match statement that indicates the AS path list. The AS path is a well-known mandatory attribute, which describes the numbers of the ASs that a BGP route passes through during transmission.
  final pulumi.Input<List<String>>? matchAsns;
  /// A match statement that indicates the community set. The format of each community is nn:nn, which ranges from 1 to 65535. You can enter a maximum of 32 communities. Communities must comply with RFC 1997. Large communities (RFC 8092) are not supported.
  final pulumi.Input<List<String>>? matchCommunitySets;
  /// The priority of the next route map that is associated with the current route map. Value range: 1 to 100.
  final pulumi.Input<int>? nextPriority;
  /// An action statement that operates the community attribute. The format of each community is nn:nn, which ranges from 1 to 65535. You can enter a maximum of 32 communities. Communities must comply with RFC 1997. Large communities (RFC 8092) are not supported.
  final pulumi.Input<List<String>>? operateCommunitySets;
  /// An action statement that modifies the priority of the route. Value range: 1 to 100. The default priority of a route is 50. A lower value indicates a higher preference.
  final pulumi.Input<int>? preference;
  /// An action statement that indicates an AS path is prepended when the regional gateway receives or advertises a route.
  final pulumi.Input<List<String>>? prependAsPaths;
  /// The priority of the route map. Value range: 1 to 100. A lower value indicates a higher priority.
  final pulumi.Input<int> priority;
  /// A match statement that indicates the list of route types. Valid values: ["System", "Custom", "BGP"].
  final pulumi.Input<List<String>>? routeTypes;
  /// A match statement that indicates the list of source instance types. Valid values: ["VPC", "VBR", "CCN"].
  final pulumi.Input<List<String>>? sourceChildInstanceTypes;
  /// A match statement that indicates the list of IDs of the source instances.
  final pulumi.Input<List<String>>? sourceInstanceIds;
  /// Indicates whether to enable the reverse match method for the SourceInstanceIds match condition. Valid values: ["false", "true"]. Default to "false".
  final pulumi.Input<bool>? sourceInstanceIdsReverseMatch;
  /// A match statement that indicates the list of IDs of the source regions. You can enter a maximum of 32 region IDs.
  final pulumi.Input<List<String>>? sourceRegionIds;
  /// A match statement that indicates the list of IDs of the source route tables. You can enter a maximum of 32 route table IDs.
  final pulumi.Input<List<String>>? sourceRouteTableIds;
  /// The routing table ID of the forwarding router. If you do not enter the routing table ID, the routing policy is automatically associated with the default routing table of the forwarding router.
  final pulumi.Input<String>? transitRouterRouteTableId;
  /// The direction in which the route map is applied. Valid values: ["RegionIn", "RegionOut"].
  final pulumi.Input<String> transmitDirection;

  /// Creates a new [RouteMapArgs].
  /// [asPathMatchMode] A match statement. It indicates the mode in which the AS path attribute is matched. Valid values: ["Include", "Complete"].
  /// [cenId] The ID of the CEN instance.
  /// [cenRegionId] The ID of the region to which the CEN instance belongs.
  /// [cidrMatchMode] A match statement. It indicates the mode in which the prefix attribute is matched. Valid values: ["Include", "Complete"].
  /// [communityMatchMode] A match statement. It indicates the mode in which the community attribute is matched. Valid values: ["Include", "Complete"].
  /// [communityOperateMode] An action statement. It indicates the mode in which the community attribute is operated. Valid values: ["Additive", "Replace"].
  /// [description] The description of the route map.
  /// [destinationChildInstanceTypes] A match statement that indicates the list of destination instance types. Valid values: ["VPC", "VBR", "CCN", "VPN"].
  /// [destinationCidrBlocks] A match statement that indicates the prefix list. The prefix is in the CIDR format. You can enter a maximum of 32 CIDR blocks.
  /// [destinationInstanceIds] A match statement that indicates the list of IDs of the destination instances.
  /// [destinationInstanceIdsReverseMatch] Indicates whether to enable the reverse match method for the DestinationInstanceIds match condition. Valid values: ["false", "true"]. Default to "false".
  /// [destinationRouteTableIds] A match statement that indicates the list of IDs of the destination route tables. You can enter a maximum of 32 route table IDs.
  /// [mapResult] The action that is performed to a route if the route matches all the match conditions. Valid values: ["Permit", "Deny"].
  /// [matchAsns] A match statement that indicates the AS path list. The AS path is a well-known mandatory attribute, which describes the numbers of the ASs that a BGP route passes through during transmission.
  /// [matchCommunitySets] A match statement that indicates the community set. The format of each community is nn:nn, which ranges from 1 to 65535. You can enter a maximum of 32 communities. Communities must comply with RFC 1997. Large communities (RFC 8092) are not supported.
  /// [nextPriority] The priority of the next route map that is associated with the current route map. Value range: 1 to 100.
  /// [operateCommunitySets] An action statement that operates the community attribute. The format of each community is nn:nn, which ranges from 1 to 65535. You can enter a maximum of 32 communities. Communities must comply with RFC 1997. Large communities (RFC 8092) are not supported.
  /// [preference] An action statement that modifies the priority of the route. Value range: 1 to 100. The default priority of a route is 50. A lower value indicates a higher preference.
  /// [prependAsPaths] An action statement that indicates an AS path is prepended when the regional gateway receives or advertises a route.
  /// [priority] The priority of the route map. Value range: 1 to 100. A lower value indicates a higher priority.
  /// [routeTypes] A match statement that indicates the list of route types. Valid values: ["System", "Custom", "BGP"].
  /// [sourceChildInstanceTypes] A match statement that indicates the list of source instance types. Valid values: ["VPC", "VBR", "CCN"].
  /// [sourceInstanceIds] A match statement that indicates the list of IDs of the source instances.
  /// [sourceInstanceIdsReverseMatch] Indicates whether to enable the reverse match method for the SourceInstanceIds match condition. Valid values: ["false", "true"]. Default to "false".
  /// [sourceRegionIds] A match statement that indicates the list of IDs of the source regions. You can enter a maximum of 32 region IDs.
  /// [sourceRouteTableIds] A match statement that indicates the list of IDs of the source route tables. You can enter a maximum of 32 route table IDs.
  /// [transitRouterRouteTableId] The routing table ID of the forwarding router. If you do not enter the routing table ID, the routing policy is automatically associated with the default routing table of the forwarding router.
  /// [transmitDirection] The direction in which the route map is applied. Valid values: ["RegionIn", "RegionOut"].
  RouteMapArgs({
    pulumi.Output<String>? asPathMatchMode,
    required pulumi.Output<String> cenId,
    required pulumi.Output<String> cenRegionId,
    pulumi.Output<String>? cidrMatchMode,
    pulumi.Output<String>? communityMatchMode,
    pulumi.Output<String>? communityOperateMode,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? destinationChildInstanceTypes,
    pulumi.Output<List<String>>? destinationCidrBlocks,
    pulumi.Output<List<String>>? destinationInstanceIds,
    pulumi.Output<bool>? destinationInstanceIdsReverseMatch,
    pulumi.Output<List<String>>? destinationRouteTableIds,
    required pulumi.Output<String> mapResult,
    pulumi.Output<List<String>>? matchAsns,
    pulumi.Output<List<String>>? matchCommunitySets,
    pulumi.Output<int>? nextPriority,
    pulumi.Output<List<String>>? operateCommunitySets,
    pulumi.Output<int>? preference,
    pulumi.Output<List<String>>? prependAsPaths,
    required pulumi.Output<int> priority,
    pulumi.Output<List<String>>? routeTypes,
    pulumi.Output<List<String>>? sourceChildInstanceTypes,
    pulumi.Output<List<String>>? sourceInstanceIds,
    pulumi.Output<bool>? sourceInstanceIdsReverseMatch,
    pulumi.Output<List<String>>? sourceRegionIds,
    pulumi.Output<List<String>>? sourceRouteTableIds,
    pulumi.Output<String>? transitRouterRouteTableId,
    required pulumi.Output<String> transmitDirection,
  }) :
      asPathMatchMode = pulumi.Input.asOptionalInput<String>(asPathMatchMode),
      cenId = pulumi.Input.asInput<String>(cenId),
      cenRegionId = pulumi.Input.asInput<String>(cenRegionId),
      cidrMatchMode = pulumi.Input.asOptionalInput<String>(cidrMatchMode),
      communityMatchMode = pulumi.Input.asOptionalInput<String>(communityMatchMode),
      communityOperateMode = pulumi.Input.asOptionalInput<String>(communityOperateMode),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationChildInstanceTypes = pulumi.Input.asOptionalInput<List<String>>(destinationChildInstanceTypes),
      destinationCidrBlocks = pulumi.Input.asOptionalInput<List<String>>(destinationCidrBlocks),
      destinationInstanceIds = pulumi.Input.asOptionalInput<List<String>>(destinationInstanceIds),
      destinationInstanceIdsReverseMatch = pulumi.Input.asOptionalInput<bool>(destinationInstanceIdsReverseMatch),
      destinationRouteTableIds = pulumi.Input.asOptionalInput<List<String>>(destinationRouteTableIds),
      mapResult = pulumi.Input.asInput<String>(mapResult),
      matchAsns = pulumi.Input.asOptionalInput<List<String>>(matchAsns),
      matchCommunitySets = pulumi.Input.asOptionalInput<List<String>>(matchCommunitySets),
      nextPriority = pulumi.Input.asOptionalInput<int>(nextPriority),
      operateCommunitySets = pulumi.Input.asOptionalInput<List<String>>(operateCommunitySets),
      preference = pulumi.Input.asOptionalInput<int>(preference),
      prependAsPaths = pulumi.Input.asOptionalInput<List<String>>(prependAsPaths),
      priority = pulumi.Input.asInput<int>(priority),
      routeTypes = pulumi.Input.asOptionalInput<List<String>>(routeTypes),
      sourceChildInstanceTypes = pulumi.Input.asOptionalInput<List<String>>(sourceChildInstanceTypes),
      sourceInstanceIds = pulumi.Input.asOptionalInput<List<String>>(sourceInstanceIds),
      sourceInstanceIdsReverseMatch = pulumi.Input.asOptionalInput<bool>(sourceInstanceIdsReverseMatch),
      sourceRegionIds = pulumi.Input.asOptionalInput<List<String>>(sourceRegionIds),
      sourceRouteTableIds = pulumi.Input.asOptionalInput<List<String>>(sourceRouteTableIds),
      transitRouterRouteTableId = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableId),
      transmitDirection = pulumi.Input.asInput<String>(transmitDirection);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPathMatchMode': ?asPathMatchMode,
      'cenId': cenId,
      'cenRegionId': cenRegionId,
      'cidrMatchMode': ?cidrMatchMode,
      'communityMatchMode': ?communityMatchMode,
      'communityOperateMode': ?communityOperateMode,
      'description': ?description,
      'destinationChildInstanceTypes': ?destinationChildInstanceTypes,
      'destinationCidrBlocks': ?destinationCidrBlocks,
      'destinationInstanceIds': ?destinationInstanceIds,
      'destinationInstanceIdsReverseMatch': ?destinationInstanceIdsReverseMatch,
      'destinationRouteTableIds': ?destinationRouteTableIds,
      'mapResult': mapResult,
      'matchAsns': ?matchAsns,
      'matchCommunitySets': ?matchCommunitySets,
      'nextPriority': ?nextPriority,
      'operateCommunitySets': ?operateCommunitySets,
      'preference': ?preference,
      'prependAsPaths': ?prependAsPaths,
      'priority': priority,
      'routeTypes': ?routeTypes,
      'sourceChildInstanceTypes': ?sourceChildInstanceTypes,
      'sourceInstanceIds': ?sourceInstanceIds,
      'sourceInstanceIdsReverseMatch': ?sourceInstanceIdsReverseMatch,
      'sourceRegionIds': ?sourceRegionIds,
      'sourceRouteTableIds': ?sourceRouteTableIds,
      'transitRouterRouteTableId': ?transitRouterRouteTableId,
      'transmitDirection': transmitDirection,
    };
  }

  factory RouteMapArgs.fromMap(Map<String, dynamic> map) {
    return RouteMapArgs(
      asPathMatchMode: map['asPathMatchMode'] == null ? null : pulumi.Output.create<String>(map['asPathMatchMode'] as String),
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      cenRegionId: pulumi.Output.create<String>(map['cenRegionId'] as String),
      cidrMatchMode: map['cidrMatchMode'] == null ? null : pulumi.Output.create<String>(map['cidrMatchMode'] as String),
      communityMatchMode: map['communityMatchMode'] == null ? null : pulumi.Output.create<String>(map['communityMatchMode'] as String),
      communityOperateMode: map['communityOperateMode'] == null ? null : pulumi.Output.create<String>(map['communityOperateMode'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationChildInstanceTypes: map['destinationChildInstanceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['destinationChildInstanceTypes'] as List).cast<String>()),
      destinationCidrBlocks: map['destinationCidrBlocks'] == null ? null : pulumi.Output.create<List<String>>((map['destinationCidrBlocks'] as List).cast<String>()),
      destinationInstanceIds: map['destinationInstanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['destinationInstanceIds'] as List).cast<String>()),
      destinationInstanceIdsReverseMatch: map['destinationInstanceIdsReverseMatch'] == null ? null : pulumi.Output.create<bool>(map['destinationInstanceIdsReverseMatch'] as bool),
      destinationRouteTableIds: map['destinationRouteTableIds'] == null ? null : pulumi.Output.create<List<String>>((map['destinationRouteTableIds'] as List).cast<String>()),
      mapResult: pulumi.Output.create<String>(map['mapResult'] as String),
      matchAsns: map['matchAsns'] == null ? null : pulumi.Output.create<List<String>>((map['matchAsns'] as List).cast<String>()),
      matchCommunitySets: map['matchCommunitySets'] == null ? null : pulumi.Output.create<List<String>>((map['matchCommunitySets'] as List).cast<String>()),
      nextPriority: map['nextPriority'] == null ? null : pulumi.Output.create<int>(map['nextPriority'] as int),
      operateCommunitySets: map['operateCommunitySets'] == null ? null : pulumi.Output.create<List<String>>((map['operateCommunitySets'] as List).cast<String>()),
      preference: map['preference'] == null ? null : pulumi.Output.create<int>(map['preference'] as int),
      prependAsPaths: map['prependAsPaths'] == null ? null : pulumi.Output.create<List<String>>((map['prependAsPaths'] as List).cast<String>()),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      routeTypes: map['routeTypes'] == null ? null : pulumi.Output.create<List<String>>((map['routeTypes'] as List).cast<String>()),
      sourceChildInstanceTypes: map['sourceChildInstanceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['sourceChildInstanceTypes'] as List).cast<String>()),
      sourceInstanceIds: map['sourceInstanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['sourceInstanceIds'] as List).cast<String>()),
      sourceInstanceIdsReverseMatch: map['sourceInstanceIdsReverseMatch'] == null ? null : pulumi.Output.create<bool>(map['sourceInstanceIdsReverseMatch'] as bool),
      sourceRegionIds: map['sourceRegionIds'] == null ? null : pulumi.Output.create<List<String>>((map['sourceRegionIds'] as List).cast<String>()),
      sourceRouteTableIds: map['sourceRouteTableIds'] == null ? null : pulumi.Output.create<List<String>>((map['sourceRouteTableIds'] as List).cast<String>()),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
      transmitDirection: pulumi.Output.create<String>(map['transmitDirection'] as String),
    );
  }
}

