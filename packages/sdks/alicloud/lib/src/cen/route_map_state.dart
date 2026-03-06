// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteMap resources.
class RouteMapState {
  /// A match statement. It indicates the mode in which the AS path attribute is matched. Valid values: ["Include", "Complete"].
  final pulumi.Input<String>? asPathMatchMode;
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// The ID of the region to which the CEN instance belongs.
  final pulumi.Input<String>? cenRegionId;
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
  final pulumi.Input<String>? mapResult;
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
  final pulumi.Input<int>? priority;
  /// ID of the RouteMap. It is available in 1.161.0+.
  final pulumi.Input<String>? routeMapId;
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
  /// (Computed) The status of route map. Valid values: ["Creating", "Active", "Deleting"].
  final pulumi.Input<String>? status;
  /// The routing table ID of the forwarding router. If you do not enter the routing table ID, the routing policy is automatically associated with the default routing table of the forwarding router.
  final pulumi.Input<String>? transitRouterRouteTableId;
  /// The direction in which the route map is applied. Valid values: ["RegionIn", "RegionOut"].
  final pulumi.Input<String>? transmitDirection;

  /// Creates a new [RouteMapState].
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
  /// [routeMapId] ID of the RouteMap. It is available in 1.161.0+.
  /// [routeTypes] A match statement that indicates the list of route types. Valid values: ["System", "Custom", "BGP"].
  /// [sourceChildInstanceTypes] A match statement that indicates the list of source instance types. Valid values: ["VPC", "VBR", "CCN"].
  /// [sourceInstanceIds] A match statement that indicates the list of IDs of the source instances.
  /// [sourceInstanceIdsReverseMatch] Indicates whether to enable the reverse match method for the SourceInstanceIds match condition. Valid values: ["false", "true"]. Default to "false".
  /// [sourceRegionIds] A match statement that indicates the list of IDs of the source regions. You can enter a maximum of 32 region IDs.
  /// [sourceRouteTableIds] A match statement that indicates the list of IDs of the source route tables. You can enter a maximum of 32 route table IDs.
  /// [status] (Computed) The status of route map. Valid values: ["Creating", "Active", "Deleting"].
  /// [transitRouterRouteTableId] The routing table ID of the forwarding router. If you do not enter the routing table ID, the routing policy is automatically associated with the default routing table of the forwarding router.
  /// [transmitDirection] The direction in which the route map is applied. Valid values: ["RegionIn", "RegionOut"].
  const RouteMapState({
    this.asPathMatchMode,
    this.cenId,
    this.cenRegionId,
    this.cidrMatchMode,
    this.communityMatchMode,
    this.communityOperateMode,
    this.description,
    this.destinationChildInstanceTypes,
    this.destinationCidrBlocks,
    this.destinationInstanceIds,
    this.destinationInstanceIdsReverseMatch,
    this.destinationRouteTableIds,
    this.mapResult,
    this.matchAsns,
    this.matchCommunitySets,
    this.nextPriority,
    this.operateCommunitySets,
    this.preference,
    this.prependAsPaths,
    this.priority,
    this.routeMapId,
    this.routeTypes,
    this.sourceChildInstanceTypes,
    this.sourceInstanceIds,
    this.sourceInstanceIdsReverseMatch,
    this.sourceRegionIds,
    this.sourceRouteTableIds,
    this.status,
    this.transitRouterRouteTableId,
    this.transmitDirection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPathMatchMode': ?asPathMatchMode,
      'cenId': ?cenId,
      'cenRegionId': ?cenRegionId,
      'cidrMatchMode': ?cidrMatchMode,
      'communityMatchMode': ?communityMatchMode,
      'communityOperateMode': ?communityOperateMode,
      'description': ?description,
      'destinationChildInstanceTypes': ?destinationChildInstanceTypes,
      'destinationCidrBlocks': ?destinationCidrBlocks,
      'destinationInstanceIds': ?destinationInstanceIds,
      'destinationInstanceIdsReverseMatch': ?destinationInstanceIdsReverseMatch,
      'destinationRouteTableIds': ?destinationRouteTableIds,
      'mapResult': ?mapResult,
      'matchAsns': ?matchAsns,
      'matchCommunitySets': ?matchCommunitySets,
      'nextPriority': ?nextPriority,
      'operateCommunitySets': ?operateCommunitySets,
      'preference': ?preference,
      'prependAsPaths': ?prependAsPaths,
      'priority': ?priority,
      'routeMapId': ?routeMapId,
      'routeTypes': ?routeTypes,
      'sourceChildInstanceTypes': ?sourceChildInstanceTypes,
      'sourceInstanceIds': ?sourceInstanceIds,
      'sourceInstanceIdsReverseMatch': ?sourceInstanceIdsReverseMatch,
      'sourceRegionIds': ?sourceRegionIds,
      'sourceRouteTableIds': ?sourceRouteTableIds,
      'status': ?status,
      'transitRouterRouteTableId': ?transitRouterRouteTableId,
      'transmitDirection': ?transmitDirection,
    };
  }

  factory RouteMapState.fromMap(Map<String, dynamic> map) {
    return RouteMapState(
      asPathMatchMode: (() { final guardedValue = map['asPathMatchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cenRegionId: (() { final guardedValue = map['cenRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrMatchMode: (() { final guardedValue = map['cidrMatchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      communityMatchMode: (() { final guardedValue = map['communityMatchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      communityOperateMode: (() { final guardedValue = map['communityOperateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationChildInstanceTypes: (() { final guardedValue = map['destinationChildInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationCidrBlocks: (() { final guardedValue = map['destinationCidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationInstanceIds: (() { final guardedValue = map['destinationInstanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationInstanceIdsReverseMatch: (() { final guardedValue = map['destinationInstanceIdsReverseMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      destinationRouteTableIds: (() { final guardedValue = map['destinationRouteTableIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mapResult: (() { final guardedValue = map['mapResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchAsns: (() { final guardedValue = map['matchAsns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchCommunitySets: (() { final guardedValue = map['matchCommunitySets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nextPriority: (() { final guardedValue = map['nextPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      operateCommunitySets: (() { final guardedValue = map['operateCommunitySets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preference: (() { final guardedValue = map['preference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prependAsPaths: (() { final guardedValue = map['prependAsPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      routeMapId: (() { final guardedValue = map['routeMapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTypes: (() { final guardedValue = map['routeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceChildInstanceTypes: (() { final guardedValue = map['sourceChildInstanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceInstanceIds: (() { final guardedValue = map['sourceInstanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceInstanceIdsReverseMatch: (() { final guardedValue = map['sourceInstanceIdsReverseMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceRegionIds: (() { final guardedValue = map['sourceRegionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceRouteTableIds: (() { final guardedValue = map['sourceRouteTableIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableId: (() { final guardedValue = map['transitRouterRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transmitDirection: (() { final guardedValue = map['transmitDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

